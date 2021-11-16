create table chorobopisy (
-- Tabulka chorobopisů pacientů. Každý chorobopis je určen na jeden kalendářní rok
-- a vztahuje se pouze k jednomu pacientovi

    id_chbp int unsigned primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč

    os_cislo smallint unsigned not null,
    -- osobní číslo 

    rok smallint unsigned not null ,
    -- rok, pro který chorobopis platí

    id_pac int unsigned not null,
    -- určuje pacienta, pro kterého byl chorobopis založen
);

alter table chorobopisy
add constraint chrobopisy_id_pac_fk
foreign key (id_pac)
references pacienti (id_pac);

alter table chorobopisy
add constraint chorobopisy_rok_os_cis_uq
unique (osobni_cislo, rok);
