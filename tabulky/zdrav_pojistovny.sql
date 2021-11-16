create table zdrav_pojistovny (
-- Tabulka pro evidenci zdravotních pojišťoven v ČR

    id_zdr_pvn int unsigned primary key auto_increment,
    -- umělý, automaticky generovaný cizí klíč

    kod smallint not null,
    -- kód zdravotní pojišťovny
    -- tři desítkové číslice

    nazev nvarchar(100) not null,
    -- název zdravotní pojišťovny
    -- rozsah 6 až 200 znaků včetně
);

alter table zdrav_pojistovny
add constraint zdrav_pojistovny_kod_check
check(kod_zdr_pojistovny >= 100 and kod_zdr_pojistovny < 1000);

alter table zdrav_pojistovny
add constraint zdrav_pojistovny_nazev_check
check(length(nazev) > 5)