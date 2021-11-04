create table UdajeVyr_pojis(
-- Evidence údajů o výrobcích závislá na pojištovně

	id_vyrPoj int unsigned primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč
    
    pojistovna nvarchar(30) not null, 
    --  která pojišťovna (na které jsou data v záznamu závislé)
    
    vyrobek nvarchar(30) not null, 
    -- který výrobek
    
    kod_vyrobek int not null, 
    -- kód výrobku (každá pojišťovna má svůj číselník)
    
    uhrada int not null
    -- úhrada (kolik je schopna pojišťovna uhradit za použití daného výrobku)

);