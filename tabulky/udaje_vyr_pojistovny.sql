create table udaje_vyr_pojistovny(
-- Evidence údajů o výrobcích závislá na pojištovně

	id_ud_vyr int unsigned primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč
    
    id_pvn nvarchar(30) not null, 
    --  která pojišťovna (na které jsou data v záznamu závislé)
    
    id_vyr nvarchar(30) not null, 
    -- který výrobek
    
    kod_vyr varchar(10) not null, 
    -- kód výrobku (každá pojišťovna má svůj číselník)
    
    uhrada_za_vyr int not null
    -- úhrada (kolik je schopna pojišťovna uhradit za použití daného výrobku)
);

alter table udaje_vyr_pojistovny
add constraint udaje_vyr_poj_id_pvn_fk
foreign key (id_pvn)
references pojistovny(id_pvn);

alter table udaje_vyr_pojistovny
add constraint udaje_vyr_poj_id_vyr_fk
foreign key (id_vyr)
references vyrobky(id_vyr);