# ver: 2026-09-09
# ============================================================
# Skript: cdslozka_test.jl
# Popis: Otestuje funkci cdslozka() definovanou v cdslozka.jl
# ============================================================
using Test
using Vyvoj

@testset "Test funkce cdslozka()" begin
	puvodni_slozka = pwd()
	koren_balicku = joinpath(homedir(), "balickyJulia")
	slozka_projektu = joinpath(koren_balicku, "StrojniSoucasti")

	try
		redirect_stdout(devnull) do
			cdslozka()
		end
		@test pwd() == normpath(koren_balicku)

		redirect_stdout(devnull) do
			cdslozka("StrojniSoucasti")
		end
		@test pwd() == normpath(slozka_projektu)
	finally
		cd(puvodni_slozka)
	end
end

nothing
