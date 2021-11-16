create table zdrav_pojisteni (
-- Tabulka obsahující data o sjednaných zdravotních pojištění pacientů

    id_zdr_pst int primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč
    
    id_pac int not null references pacienti(id_pac),
    -- pacient, který má (měl) konkrétní zdravotní pojištění sjednáno
    -- cizí klíč

    id_zdr_pvn int not null references zdrav_pojistovny(id_zdr_pvn),
    -- zdravotní pojišťovna, která pojištění poskytuje (poskytovala)
    -- cizí klíč

    kryti decimal(8, 2) not null check(pokryti > 0),
    -- kolik je schopna pojišťovna vyplatit za zákrok apod.
    -- minimálně 0,01 Kč

    platnost_od date not null,
    -- datum, od kdy je (bylo) pojiětění platné
    -- povinný atribut

    platnost_do date null
    -- datum, do kdy bylo pojištění platné
    -- je-li pojištění stále platné, uvede se hodnota `null`
);