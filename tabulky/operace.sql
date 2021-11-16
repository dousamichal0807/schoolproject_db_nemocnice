create table operace (
-- Evidence všech operací

	id_op int unsigned primary key auto_increment,
	-- umělý, automaticky generovaný primárný klíč 
    
	id_pac int unsigned not null,
    -- pacient, který zákrok podstoupil
	-- cizí klíč odkazující jednoho pacienta
    
	id_dr_op_vyk int unsigned not null,
    -- druh výkonu, který pacient podstoupil
    
	zacatek datetime not null, 
    -- datum a čas, kdy operace začala
	
    konec datetime not null,
    -- datum a čas, kdy operace skončila
    
	krevni_ztraty decimal(1, 3) not null, 
    -- krevní ztráty pacienta při operaci (litry)
    
	popis ntext not null
	-- popis celé operace, jak probíhala apod.
    -- rozsah min. 50 znaků
);

alter table operace
add constraint operace_id_pac_fk
foreign key (id_pac)
references pacienti(id_pac);

alter table operace
add constraint operace_id_dr_op_vyk_fk
foreign key (id_dr_op_vyk)
references druhy_oper_vyk(id_dr_op_vyk);

alter table operace
add constraint operace_zac_kon_check
check(zacatek < konec);

alter table operace
add constraint operace_krevni_ztraty_check
check(krevni_ztraty >= 0);

alter table operace
add constraint operace_popis_check
check(length(popis_operace) >= 50);