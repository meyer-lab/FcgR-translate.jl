using DataFrames
import CSV
import StatsBase.geomean
using Memoize

const KxConst = 6.31e-13 # 10^(-12.2)

function geocmean(x)
    x = convert(Vector, x)
    x[x .<= 1.0] .= 1.0
    return geomean(x)
end

const cellTypes = [:ncMO, :cMO, :NKs, :Neu, :EO]
const murineIgG = [:IgG1, :IgG2a, :IgG2b, :IgG3]
const murineIgGFucose = [:IgG1, :IgG2a, :IgG2b, :IgG3, :IgG2bFucose]
const humanIgG = [:IgG1, :IgG2, :IgG3, :IgG4]
const murineFcgR = [:FcgRI, :FcgRIIB, :FcgRIII, :FcgRIV]
const humanFcgR =
    Symbol.(["FcgRI", "FcgRIIA-131H", "FcgRIIA-131R", "FcgRIIB-232I", "FcgRIIB-232T", "FcgRIIC-13N", "FcgRIIIA-158F", "FcgRIIIA-158V", "FcgRIIIB"])
const murineActI = [1, -1, 1, 1]
const murineActYmax = [8e4, 5e3, 2.5e-1, 7e3, 3] # ymax for synergy plots
const humanActYmax = [5.5e4, 1.5e5, 4.5e4, 3.5e4, 3e3] # ymax for synergy plots
const humanActI = [1, 1, 1, -1, -1, 1, 1, 1, 1]
const dataDir = joinpath(dirname(pathof(FcTranslation)), "..", "data")

@memoize function importRtot(; murine = true, genotype = "HIV", retdf = false)
    if murine
        df = CSV.File(joinpath(dataDir, "murine-FcgR-abundance.csv"), comment = "#") |> DataFrame!
    else
        df = CSV.File(joinpath(dataDir, "human-FcgR-abundance.csv"), comment = "#") |> DataFrame!
    end
    df = combine(groupby(df, [:Cells, :Receptor]), names(df, :Count) .=> geocmean)
    df = unstack(df, :Receptor, :Cells, :Count_geocmean)
    dropmissing!(df)
    df[!, :Receptor] = map(Symbol, df[!, :Receptor])
    if murine
        df = df[in(murineFcgR).(df.Receptor), :]
    else
        df[df[:, :Receptor] .== :FcgRIIC, :Receptor] .= Symbol("FcgRIIC-13N")

        generic_type = Symbol.(["FcgRIIA", "FcgRIIB", "FcgRIIIA"])
        prefixes = ["FcgRIIA-131", "FcgRIIB-232", "FcgRIIIA-158"]
        options = [['H', 'R'], ['I', 'T'], ['F', 'V']]
        ncols = size(df)[2] - 1

        for i = 1:3
            rowidx = findfirst(df[:, :Receptor] .== generic_type[i])
            if genotype[i] == options[i][1]
                df[rowidx, :Receptor] = Symbol(prefixes[i] * options[i][1])
                push!(df, [Symbol(prefixes[i] * options[i][2]); repeat([0.0], ncols)])
            elseif genotype[i] == options[i][2]
                df[rowidx, :Receptor] = Symbol(prefixes[i] * options[i][2])
                push!(df, [Symbol(prefixes[i] * options[i][1]); repeat([0.0], ncols)])
            else  # heterozygous
                push!(df, [Symbol(prefixes[i] * options[i][1]); Array(df[rowidx, 2:end]) ./ 2])
                push!(df, [Symbol(prefixes[i] * options[i][2]); Array(df[rowidx, 2:end]) ./ 2])
                df = df[df[:, :Receptor] .!= generic_type[i], :]
            end
        end

        sort!(df, [:Receptor])
    end
    @assert df.Receptor == (murine ? murineFcgR : humanFcgR)
    if retdf
        return df[!, [:Receptor; cellTypes]]
    else
        return convert(Matrix{Float64}, df[!, cellTypes])
    end
end


""" Import human or murine affinity data. """
@memoize function importKav(; murine = true, c1q = false, IgG2bFucose = false, retdf = false)
    if murine
        df = CSV.File(joinpath(dataDir, "murine-affinities.csv"), comment = "#") |> DataFrame!
    else
        df = CSV.File(joinpath(dataDir, "human-affinities.csv"), comment = "#") |> DataFrame!
    end

    IgGlist = copy(murine ? murineIgG : humanIgG)
    FcRecep = copy(murine ? murineFcgR : humanFcgR)
    if IgG2bFucose
        append!(IgGlist, [:IgG2bFucose])
    end
    if c1q
        append!(FcRecep, [:C1q])
    end
    df = stack(df; variable_name = :IgG, value_name = :Kav)
    df = unstack(df, :FcgR, :Kav)
    df[!, :IgG] = map(Symbol, df[!, :IgG])
    dropmissing!(df)
    df = df[in(IgGlist).(df.IgG), :]

    if retdf
        return df[!, [:IgG; FcRecep]]
    else
        return convert(Matrix{Float64}, df[!, FcRecep])
    end
end
