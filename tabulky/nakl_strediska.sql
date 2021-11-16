create table nakl_strediska (
-- Evidence nákladových středisek. Nákladové středisko je v rámci nemocnice základní
-- účetní jednotkou.

	id_ns int unsigned primary key auto_increment,
	-- umělý, automaticky generovaný primární klíč

	nazev nvarchar(50) not null,
	-- název nákladového střediska
	-- může obsahovat zkratky
	-- rozsah: 2 až 50 znaků včetně

	cislo_ns mediumint unsigned not null,
	-- číslo nákladového střediska
	-- max. 5 desítkových cifer
	-- jedinečné v rámci jedné nemocnice

	id_prac int unsigned not null,
	-- pracoviště, ke kterému nákladové středisko patří
	-- cizí klíč odkazující konkrétní pracoviště

	id_stan_sestr int unsigned not null,
	-- cizí klíč určující staniční sestru k jednomu nákladovému středisku
	-- jedna osoba nesmí být staniční sestrou na více nákladových střediscích
);

alter table nakl_strediska
add constraint nakl_strediska_nazev_check
check(length(nakl_strediska) >= 2)

alter table nakl_strediska
add constraint nakl_strediska_cislo_ns_check
check(cislo_ns <= 99999);

alter table nakl_strediska
add constraint nakl_strediska_cislo_ns_uq
unique(cislo_ns);

alter table nakl_strediska
add constraint nakl_strediska_id_prac_fk
foreign key (id_prac)
references pracoviste(id_prac);

alter table nakl_strediska
add constraint nakl_strediska_id_stan_sestr_fk
foreign key (id_stan_sestr)
references zamestananci(id_zam);