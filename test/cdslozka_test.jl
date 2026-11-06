# ver: 2026-11-04
# ============================================================
# Skript: cdslozka_test.jl
# Popis: Otestuje funkci cdslozka() definovanou v cdslozka.jl
# ============================================================
using Test
using Vyvoj

@testset "Test funkce cdslozka()" begin
	puvodni_slozka = pwd()
	koren_balicku = if Sys.isunix()
		joinpath(homedir(), "Dokumenty", "balickyJulia")
	elseif Sys.iswindows()
		joinpath(homedir(), "balickyJulia")
	else
		error("Nepodporovaný operační systém")
	end
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
