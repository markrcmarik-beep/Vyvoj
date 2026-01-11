## Funkce Julia
###############################################################
## Popis funkce:
# přidá do uživatelského balíčku zavislost na jiném uživatelském balíčku
# ver: 2026-01-11
## Funkce: zavislostnauzivbalicek()
#
## Cesta uvnitř balíčku:
# Vyvoj/src/zavislostnauzivbalicek.jl
#
## Vzor:
## vystupni_promenne = zavislostnauzivbalicek(cil::AbstractString, napojeny::AbstractString)
## Vstupní proměnné:
#
## Výstupní proměnné:
#
## Použité balíčky:
#
## Použité uživatelské funkce:
#
## Příklad:
# zavislostnauzivbalicek(Martin, SpravaSouboru)
###############################################################
## Použité proměnné vnitřní:
#
#function zavislostnauzivbalicek(cil::AbstractString, napojeny::AbstractString)
#cesta = joinpath(@__DIR__, cil)
#cd(cesta)
#Pkg.activate(".")
#Pkg.develop(path=string("../", napojeny))

using Pkg

function zavislostnauzivbalicek(cil::AbstractString, napojeny::AbstractString)
    cil_cesta = joinpath(@__DIR__, cil)
    napojeny_cesta = joinpath(@__DIR__, "..", napojeny)

    isdir(cil_cesta) || error("Cílová složka neexistuje: $cil_cesta")
    isdir(napojeny_cesta) || error("Napojený balíček neexistuje: $napojeny_cesta")

    Pkg.activate(cil_cesta; shared=false)
    Pkg.develop(path=napojeny_cesta)

    return nothing
end