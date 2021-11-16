create table kliniky (
-- Evidence klinik v rámci jedné nemocnice

	id_klin int unsigned primary key auto_increment,
	-- umělý, automaticky generovaný primární klíč

	nazev nvarchar(50) not null,
	-- název kliniky
	-- rozsah: 2 až 50 znaků včetně
	-- název může obsahovat zkratky

	id_prednosty int unsigned not null,
	-- určuje přednostu kliniky
	-- cizí klíč odkazující konkrétního lékaře
	-- jeden lékař nemůže být přednostou více klinik

	id_primar int unsigned not null
	-- určuje primáře kliniky
	-- cizí klíč odkazující konkrétního lékaře
	-- jeden lékař nemůže být primář více klinik
);

alter table kliniky
add constraint kliniky_nazev_check
check(length(nazev) >= 2);

alter table kliniky
add constraint kliniky_id_prednosty_fk
foreign key (id_prednosty)
references zamestananci(id_zam);

alter table kliniky
add constraint kliniky_id_prednosty_uq
unique (id_prednosty);

alter table kliniky
add constraint kliniky_id_primar_fk
foreign key (id_primar)
references zamestananci(id_zam);

alter table kliniky
add constraint kliniky_id_primar_uq
unique (id_primar);