create table Vyrobky (
-- Evidence všech výrobků

	id_vyr int unsigned primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč
    
    nazev nvarchar(100) not null,
    -- název výrobku
    -- rozsah 3 až 100 znaků
    
	popis nvarchar(200) null,
    -- velmi krátký popis výrobku do 200 znaků, nepovinný
    
    cislo int not null, 
    -- číslo výrobku
    
    max_poc_pouz smallint unsigned not null 
    -- maximální počet použití výrobku
);

alter table Vyrobky
add constraint vyrobek_nazev
check(length(nazev_vyrobek) > 3);
