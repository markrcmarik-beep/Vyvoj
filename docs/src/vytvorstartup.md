## funkce `vytvorstartup`
## soubor `vytvorstartup.jl`
## Funkce Julia v1.13
###############################################################
## Popis funkce:
Vytvoří soubor `startup.jl` v uživatelské konfiguraci Julia, který automaticky načítá balíčky `Revise` a `Vyvoj` při spuštění Julia. Pokud složka pro konfiguraci neexistuje, funkce ji vytvoří. Také zkontroluje, zda je balíček `Revise` nainstalován, a pokud ne, nainstaluje ho.
## Vzor:
```julia
vytvorstartup(argumenty)
```
## Vstupní proměnné:
- argumenty - volitelný seznam argumentů, které určují chování funkce:
    - "info" - zobrazí informace o existenci souboru `startup.jl` a jeho obsah.
    - "vytvor" - vytvoří soubor `startup.jl` v uživatelské konfiguraci Julia.
    - "smaz" - smaže soubor `startup.jl`, pokud existuje.
## Výstupní proměnné:
- string - textový výpis postupu.
## Příklad:
```julia
_ = vytvorstartup()
```
