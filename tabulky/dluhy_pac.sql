create table dluhy_pac (
-- Evidence dluhů pacientů, kdo, za co a jakou částku dluží
    
    id_dl_pac int unsigned primary key auto_increment,
    -- ID dluhu
    -- umělý, automaticky generovaný primární klíč

    id_pac int unsigned not null,
    -- cizí klíč odkazující na určitého pacienta
    -- určuje, kterého pacienta se dluh týká

    popis nvarchar(200) not null,
    -- popis, za co pacient musí zaplatit
    -- rozsah 6 až 200 znaků včetně
    -- např.:
    --      Plastická operace prsou
    --      Rozbité vybavení na pokoji
    -- apod.

    datum_cas datetime not null,
    -- datum a čas, kdy dluh vznikl
    -- povinný atribut

    castka decimal(8, 2) not null,
    -- určuje výši částky v Kč, kterou je nutno splatit
    -- povinný atribut
    -- minimálně 0,01 Kč
);

alter table dluhy_pac
add constraint dluhy_pac_pacienti_fk
foreign key (id_pac)
references pacienti(id_pac);

alter table dluhy_pac
add constraint dluhy_pac_popis_check
check(length(popis) > 5);

alter table dluhy_pac
add constraint dluhy_pac_castka_check
check(castka > 0);