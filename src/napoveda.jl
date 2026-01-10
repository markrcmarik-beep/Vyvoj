## Funkce Julia
###############################################################
## Popis funkce:
#
# ver: 2026-01-10
## Funkce: napoveda()
#
## Cesta uvnitř balíčku:
# Vyvoj/src/napoveda.jl
#
## Vzor:
## _ = napoveda()
## Vstupní proměnné:
#
## Výstupní proměnné:
#
## Použité balíčky:
#
## Použité uživatelské funkce:
#
## Příklad:
# napoveda()
#
###############################################################
## Použité proměnné vnitřní:
#
"""
## Popis funkce:
# Vypíše vzorovou hlavičku nové uživatelské funkce.
# ver: 2025-11-24
## Funkce: nazev_funkce()
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
# Vrátí vzorovou hlavičku funkce.
"""
############################################################### 

using Dates

function napoveda(projekt::String="")

    T1 = [
        "Popis funkce:",                # 1
        "ver:",                         # 2
        "Funkce:",                      # 3
        "Cesta uvnitř balíčku:",        # 4
        "Vzor:",                        # 5
        "Vstupní proměnné:",            # 6
        "Výstupní proměnné:",           # 7
        "Použité balíčky:",             # 8
        "Použité uživatelské funkce:",  # 9
        "Příklad:",                     # 10
        "Použité proměnné vnitřní:"     # 11
    ]
if projekt == "" # funkce
    textN = """
## Funkce Julia
###############################################################
## $(T1[1])
#
# $(T1[2]) $(Dates.format(Dates.now(), "yyyy-mm-dd"))
## $(T1[3]) nazev_funkce()
#
## $(T1[4])
# balicek/src/nazev_funkce.jl
#
## $(T1[5])
## vystupni_promenne = nazev_funkce(vstupni_promenne)
## $(T1[6])
#
## $(T1[7])
#
## $(T1[8])
#
## $(T1[9])
#
## $(T1[10])
#
###############################################################
## $(T1[11])
#
"""
elseif projekt in ["balíček", "balicek"] # balíček
    textN = """
## Balíček Julia
###############################################################
## Popis balíčku
#
# $(T1[2]) $(Dates.format(Dates.now(), "yyyy-mm-dd"))
## $(T1[4])
# balicek/src/balicek.jl
#
## $(T1[8])
#
###############################################################
## $(T1[11])
#
"""
else
    error("Chybné zadání")
end
    println(textN)

end # konec funkce
