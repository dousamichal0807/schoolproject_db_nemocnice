create table splatky_dl_pac (
-- Tabulka obsahující informace o splacení dluhu, tj. kdy bylo splaceno, jaká část
-- (pacient nemusí splatit najednou) který dluh.

    id_spl_dl_pac int unsigned primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč

    id_dl_pac int unsigned not null,
    -- jakého dluhu se splátka týká
    -- cizí klíč

    castka decimal(8, 2) not null,
    -- částka, kterou pacient uhradil
    -- minimálně 0,01 Kč

    datum_cas datetime not null,
    -- datum a čas, kdy byla uvedená suma splacena
);

alter table splatky_dl_pac
add constraint splatky_dl_pac_dluhy_pac_fk
foreign key (id_dl_pac)
references dluhy_pac(id_dl_pac);

alter table splatky_dl_pac
add constraint splatky_dl_pac_castka_check
check(castka > 0);