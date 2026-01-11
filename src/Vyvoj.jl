## Balíček Julia v1.12
###############################################################
## Popis balíčku:
#
# ver: 2026-01-10
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

export napoveda, cdslozka, vytvorstartup

end # module Vyvoj
