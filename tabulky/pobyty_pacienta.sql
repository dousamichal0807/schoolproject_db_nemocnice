use nemocnice ;

create table pobyty_pacienta (
id_pob int primary key auto_increment,
/*umělý, automaticky generovaný primární klíč */
pacient int not null,
/*fk odkaz na pacienta prijmuteho do pece*/
prijm_lekar int not null,
/*fk odkaz na tabulku lekari*/
osetr_lekar int not null,
/*fk odkaz na tabulku lekari*/
zak_diagnoza int not null,
/*fk odkaz na tabulku diagnozy*/
dat_prijm datetime not null,
/*Datum prijeti pacienta do pece*/
dat_propus datetime not null,
/*fdatum propusteni pacienta z pece*/
foreign key (prijm_lekar) references lekari(id_lekar),
foreign key (osetr_lekar) references lekari(id_lekar),
foreign key (zak_diagnoza)references diagnozy(id_diag),
foreign key (pacient)references pacienti(id_pac)
);


alter table pobyty_pacienta
add constraint check_dat_pob
check (dat_propus>= dat_prijm)