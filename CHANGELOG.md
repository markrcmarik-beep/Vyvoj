# Changelog

Tento soubor obsahuje seznam verzí balíčku `Vyvoj`, které byly v repozitáři dosud vytvořeny. Před verzí `0.1.7` nebyly v historii repozitáře explicitně označeny samostatné verze, takže další vývoj je shrnut v rámci první evidované stabilnější řady.

## [0.1.10] - 2026-11-04

### Přidáno
- Soubor nápovědy balíčku `Vyvoj.md`
### Upraveno
- Odstraněno verzování používaných balíčků.

## [0.1.9] - 2026-09-22

### Přidáno
- rozšíření a úpravy `napoveda()` a nových textových šablon pro generování hlaviček
- oddělené TOML konfigurační soubory pro nápovědu a startup skripty
- nové pomocné skripty pro čištění prostředí, aktualizaci a prekompilaci balíčku
- doplněné testy pro kontrolu základních funkcí
### Upraveno
- úprava startup skriptu a zlepšení generované struktury balíčku
- vyčištění a sjednocení logiky v `napoveda` a souvisejících funkcích
- aktualizace `.gitignore` a projektových nastavení

## [0.1.8] - 2026-03-31

### Přidáno
- funkce `vytvorskriptbalicku()` pro vytvoření skriptu pro založení nového balíčku
- rozšířený popis projektu a dokumentace v `README.md`
- doplnění základních nástrojů pro práci s vývojovým prostředím
### Upraveno
- úpravy v `cdslozka`, startup skriptu a funkci pro zjišťování závislostí na uživatelových balíčcích
- opravy a vylepšení v projektové konfiguraci a testech

## [0.1.7a] - 2026-02-05

### Upraveno
- úprava číslování verze a drobné korekce v projektu
- pokračující vývoj nad rámec hlavní 0.1.7 verze

## [0.1.7] - 2026-02-05

### Přidáno
- rozšíření funkčního rozhraní balíčku
- nový modul `zavislostnauzivbalicek.jl` pro práci se závislostmi na lokálních balíčcích
- doplnění a úpravy funkce `napoveda()`
- rozšíření startup funkcionality
### Upraveno
- opravy v projektu a v základní struktuře funkcí
- stabilizace práce s nápovědou, startup a testy

## [0.1.0] - nezaznamenáno jako explicitní release

Historie repozitáře obsahuje několik předchozích změn v jednotlivých commitových zprávách (např. `verze`, `opravy`, `rozsireni`, `dolneni funkci`), ale bez explicitního číslování verze v publiku. Tyto změny byly následně sjednoceny ve verzi `0.1.7`.
