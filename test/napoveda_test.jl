# ver: 2026-09-09
# ============================================================
# Skript: napoveda_test.jl
# Popis: Spustí funkci napoveda() definovanou v napoveda.jl
# ============================================================
using Test
using Vyvoj
# Načteme soubor napoveda.jl, který musí být ve stejné složce
# include(joinpath(@__DIR__, "napoveda.jl"))

# Zavoláme funkci napoveda() a vypíšeme výstup
@testset "Test funkce napoveda()" begin
    vystup = Pipe()
    redirect_stdout(vystup) do
        napoveda()
    end
    close(vystup.in)
    a01 = read(vystup, String)
    @test a01 isa String
    @test !isempty(a01)
end

nothing
