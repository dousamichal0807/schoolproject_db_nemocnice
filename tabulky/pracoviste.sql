create table pracoviste(
	id_pracoviste int primary key not null,
	--primary key tabulky pracoviste

	icp varchar(10) not null,
	--identifikacni cislo pracoviste

	zkratka nvarchar(10) not null,
	--Zkratka pro pracoviste

	nazev nvarchar(50) not null,
	--nazev pracoviste

	id_vedouci_lek int not null references lekari(id_lek), 
	--foreign key k tabulce Lekari, urcuje vedouciho lekare

	id_klin int not null references kliniky(id_klin),
	--foreign key k tabulka kliniky
);