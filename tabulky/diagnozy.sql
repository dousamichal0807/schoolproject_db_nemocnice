create table diagnozy (
-- Tabulka všech diagnóz

    id_diag int unsigned primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč

    kod varchar(6) not null,
    -- kód diagnózy
    -- 1. jedno velké písmeno
    -- 2. dvě desítková čísla
    -- 3. tečka
    -- 4. jedno nebo dvě desítková čísla

    nazev nvarchar(200) not null
    -- název diagnózy
    -- rozsah 6 až 200 znaků včetně
);

alter table diagnozy
add constraint diagnozy_kod_check
check(kod regexp '[A-Z][0-9]{2}\.[0-9]{1,2}');

alter table diagnozy
add constraint diagnozy_kod_unique
unique(kod);

alter table diagnozy
add constraint diagnozy_nazev_check
check(length(nazev) > 5)