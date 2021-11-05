create table pridruzene_diagnozy(
id_prid_diag  int primary key auto_increment,
/*unikatni, automaticky generovany primarni klic*/
diagnoza int not null,
/*Pridruzena diagnoza*/
pobyt int not null,
/*pobyt ke kteremu se pridruzi */
foreign key (pobyt) references pobyty_pacienta(id_pob),
foreign key (diagnoza) references diagnozy(id_diagn)
);



create table epikrizy(
id_ep int primary key auto_increment,
/*unikatni, automaticky generovany primarni klic*/
datum date not null,
/*datum epikrizy*/
zprava varchar (300),
/*zprava k nasvteve*/
pobyt int not null,
/*pobyt na ktery se vaze epikriza*/
foreign key (pobyt) references pobyty_pacienta(id_pob)


);