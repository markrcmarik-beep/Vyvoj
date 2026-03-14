## Balíček Julia v1.12
###############################################################
## Popis balíčku:
#
# ver: 2026-01-11
## Cesta uvnitř balíčku:
# Vyvoj/src/Vyvoj.jl
#
## Použité balíčky:
# Dates, Pkg
###############################################################
## Použité proměnné vnitřní:
#
module Vyvoj

include("napoveda.jl")
include("cdslozka.jl")
include("vytvorstartup.jl")
include("zavislostnauzivbalicek.jl")
include("vytvorskriptbalicku.jl")

export napoveda, cdslozka, vytvorskriptbalicku

end # module Vyvoj
