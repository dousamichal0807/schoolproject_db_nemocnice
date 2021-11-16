> **Info:** This is a school project

# ds-nemocnice

## Členové týmu:

- Michal Douša - vedoucí
- David Marek Čihák
- Erik Heller
- Maksym Kvetsko

## Entity k implementaci

- [x] klinika
    - [x] název
    - [x] přednosta - vedoucí kliniky
    - [x] primář
- [x] pracoviště (oddělení)
    - [x] IČP (identifikační číslo pracoviště) - 8 číslic
    - [x] zkratka
    - [x] název
    - [x] vedoucí lékař
    - [x] příslušnost ke klinice
- [x] nákladové středisko (NS)
    - [x] název
    - [x] číslo nákl. střediska - identifikátor (5 desítkových cifer)
    - [x] příslušnost k pracovišti
    - [x] staniční sestra - vedoucí NS
- [x] diagnózy
    - [x] název diagnózy
    - [x] kód diagnózy
- [x] pacienti
    - [x] příjmení
    - [x] jméno
    - [x] rodné příjmení
    - [x] datum narození - uvádí se též
    - [x] datum úmrtí (pokud k němu došlo)
    - [x] rodné číslo
    - [x] bydliště
- [x] pojištění pacienta
    - [x] pojišťovna
    - [x] kód pojištěnce
    - [x] od kdy
    - [x] do kdy
- [x] chorobopisy
    - [x] osobní číslo
    - [x] rok
    - [x] o kterého pacienta se jedná
    - **Pozn:** č. chorobopisu ve formátu `osobní_číslo/poslední_2_číslice_roku`, např. `12345/20`
- [x] pobyty pacienta
    - [x] datum čas příjmu
    - [x] lékař, který přijmul
    - [x] ošetřující lékař
    - [x] základní diagnóza
    - [x] datum čas propuštění
- [x] přidružené diagnózy
    - [x] jaká diagnóza
    - [x] ke kterému pobytu pacienta se váže
- [x] epikríza (vizity) - konají se každý den, kdy se pacient nachází v nemocnici
    - [x] datum
    - [x] zpráva
    - [x] ke kterému pobytu pacienta se váže
- náklady na pacienta - *způsob zpracování se uvidí po další analýze*
    - použitý materiál
    - výkon (jaký druh, kolikrát)
    - přístroje (el. energie)
    - odpad (dekontaminace, likvidace) - množství
    - odpisy - účetnictví, jeden přístroj na určitý počet použití
- [x] druhy operačních výkonů
    - [x] název výkonu
    - [x] kód výkonu (5 desítkových cifer)
- [x] operace
    - [x] pacient
    - [x] druh výkonu
    - [x] začátek - datum, čas
    - [x] konec - datum, čas
    - [x] krevní ztráty
    - [x] popis operace - operační protokol - bude asi `ntext`
    - přítomná operační skupina (operatér, asistenti, anesteziologové) - *způsob zpracování se uvidí po další analýze*
    - náklady na pacienta - *způsob zpracování se uvidí po další analýze*
- [x] výrobky - jednorázový materiál, nástroje apod.
    - [x] název
    - [x] popis - velmi krátký, do 100 znaků, nepovinný
    - [x] číslo výrobku
    - [x] max. počet použití výrobku
- [x] údaje o výrobcích závislá na pojišťovně
    - [x] která pojišťovna (na které jsou data v záznamu závislé)
    - [x] který výrobek
    - [x] kód výrobku (každá pojišťovna má svůj  číselník)
    - [x] úhrada (kolik je schopna pojišťovna uhradit za použití daného výrobku)
