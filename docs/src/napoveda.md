## funkce `napoveda`
## soubor `napoveda.jl`
## Funkce Julia v1.13
###############################################################
## Popis funkce:
Vypíše vzorovou hlavičku nové uživatelské funkce.
U šablon `"funkce.jl"` a `"balicek.jl"` vloží obsah odpovídajícího Markdown souboru z `docs/src/`, pokud existuje. Název souboru odpovídá hodnotě `nazevfunkce` nebo `nazevbalicku` v `napoveda.toml`.
## Vzor:
```julia
napoveda(projekt)
```
## Vstupní proměnné:
- projekt::String - Druh souboru pro generování napovědy. Dovolené vstupy: 
    - `"funkce.jl"` - Vypíše vzorovou hlavičku pro novou uživatelskou funkci.
    - `"funkce.md"` - Vypíše vzorovou hlavičku pro dokumentaci nové uživatelské funkce.
    - `"balicek.jl"` - Vypíše vzorovou hlavičku pro soubor balíčku.
    - `"balicek.md"` - Vypíše vzorovou hlavičku pro dokumentaci balíčku.
    - `"data.toml"` - Vypíše vzorovou hlavičku pro soubor `data.toml` balíčku.
## Výstupní proměnné:
- string - textový výpis vzorové hlavičky
## Příklad:
```julia
_ = napoveda()
```
