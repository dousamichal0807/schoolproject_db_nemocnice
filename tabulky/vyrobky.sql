create table Vyrobky (
-- Evidence všech výrobků

	id_vyrobek int unsigned primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč
    
    nazev_vyrobek nvarchar(100) not null,
    -- název výrobku
    -- rozsah 3 až 100 znaků
    
	popis nvarchar(100) null,
    -- velmi krátký popis výrobku do 100 znaků, nepovinný
    
    cislo_vyrobek int not null, 
    -- číslo výrobku
    
    max_pouzVyr int not null 
    -- maximální počet použití výrobku
);

alter table Vyrobky
add constraint vyrobek_nazev
check(length(nazev_vyrobek) > 3);

