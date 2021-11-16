create table pracoviste (
-- Tabulka pracovišť v nemocnici. Na jedné klinice je více pracovišť.

	id_prac int unsigned primary key auto_increment,
	-- umělý, automaticky generovaný primární klíč

	icp varchar(10) not null,
	-- identifikační číslo pracovistě (IČP)
	-- může obsahovat i znaky, nemusí být nutně číslo

	zkratka nvarchar(10) not null,
	-- zkratka pro pracoviště

	nazev nvarchar(50) not null,
	-- název pracoviště
	-- rozsah: 2 až 50 znaků

	id_vedouci_lek int not null, 
	--foreign key k tabulce Lekari, urcuje vedouciho lekare

	id_klin int not null
	--foreign key k tabulka kliniky
);

alter table pracoviste
add constraint pracoviste_icp_uq
unique (icp);

alter table pracoviste
add constraint pracoviste_icp_check
check (icp regexp '[0-9A-Z]{2,}')

alter table pracoviste
add constraint pracoviste_id_vedouci_lek_fk
foreign key (id_vedouci_lek)
references lekari(id_lek);

alter table pracoviste
add constraint pracoviste_id_klin_fk
foreign key (id_klin)
references kliniky(id_klin);