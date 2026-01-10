## Funkce Julia
###############################################################
## Popis funkce:
#
# ver: 2026-01-10
## Funkce: cdslozka()
#
## Cesta uvnitř balíčku:
# Vyvoj/src/cdslozka.jl
#
## Vzor:
## vystupni_promenne = cdslozka(vstupni_promenne)
## Vstupní proměnné:
#
## Výstupní proměnné:
#
## Použité balíčky:
#
## Použité uživatelské funkce:
#
## Příklad:
# cdslozka()
###############################################################
## Použité proměnné vnitřní:
#

function cdslozka(projekt::String="")

    # Detekce platformy: použijeme Sys.* funkce (jsou v modulu Sys)
    if Sys.isunix() # Linux nebo macOS
        cesta = joinpath(homedir(), "Dokumenty", "ProjektyTechnika", "Julia", "funkce", "balicky") # pro Linux a macOS
    elseif Sys.iswindows() # Windows
        cesta = joinpath(homedir(), "ProjektyTechnika", "Julia", "funkce", "balicky") # pro Windows
    else
        error("Nepodporovaný operační systém") # Chyba pro neznámé OS
    end
    if !isdir(cesta)
        error("Cílová cesta neexistuje: $cesta")
    end
    if projekt != ""
        cesta = joinpath(cesta, projekt)
    end
    if isdir(cesta)
        cd(cesta) # Změní aktuální pracovní adresář
        println("Aktuální složka: $cesta") # Potvrzení změny
    else
        error("Cílová cesta ", projekt," neexistuje v $cesta") # Chyba, pokud složka neexistuje
    end

end