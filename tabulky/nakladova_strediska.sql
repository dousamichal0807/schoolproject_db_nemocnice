create table nakladova_strediska(
	id_nakl_stred int primary key not null,
	--primary key nakladoveho strediska

	nazev nvarchar(50) not null,
	--nazev nakladoveho strediska

	cis_nakl_stred int check(cis_nakl_stred <= 99999) not null,
	--identifikator nakladoveho strediska 5 desitkovych cifer

	id_pracoviste int not null references pracoviste(id_pracoviste),
	--foreign key k tabulce pracovist

	id_stanicni_ses int not null references lekari(id_lek),
	--foreign key k tabulce lekaru, urcuje stanicni sestru
);