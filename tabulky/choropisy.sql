use nemocnice;
create table choropisy(
id int primary key auto_increment,
/*primarni klic*/
osobni_cislo int not null,
/*neprazdne osobni cislo*/ 
rok year not null ,
/* neprazdny rok*/ 
pacient int not  null,
foreign key (pacient) references pacienti (id_pac)
/*pacient jako cizi klic s odkazem na tabulku pacienti*/

);



 





