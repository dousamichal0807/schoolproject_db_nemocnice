> **Info:** This is a school project

# ds-nemocnice

## Členové týmu:

- Michal Douša - vedoucí
- David Marek Čihák
- Erik Heller
- Maksym Kvetsko

## Entity k implementaci

- [_] klinika
    - [_] název
    - [_] přednosta - vedoucí kliniky
    - [_] primář
- [_] pracoviště (oddělení)
    - [_] IČP (identifikační číslo pracoviště) - 8 číslic
    - [_] zkratka
    - [_] název
    - [_] vedoucí lékař
    - [_] příslušnost ke klinice
- [_] nákladové středisko (NS)
    - [_] název
    - [_] číslo nákl. střediska - identifikátor (5 desítkových cifer)
    - [_] příslušnost k pracovišti
    - [_] staniční sestra - vedoucí NS
- [x] diagnózy
    - [x] název diagnózy
    - [x] kód diagnózy
- [x] pacienti
    - [x] příjmení
    - [x] jméno
    - [x] rodné příjmení
    - [_] datum narození - uvidí se
    - [_] datum úmrtí (pokud k němu došlo)
    - [x] rodné číslo
    - [x] bydliště
- [x] pojištění pacienta
    - [x] pojišťovna
    - [x] kód pojištěnce
    - [x] od kdy
    - [x] do kdy
- [_] choropisy
    - [_] osobní číslo
    - [_] rok
    - [_] o kterého pacienta se jedná
    - **Pozn:** č. chorobopisu ve formátu `osobní_číslo/poslední_2_číslice_roku`, např. `12345/20`
- [_] pobyty pacienta
    - [_] datum čas příjmu
    - [_] lékař, který přijmul
    - [_] ošetřující lékař
    - [_] základní diagnóza
    - [_] datum čas propuštění
- [_] přidružené diagnózy
    - [_] jaká diagnóza
    - [_] ke kterému pobytu pacienta se váže
- [_] epikríza (vizity) - konají se každý den, kdy se pacient nachází v nemocnici
    - [_] datum
    - [_] zpráva
    - [_] ke kterému pobytu pacienta se váže
- náklady na pacienta - *způsob zpracování se uvidí po další analýze*
    - použitý materiál
    - výkon (jaký druh, kolikrát)
    - přístroje (el. energie)
    - odpad (dekontaminace, likvidace) - množství
    - odpisy - účetnictví, jeden přístroj na určitý počet použití
- [_] druhy operačních výkonů
    - [_] název výkonu
    - [_] kód výkonu (5 desítkových cifer)
- [_] operace
    - [_] pacient
    - [_] druh výkonu
    - [_] začátek - datum, čas
    - [_] konec - datum, čas
    - [_] krevní ztráty
    - [_] popis operace - operační protokol - bude asi `ntext`
    - přítomná operační skupina (operatér, asistenti, anesteziologové) - *způsob zpracování se uvidí po další analýze*
    - náklady na pacienta - *způsob zpracování se uvidí po další analýze*
- [_] výrobky - jednorázový  materiál, nástroje apod.
    - [_] název
    - [_] popis - velmi krátký, do 100 znaků, nepovinný
    - [_] číslo výrobku
    - [_] max. počet použití výrobku
- [_] údaje o výrobcích závislá na pojišťovně
    - [_] která pojišťovna (na které jsou data v záznamu závislé)
    - [_] který výrobek
    - [_] kód výrobku (každá pojišťovna má svůj  číselník)
    - [_] úhrada (kolik je schopna pojišťovna uhradit za použití daného výrobku)
