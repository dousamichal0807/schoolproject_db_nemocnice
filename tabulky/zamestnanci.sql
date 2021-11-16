create table zamestnanci (
-- Evidence všech zaměstnanců v nemocnici

    id_zam int primary key auto_increment,
    -- umělý, automaticky generovaný primární klíč

    prijm nvarchar(100) not null,
    -- Příjmení lékaře
    -- rozsah 2 až 100 znaků včetně

    jmeno nvarchar(100) not null
    -- Jméno (jména) lékaře
    -- rozsah 2 až 100 znaků včetně
);

alter table zamestnanci
add constraint zamestnanci_prijm_check
check(length(prijm) >= 2);

alter table zamestnanci
add constraint zamestnanci_jmeno_check
check(length(jmeno) >= 2);