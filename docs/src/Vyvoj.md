# Vyvoj

`Vyvoj` je balíček v jazyce Julia pro podporu vývoje uživatelských funkcí a lokálních balíčků.
Knihovna obsahuje pomocné nástroje pro práci s vývojovým adresářem a generování vzorových hlaviček zdrojových souborů.

Projekt je určen především pro:
- vývoj vlastních Julia funkcí
- vytváření a správu lokálních balíčků
- zjednodušení opakovaných kroků při zakládání nových souborů

## Instalace

### Balíček lze instalovat pomocí správce balíčků Julia.
```julia
using Pkg
Pkg.add(url="https://github.com/markrcmarik-beep/Vyvoj")
```

### Poté je možné balíček načíst:
```julia
using Vyvoj
```

## Hlavní funkce

Balíček aktuálně exportuje několik hlavních funkcí:

- `cdslozka()` - přepne do hlavní vývojové složky `balickyJulia`
- `napoveda()` - vypíše vzorovou hlavičku pro novou funkci
- `vytvorscriptbalicku` - 
- `vytvorstartup` - 
- `zavislostnauzivbalicek` - 

napoveda("balíček") - vypíše vzorovou hlavičku pro nový balíček

cdslozka("NazevProjektu") - přepne do konkrétního projektu uvnitř `balickyJulia`

vytvorskriptbalicku("NazevBalicku") - vytvoří skript `VytvoreniBalicku.jl` pro založení nového balíčku

## Příklad použití

Vytvoření vzoru hlavičky pro funkci:

napoveda()

Vytvoření vzoru hlavičky pro balíček:

napoveda("balíček")

Přepnutí do vývojového adresáře:

cdslozka()

Přepnutí do konkrétního projektu:

cdslozka("StrojniSoucasti")

Práce s adresáři

Funkce `cdslozka` pracuje podle operačního systému:

Linux / macOS: `~/Dokumenty/balickyJulia`

Windows: `~/balickyJulia`

Pokud cílová složka neexistuje, funkce vyhodí chybu.

## Struktura projektu
Vyvoj
│
├─ src
│   ├─ Vyvoj.jl
│   ├─ napoveda.jl
│   ├─ cdslozka.jl
│   └─ další moduly
│
├─ test
│
└─ Project.toml
