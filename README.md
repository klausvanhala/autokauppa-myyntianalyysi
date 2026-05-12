# Autokaupan myyntianalyysi

SQL-portfolioprojekti | SQLite · DB Browser for SQLite

## Projektin kuvaus

Tässä projektissa analysoidaan kuvitteellisen autokaupan myyntidataa SQL-kyselyillä. 
Projekti on toteutettu osana data-analytiikkaosaamisen kehittämistä.

## Tietomalli

Tähtimalli (star schema) — 1 faktataulukko, 3 dimensiotaulukkoa

- `myynnit` — faktataulukko (myyntitapahtumat)
- `asiakkaat` — asiakasdata
- `autot` — autojen tiedot
- `myyjat` — myyjien tiedot

## Analyysikysymykset ja löydökset

- ✅ Mitkä automerkit myyvät parhaiten? → Toyota 4 kpl
- ✅ Ketkä myyjät tuottavat eniten? → Anna Saarinen 161 000 €
- ✅ Mistä kaupungeista asiakkaat tulevat? → Tampere 161 000 €
- ✅ Keskimääräinen myyntihinta per kategoria? → SUV 43 600 €
- ✅ Yksityis- vs yritysasiakkaat? → Yksityiset 209 000 € / 6 kpl

## Työkalut

- SQLite
- DB Browser for SQLite

## Tekijä

Klaus Vanhala — kokemusta CRM:stä, asiakaskokemuksesta ja prosessikehityksestä.  
Laajennan osaamistani data-analytiikkaan ja BI:hin.  
[LinkedIn](https://www.linkedin.com/in/klausvanhala/)
