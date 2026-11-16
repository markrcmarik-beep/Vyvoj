# ver: 2026-11-15
## Funkce: napoveda()
## Autor: Martin
#
## Cesta uvnitř balíčku:
# Vyvoj/src/napoveda.jl
## Použité balíčky:
# Dates, TOML
## Použité uživatelské funkce:
#
###############################################################
## Použité proměnné vnitřní:
#
using Dates
using TOML

"""
$(read(joinpath(@__DIR__, "..", "docs", "src", "napoveda.md"), String))
"""
function napoveda(projekt::String="")
###############################################################
# vnitřní funkce
function _napoveda_sablony()
    return TOML.parsefile(joinpath(@__DIR__, "napoveda.toml"))["templates"]
end
function _napoveda_promenne()
    return TOML.parsefile(joinpath(@__DIR__, "napoveda.toml"))["promenne"]
end
function _napoveda_obsah(nazev::String)
    cesta = joinpath(@__DIR__, "..", "docs", "src", "$(nazev).md")
    return isfile(cesta) ? read(cesta, String) : ""
end
###############################################################
    sablona = if projekt in ["", "funkce"]
        "funkce_jl"
    elseif projekt in ["funkce.jl", "funkce jl", "funkce_jl", "funkcejl"]
        "funkce_jl"
    elseif projekt in ["funkce.md", "funkce md", "funkce_md", "funkcemd"]
        "funkce_md"
    elseif projekt in ["balicek.jl", "balicek jl", "balicek_jl", "balicekjl"]
        "balicek_jl"
    elseif projekt in ["balíček", "balicek"]
        "balicek_jl"
    elseif projekt in ["balicek.md", "balicek md", "balicek_md", "balicekmd"]
        "balicek_md"
    elseif projekt in ["data.toml", "data_toml", "datatoml", "toml"]
        "data_toml"
    else
        error("Chybné zadání")
    end

    verze_minor = string(VERSION.major, ".", VERSION.minor)
    datum = Dates.format(Dates.now(), "yyyy-mm-dd")
    textN = _napoveda_sablony()[sablona]
    promenne = _napoveda_promenne()

    textN = replace(textN, "{julia_version}" => verze_minor, 
        "{date}" => datum, "{autor}" => promenne["autor"], 
        "{nazevfunkce}" => promenne["nazevfunkce"],
        "{nazevbalicku}" => promenne["nazevbalicku"])
    if sablona == "funkce_jl"
        textN = replace(textN, "{obsah_funkce}" =>
            _napoveda_obsah(promenne["nazevfunkce"]))
    elseif sablona == "balicek_jl"
        textN = replace(textN, "{obsah_balicku}" =>
            _napoveda_obsah(promenne["nazevbalicku"]))
    end
    println(textN)
end
