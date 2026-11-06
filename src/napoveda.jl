## Funkce Julia v1.12
###############################################################
## Popis funkce:
# Vypíše vzorovou hlavičku nové uživatelské funkce, balíčku.
# ver: 2026-07-30
## Funkce: napoveda()
## Autor: Martin
#
## Cesta uvnitř balíčku:
# Vyvoj/src/napoveda.jl
#
## Vzor:
## _ = napoveda()
## Vstupní proměnné:
# projekt::String="" - název projektu: "funkce" nebo "balíček"
## Výstupní proměnné:
# string - textový výpis vzorové hlavičky
## Použité balíčky:
# Dates, TOML
## Použité uživatelské funkce:
#
## Příklad:
# napoveda() => vypíše vzorovou hlavičku funkce
# napoveda("balíček") => vypíše vzorovou hlavičku balíčku
# napoveda("funkce") => vypíše vzorovou hlavičku funkce
###############################################################
## Použité proměnné vnitřní:
#
"""
## Popis funkce:
# Vypíše vzorovou hlavičku nové uživatelské funkce.
# ver: 2025-11-24
## Funkce: nazev_funkce()
## Autor: Martin
#
## Cesta uvnitř balíčku:
# Balicek/src/nazev_funkce.jl
#
## Vzor:
## vystupni_promenne = nazev_funkce(vstupni_promenne)
## Vstupní proměnné:
#
## Výstupní proměnné:
#
## Použité balíčky:
# Dates
## Použité funkce:
#
## Příklad:
#
"""
###############################################################

using Dates
using TOML

function _napoveda_sablony()
    return TOML.parsefile(joinpath(@__DIR__, "napoveda.toml"))["templates"]
end

function napoveda(projekt::String="")
    sablona = if projekt in ["", "funkce"]
        "funkce"
    elseif projekt in ["funkce.jl", "funkce jl"]
        "funkce_jl"
    elseif projekt in ["funkce.md", "funkce md"]
        "funkce_md"
    elseif projekt in ["balicek.jl", "balicek jl"]
        "balicek_jl"
    elseif projekt in ["balíček", "balicek"]
        "balicek"
    else
        error("Chybné zadání")
    end

    verze_minor = string(VERSION.major, ".", VERSION.minor)
    datum = Dates.format(Dates.now(), "yyyy-mm-dd")
    textN = _napoveda_sablony()[sablona]
    textN = replace(textN, "{julia_version}" => verze_minor, "{date}" => datum)
    println(textN)
end
