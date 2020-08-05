module FcTranslation
using LinearAlgebra
using polyBindingModel

include("fcBindingModel.jl")
include("dataHelpers.jl")
include("translation.jl")
include("temporal.jl")

include("figures/figureCommon.jl")
include("figures/figure1.jl")
include("figures/figure2.jl")
include("figures/figure3.jl")

function figureAll()
    setGadflyTheme()
end

export polyfc, polyfc_ActV

end # module
