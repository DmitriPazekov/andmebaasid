## Admnetüüpid 
1. **teksti või sümboolid** - VARCHAR(50), TEXT
Näited: nimi, nimetus, telefoniNumber, isikukood - VARCHAR(11)
2. **ARVULISED** - int, bigint, smallint, decimal(5,2) -5 kokku, 2- peale komat
Näited: vanus, palk, temperatuur, kaal, pikkus, jne
3. **Kuupäeva** -DATE, TIME, date/time
4. **Loogilised** - bit,bool,boolean

## Piirangud - ограничения
1. Primary key - ei anna võimalust lisada topelt väätused
2. UNIQUE - unikaalsus
3. NOT NULL ei lubada tühjad väärtused
4. foreign key - saab kasutada ainult teise tabeli väärtused
