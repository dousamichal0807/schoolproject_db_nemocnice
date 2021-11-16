create table epikrizy (
-- Epikrízy jsou lékařské zprávy o stavu hospitalizovaného pacienta. Každý
-- hospitalizovaný pacient musí    

    id_ep int primary key auto_increment,
	-- umělý, automaticky generovaný primární klíč
    
    dat_cas_zapisu date not null,
    -- datum a čas zápisu zprávy

    zprava ntext not null,
    -- text zprávy
);