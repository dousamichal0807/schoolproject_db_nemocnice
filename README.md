> **Info:** This is a school project

# ds-nemocnice

## Členové týmu:

- Michal Douša - vedoucí
- David Marek Čihák
- Erik Heller
- Maksym Kvetsko

## Entity k implementaci

- [ ] klinika
    - [ ] název
    - [ ] přednosta - vedoucí kliniky
    - [ ] primář
- [ ] pracoviště (oddělení)
    - [ ] IČP (identifikační číslo pracoviště) - 8 číslic
    - [ ] zkratka
    - [ ] název
    - [ ] vedoucí lékař
    - [ ] příslušnost ke klinice
- [ ] nákladové středisko (NS)
    - [ ] název
    - [ ] číslo nákl. střediska - identifikátor (5 desítkových cifer)
    - [ ] příslušnost k pracovišti
    - [ ] staniční sestra - vedoucí NS
- [x] diagnózy
    - [x] název diagnózy
    - [x] kód diagnózy
- [x] pacienti
    - [x] příjmení
    - [x] jméno
    - [x] rodné příjmení
    - [ ] datum narození - uvidí se
    - [ ] datum úmrtí (pokud k němu došlo)
    - [x] rodné číslo
    - [x] bydliště
- [x] pojištění pacienta
    - [x] pojišťovna
    - [x] kód pojištěnce
    - [x] od kdy
    - [x] do kdy
- [ ] choropisy
    - [ ] osobní číslo
    - [ ] rok
    - [ ] o kterého pacienta se jedná
    - **Pozn:** č. chorobopisu ve formátu `osobní_číslo/poslední_2_číslice_roku`, např. `12345/20`
- [ ] pobyty pacienta
    - [ ] datum čas příjmu
    - [ ] lékař, který přijmul
    - [ ] ošetřující lékař
    - [ ] základní diagnóza
    - [ ] datum čas propuštění
- [ ] přidružené diagnózy
    - [ ] jaká diagnóza
    - [ ] ke kterému pobytu pacienta se váže
- [ ] epikríza (vizity) - konají se každý den, kdy se pacient nachází v nemocnici
    - [ ] datum
    - [ ] zpráva
    - [ ] ke kterému pobytu pacienta se váže
- náklady na pacienta - *způsob zpracování se uvidí po další analýze*
    - použitý materiál
    - výkon (jaký druh, kolikrát)
    - přístroje (el. energie)
    - odpad (dekontaminace, likvidace) - množství
    - odpisy - účetnictví, jeden přístroj na určitý počet použití
- [ ] druhy operačních výkonů
    - [ ] název výkonu
    - [ ] kód výkonu (5 desítkových cifer)
- [ ] operace
    - [ ] pacient
    - [ ] druh výkonu
    - [ ] začátek - datum, čas
    - [ ] konec - datum, čas
    - [ ] krevní ztráty
    - [ ] popis operace - operační protokol - bude asi `ntext`
    - přítomná operační skupina (operatér, asistenti, anesteziologové) - *způsob zpracování se uvidí po další analýze*
    - náklady na pacienta - *způsob zpracování se uvidí po další analýze*
- [ ] výrobky - jednorázový  materiál, nástroje apod.
    - [ ] název
    - [ ] popis - velmi krátký, do 100 znaků, nepovinný
    - [ ] číslo výrobku
    - [ ] max. počet použití výrobku
- [ ] údaje o výrobcích závislá na pojišťovně
    - [ ] která pojišťovna (na které jsou data v záznamu závislé)
    - [ ] který výrobek
    - [ ] kód výrobku (každá pojišťovna má svůj  číselník)
    - [ ] úhrada (kolik je schopna pojišťovna uhradit za použití daného výrobku)
