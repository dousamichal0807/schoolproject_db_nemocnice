create table lekari (
-- Evidence všech lékařů v nemocnici

    id_lekar int primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč

    prijm nvarchar(100) not null,
    -- Příjmení lékaře
    -- rozsah 2 až 100 znaků včetně

    jmeno nvarchar(100) not null,
    -- Jméno (jména) lékaře
    -- rozsah 2 až 100 znaků včetně
);

alter table lekari
add constraint lekari_prijm_check
check(length(jmeno) >= 2);

alter table lekari
add constraint lekari_jmeno_check
check(length(jmeno) >= 2)