create table pacienti (
-- Tabulka obsahující data o pacientech
    
    id_pac int unsigned primary key auto_increment,
    -- umělý primární klíč
    -- auto_increment funguje v MySQL

    prijm nvarchar(100) not null,
    -- příjmení pacienta
    -- minimální délka: 2 znaky
    -- maximální délka: 100 znaků

    jmeno nvarchar(100) not null,
    -- jméno, příp. jména pacienta
    -- minimální délka: 2 znaky
    -- maximální délka: 100 znaků

    rod_prijm nvarchar(100) null,
    -- příjmení pacienta
    -- nepovinné, pokud se příjmení neměnilo
    -- minimální délka: 2 znaky
    -- maximální délka: 100 znaků

    rod_cis varchar(15) not null,
    -- rodné číslo pacienta
    -- není omezeno check constraintem, protože pacient může být z jiné země, kde
    --   mají obdobný identifikátor zcela jiného formátu

    zeme_puv varchar(3) not null
    -- země původu pacienta
    -- jedná se o jednomístný až třímístný mezinárodní kód země, např.:
    --   A    Rakousko
    --   H    Maďarsko
    --   D    Spolková republika Německo
    --   CZ   Česká republika
    --   SK   Slovenská republika
    --   PL   Polsko
    --   BIH  Bosna a Hercegovina
    --   RKS  Kosovská republika
    --   SRB  Srbsko
);

alter table pacienti
add constraint pacienti_prijm_check
check(length(prijm) >= 2);

alter table pacienti
add constraint pacienti_jmeno_check
check(length(jmeno) >= 2);

alter table pacienti
add constraint pacienti_rod_prijm_check
check(length(rod_prijm) >= 2);

alter table pacienti
add constraint pacienti_zeme_puv_check
check(zeme_puv like '[A-Z]{1,3}');