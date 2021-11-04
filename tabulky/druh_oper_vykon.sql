create table Druh_oper_vykon(
-- Evidence druhů operačních výkonů

	id_druhVyk int unsigned primary key auto_increment,
	-- umělý, automaticky generovaný primární klíč
    
    nazev_vykon nvarchar(100) not null,
    -- název provedeného výkonu
    -- rozsah 5 až 100 znaků
    
    kod_vykon int not null
    -- kód provedeného výkonu
);    


alter table Druh_oper_vykon
add constraint druh_kod_vykon
check(kod_vykon < 10000);

alter table Druh_oper_vykon
add constraint druh_nazev_vykon
check(length(nazev_vykon) > 5)