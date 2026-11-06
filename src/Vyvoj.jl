## Balíček Julia v1.13
###############################################################
## Popis balíčku:
#
# ver: 2026-11-04
## Cesta uvnitř balíčku:
# Vyvoj/src/Vyvoj.jl
#
## Použité balíčky:
# Dates, Pkg, TOML
###############################################################
## Použité proměnné vnitřní:
#
"""
$(read(joinpath(@__DIR__, "..", "docs", "src", "Vyvoj.md"), String))
"""
module Vyvoj

include("napoveda.jl")
include("cdslozka.jl")
include("vytvorstartup.jl")
include("zavislostnauzivbalicek.jl")
include("vytvorskriptbalicku.jl")

export napoveda, cdslozka, vytvorskriptbalicku

end # module Vyvoj
