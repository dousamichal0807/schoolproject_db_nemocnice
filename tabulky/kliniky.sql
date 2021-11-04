create table kliniky(
	id_klin int primary key not null,
	--primary key tabulky kliniky

	nazev nvarchar(30) not null,
	--nazev kliniky

	id_pred int not null references lekari(id_lek),
	--foreign key k tabulce lekaru

	id_primar int not null references lekari(id_lek)
	--foreign key k tabulce primaru
);



