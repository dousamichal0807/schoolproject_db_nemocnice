create table pobyty_pacienta (
-- Evidence pobytů pacienta

    id_pob int unsigned primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč

    id_pac int unsigned not null,
    -- určuje pacienta, který byl přimut do péče
    -- cizí klíč odkazující konkrétního pacienta

    id_prijm_lek int unsigned not null,
    -- určuje lékaře, který pacienta přijmul
    -- cizí klíč odkazující konrétního lékaře

    id_osetr_lek int unsigned not null,
    -- určuje lékaře, který pacienta ošetřuje (ošetřující lékař)
    -- cizí klíč odkazující konrétního lékaře

    id_zakl_diag int not null,
    -- určuje základní diagnózu
    -- diagnóza, kvůli které byl pacient přijmut k hospitalizaci
    -- cizí klíč odkazující konrétní diagnózu

    dat_cas_prijem datetime not null,
    -- datum a čas, kdy byl pacient přijmut

    dat_cas_propus datetime null
    -- datum a čas, kdy byl pacient propuštěn z nemocnice
    -- musí být pozdější než datum a čas příjmu
);

alter table pobyty_pacienta
add constraint check_dat_pob
check (dat_prijem < dat_propus);

alter table pobyty_pacienta
add constraint pobyty_pacienta_id_pac_fk
foreign key (id_pac)
references pacienti(id_pac);

alter table pobyty_pacienta
add constraint pobyty_pacienta_id_prijm_lek_fk
foreign key (id_prijm_lek)
references zamestananci(id_zam);

alter table pobyty_pacienta
add constraint pobyty_pacienta_id_osetr_lek_fk
foreign key (id_osetr_lek)
references zamestananci(id_zam);

alter table pobyty_pacienta
add constraint pobyty_pacienta_id_zakl_diag_fk
foreign key (id_zakl_diag)
references diagnozy(id_diag);