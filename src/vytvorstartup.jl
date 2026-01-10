## Funkce Julia
###############################################################
## Popis funkce:
#
# ver: 2026-01-10
## Funkce: vytvorstartup()
#
## Cesta uvnitř balíčku:
# Vyvoj/src/vytvorstartup.jl
#
## Vzor:
## _ = vytvorstartup()
## Vstupní proměnné:
#
## Výstupní proměnné:
#
## Použité balíčky:
#
## Použité uživatelské funkce:
#
## Příklad:
#
###############################################################
## Použité proměnné vnitřní:
#
using Pkg

function vytvorstartup()
    # Cesta k uživatelské konfiguraci Julia
    config_dir = joinpath(homedir(), ".julia", "config")

    # Pokud složka neexistuje, vytvoří se
    if !isdir(config_dir)
        mkpath(config_dir)
        println("složka vytvořena: $config_dir")
    end

    # Cesta k souboru startup.jl
    startup_file = joinpath(config_dir, "startup.jl")
    # Získání seznamu nainstalovaných balíčků v aktuálním prostředí
    installed = keys(Pkg.dependencies())
    # Kontrola, zda je Revise mezi nimi
    if "Revise" in installed
        println("Revise.jl je již nainstalován.")
    else
        println("Revise.jl není nainstalován. Instalace...")
        Pkg.add("Revise")
        println("Instalace dokončena.")
    end

    # Obsah, který chceme zapsat
    content = """
    # Automaticky generovaný startup.jl
    using Revise
    """

    # Zápis do souboru (přepíše existující)
    open(startup_file, "w") do io
        write(io, content)
    end

    println("Soubor startup.jl byl vytvořen v: $startup_file")
end
