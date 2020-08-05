@testset "translation.jl tests" begin
    @testset "Test that more refined brute force improves match." begin
        resultTwo = FcTranslation.brute_force_optimum(1)
        resultFour = FcTranslation.brute_force_optimum(3)

        @test resultTwo[1] <= resultFour[1]
    end
end
