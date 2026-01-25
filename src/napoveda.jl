## Funkce Julia v1.12
###############################################################
## Popis funkce:
# Vypíše vzorovou hlavičku nové uživatelské funkce, balíčku.
# ver: 2026-01-25
## Funkce: napoveda()
## Autor: Martin
#
## Cesta uvnitř balíčku:
# Vyvoj/src/napoveda.jl
#
## Vzor:
## _ = napoveda()
## Vstupní proměnné:
# projekt::String="" - název projektu: "funkce" nebo "balíček"
## Výstupní proměnné:
# string - textový výpis vzorové hlavičky
## Použité balíčky:
# Dates
## Použité uživatelské funkce:
#
## Příklad:
# napoveda() => vypíše vzorovou hlavičku funkce
# napoveda("balíček") => vypíše vzorovou hlavičku balíčku
# napoveda("funkce") => vypíše vzorovou hlavičku funkce
###############################################################
## Použité proměnné vnitřní:
#
"""
## Popis funkce:
# Vypíše vzorovou hlavičku nové uživatelské funkce.
# ver: 2025-11-24
## Funkce: nazev_funkce()
## Autor: Martin
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
#
"""
############################################################### 

using Dates

function napoveda(projekt::String="")
v = VERSION # Verze Julia
verze_minor = string(v.major, ".", v.minor) # Verze Julia Upravená např: "1.11", "1.12"
    T1 = [
        "Popis funkce:",                # 1
        "ver:",                         # 2
        "Funkce:",                      # 3
        "Autor:",                       # 4
        "Cesta uvnitř balíčku:",        # 5
        "Vzor:",                        # 6
        "Vstupní proměnné:",            # 7
        "Výstupní proměnné:",           # 8
        "Použité balíčky:",             # 9
        "Použité uživatelské funkce:",  # 10
        "Příklad:",                     # 11
        "Použité proměnné vnitřní:"     # 12
    ]
if projekt in ["", "funkce"] # funkce
    textN = """
## Funkce Julia v$verze_minor
###############################################################
## Popis funkce:
#
# ver: $(Dates.format(Dates.now(), "yyyy-mm-dd"))
## Funkce: nazev_funkce()
## Autor: Martin
#
## Cesta uvnitř balíčku:
# balicek/src/nazev_funkce.jl
#
## Vzor:
## vystupni_promenne = nazev_funkce(vstupni_promenne)
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
"""
elseif projekt in ["balíček", "balicek"] # balíček
    textN = """
## Balíček Julia v$verze_minor
###############################################################
## Popis balíčku
#
# $(T1[2]) $(Dates.format(Dates.now(), "yyyy-mm-dd"))
## Autor: Martin
## Cesta uvnitř balíčku:
# balicek/src/balicek.jl
#
## Použité balíčky:
#
###############################################################
## Použité proměnné vnitřní:
#
"""
else
    error("Chybné zadání")
end
    println(textN)

end # konec funkce
