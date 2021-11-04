create table Operace(
-- Evidence všech operací

	id_operace int unsigned primary key auto_increment,
	-- umělý, automaticky generovaný primárný klíč 
    
	id_pacient int references pacienti(id_pac) not null,
    -- foreign key pacienta
    
	id_vykon int references Druh_oper_vykon(id_druhVyk) not null,
    -- foreign key operačního výkonu
    
	zacatek datetime not null, 
    -- datum a čas začátku operace
	
    konec datetime not null,
    -- datum a čas začátku operace
    
	krevni_ztraty decimal not null, 
    -- krevní ztráty pacienta při operaci (litry)
    
	popis_operace nvarchar(200)
	-- popis celé operace, jak probíhala apod.
    -- rozsah 3 až 200 znaků
);

alter table Operace
add constraint operace_popis
check(length(popis_operace) > 3);
