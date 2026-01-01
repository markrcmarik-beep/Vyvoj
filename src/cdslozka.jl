# ver: 2025-12-08

function cdslozka()

    # Detekce platformy: použijeme Sys.* funkce (jsou v modulu Sys)
    if Sys.isunix() # Linux nebo macOS
        cesta = joinpath(homedir(), "Dokumenty", "ProjektyTechnika", "Julia", "funkce", "balicky") # pro Linux a macOS
    elseif Sys.iswindows() # Windows
        cesta = joinpath(homedir(), "ProjektyTechnika", "Julia", "funkce", "balicky") # pro Windows
    else
        error("Nepodporovaný operační systém") # Chyba pro neznámé OS
    end
    if isdir(cesta)
        cd(cesta) # Změní aktuální pracovní adresář
        println("Aktuální pracovní složka změněna na: $cesta") # Potvrzení změny
    else
        error("Cílová složka neexistuje: $cesta") # Chyba, pokud složka neexistuje
    end

end