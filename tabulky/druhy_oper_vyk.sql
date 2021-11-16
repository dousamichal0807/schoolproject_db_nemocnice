create table druhy_oper_vyk (
-- Evidence druhů operačních výkonů

	id_dr_op_vyk int unsigned primary key auto_increment,
	-- umělý, automaticky generovaný primární klíč
    
    nazev nvarchar(100) not null,
    -- název provedeného výkonu
    -- rozsah 2 až 100 znaků
    -- název může obsahovat zkratky
    
    kod smallint unsigned not null
    -- kód provedeného výkonu
    -- až čtyřmístné číslo
    -- kód je unikátní
);    

alter table druhy_oper_vyk
add constraint druhy_oper_vyk_nazev_check
check(length(nazev_vykon) >= 2);

alter table druhy_oper_vyk
add constraint druhy_oper_vyk_kod_check
check(kod_vykon < 10000);

alter table druh_oper_vyk
add constraint druhy_oper_vyk_kod_uq
unique(kod);