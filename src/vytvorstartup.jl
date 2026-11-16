# ver: 2026-11-16
## Funkce _nazevFunkce_()
## Autor: Martin
#
## Cesta uvnitř balíčku:
# Vyvoj/src/vytvorstartup.jl
## Použité balíčky:
# Pkg, TOML
## Použité uživatelské funkce:
#
###############################################################
## Použité proměnné vnitřní:
#

using Pkg
using TOML
"""
$(read(joinpath(@__DIR__, "..", "docs", "src", "vytvorstartup.md"), String))
"""
function vytvorstartup(args...)
    # Cesta k uživatelské konfiguraci Julia
    config_dir = joinpath(homedir(), ".julia", "config")
    startup_file = joinpath(config_dir, "startup.jl")
if length(args) == 0 || (length(args) == 1 && args[1] == "info")
    if isfile(startup_file)
        println("Soubor startup.jl existuje v: $startup_file")
        println("Obsah souboru startup.jl:")
        println(read(startup_file, String))
    else
        println("Soubor startup.jl neexistuje.")
    end
elseif args[1] == "vytvor"
    # Pokud složka neexistuje, vytvoří se
    if !isdir(config_dir)
        mkpath(config_dir)
        println("složka vytvořena: $config_dir")
    end

    # Cesta k souboru startup.jl
    startup_file = joinpath(config_dir, "startup.jl")
    # Získání seznamu nainstalovaných balíčků v aktuálním prostředí
    deps = Pkg.dependencies()
    # Kontrola, zda je Revise mezi nimi
    if any(dep.name == "Revise" for dep in values(deps))
        println("Revise.jl je již nainstalován.")
    else
        println("Revise.jl není nainstalován. Instalace...")
        Pkg.add("Revise")
        println("Instalace dokončena.")
    end

    # Obsah startupu načtený z konfiguračního TOML souboru
    startup_config = TOML.parsefile(joinpath(@__DIR__, "vytvorstartup.toml"))
    content = startup_config["content"]

    # Zápis do souboru (přepíše existující)
    open(startup_file, "w") do io
        write(io, content)
    end

    println("Soubor startup.jl byl vytvořen v: $startup_file")
elseif length(args) == 1 && args[1] == "smaz"
    # Smazání souboru startup.jl, pokud existuje
    startup_file = joinpath(config_dir, "startup.jl")
    if isfile(startup_file)
        rm(startup_file)
        println("Soubor startup.jl byl smazán.")
    else
        println("Soubor startup.jl neexistuje.")
    end
else
    println("Neplatné argumenty. Použijte buď bez argumentů pro vytvoření, nebo 'smaz' pro smazání.")
end

end
