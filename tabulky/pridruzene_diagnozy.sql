create table pridruzene_diagnozy (
    id_pridr_diag int unsigned primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč

    id_diag int unsigned not null,
    -- ID dagnózy, kterou pacient má

    id_pob_pac int unsigned not null,
    -- ke kterému pobytu se váže
);

alter table pridruzene_diagnozy
add constraint pridruzene_diagnozy_id_pob_pac
foreign key (id_pob_pac)
references pobyty_pacienta(id_pob);

alter table pridruzene_diagnozy
add constraint pridruzene_diagnozy_id_diag
foreign key (id_diag)
references diagnozy(id_diag);