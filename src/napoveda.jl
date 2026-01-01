## Funkce Julia
############################################################### 
"""
## Popis funkce:
# Vypíše vzorovou hlavičku nové uživatelské funkce.
# ver: 2025-11-24
## Funkce: nazev_funkce()
#
## Vzor:
## vystupni_promenne = nazev_funkce(vstupni_promenne)
## Vstupní proměnné:
#
## Výstupní proměnné:
#
## Pouzite balicky
# Dates
## Použité funkce:
#
## Příklad:
# Vrátí vzorovou hlavičku funkce.
"""
############################################################### 
## Použité proměnné vnitřní:
#

using Dates
function napoveda()

    T1 = [
        "Popis funkce:",                # 1
        "ver:",                         # 2
        "Funkce:",                      # 3
        "Vzor:",                        # 4
        "Vstupní proměnné:",            # 5
        "Výstupní proměnné:",           # 6
        "Použité balíčky",              # 7
        "Použité uživatelské funkce:",  # 8
        "Příklad:",                     # 9
        "Použité proměnné vnitřní:"     # 10
    ]
    textN = """
## Funkce Julia
###############################################################
## $(T1[1])
#
# $(T1[2]) $(Dates.format(Dates.now(), "yyyy-mm-dd"))
## $(T1[3]) nazev_funkce()
#
## $(T1[4])
## vystupni_promenne = nazev_funkce(vstupni_promenne)
## $(T1[5])
#
## $(T1[6])
#
## $(T1[7])
#
## $(T1[8])
#
## $(T1[9])
#
###############################################################
## $(T1[10])
#
"""
    println(textN)

end # konec funkce
