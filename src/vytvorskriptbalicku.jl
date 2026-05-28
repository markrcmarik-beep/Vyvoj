## Funkce Julia v1.12
###############################################################
## Popis funkce:
# Vytvoří skript pro vytvoření nového balíčku podobný souboru
# `VytvoreniBalicku.jl`.
# ver: 2026-03-14
## Funkce: vytvorskriptbalicku()
#
## Cesta uvnitř balíčku:
# Vyvoj/src/vytvorskriptbalicku.jl
#
## Vzor:
## vystupni_promenne = vytvorskriptbalicku(nazevB::AbstractString, cil::AbstractString, soubor::AbstractString, prepsat::Bool)
## Vstupní proměnné:
# - `nazevB`: Název balíčku, který bude vytvořen.
# - `cil`: Cílová složka, kam bude skript uložen (výchozí je domovský adresář).
# - `soubor`: Název souboru, který bude vytvořen (výchozí "VytvoreniBalicku.jl").
# - `prepsat`: Pokud je `true`, přepíše existující soubor (výchozí `true`).
## Výstupní proměnné:
#
## Použité balíčky:
# Dates
## Použité uživatelské funkce:
#
## Příklad:
# vytvorskriptbalicku("MujBalicek")
###############################################################
## Použité proměnné vnitřní:
#
using Dates

function vytvorskriptbalicku(
    nazevB::AbstractString,
    cil::AbstractString=homedir(),
    soubor::AbstractString="VytvoreniBalicku.jl",
    prepsat::Bool=true
)
    isdir(cil) || error("Cílová složka neexistuje: $cil") # Ověří, že cílová složka existuje nebo vyhodí chybu
    cesta = joinpath(cil, soubor) # Vytvoří úplnou cestu k souboru

    if isfile(cesta) && !prepsat
        error("Soubor již existuje: $cesta")
    end

    content = """
# ver: $(Dates.format(Dates.now(), "yyyy-mm-dd"))
using Pkg
nazevB = "$(nazevB)"                                  # název balíčku
this_file = @__FILE__                               # úplná cesta k tomuto souboru
this_dir  = joinpath(dirname(this_file),nazevB)     # jen složka, bez názvu souboru

if !isdir(this_dir)                           # pokud balíček ještě neexistuje
  cd(@__DIR__)                                # Změní umístění na aktuální složku
  Pkg.generate(nazevB)                        # vytvoří balíček s názvem
  println("Vytvořen balíček: $nazevB")
else
  println("Balíček $nazevB již existuje.")
end
"""

    open(cesta, "w") do io # Otevře soubor pro zápis (vytvoří nový nebo přepíše existující)
        write(io, content) # Zapíše obsah do souboru
    end

    println("Skript vytvořen: $cesta")
    return cesta
end
