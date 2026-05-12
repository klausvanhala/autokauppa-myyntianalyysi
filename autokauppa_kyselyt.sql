-- ================================================
-- Autokaupan myyntianalyysi — SQL-kyselyt
-- ================================================

-- Kysymys 1: Mitkä automerkit myyvät parhaiten?
SELECT autot.merkki,
    COUNT(*) AS myyntimaara
FROM autot
JOIN myynnit ON autot.id = myynnit.auto_id
GROUP BY autot.merkki
ORDER BY myyntimaara DESC;

-- Kysymys 2: Ketkä myyjät tuottavat eniten?
SELECT myyjat.nimi,
    SUM(myynnit.myyntihinta) AS kokonaismyynti
FROM myyjat
JOIN myynnit ON myyjat.id = myynnit.myyja_id
GROUP BY myyjat.nimi
ORDER BY kokonaismyynti DESC;

-- Kysymys 3: Mistä kaupungeista asiakkaat tulevat?
SELECT asiakkaat.kaupunki,
    SUM(myynnit.myyntihinta) AS kokonaismyynti
FROM asiakkaat
JOIN myynnit ON asiakkaat.id = myynnit.asiakas_id
GROUP BY asiakkaat.kaupunki
ORDER BY kokonaismyynti DESC;

-- Kysymys 4: Keskimääräinen myyntihinta per kategoria?
SELECT autot.kategoria,
    AVG(myynnit.myyntihinta) AS keskihinta
FROM autot
JOIN myynnit ON autot.id = myynnit.auto_id
GROUP BY autot.kategoria
ORDER BY keskihinta DESC;

-- Kysymys 5: Yksityis- vs yritysasiakkaat?
SELECT asiakkaat.asiakastyyppi,
    SUM(myynnit.myyntihinta) AS kokonaismyynti,
    COUNT(*) AS tilauksia
FROM asiakkaat
JOIN myynnit ON asiakkaat.id = myynnit.asiakas_id
GROUP BY asiakkaat.asiakastyyppi
ORDER BY kokonaismyynti DESC;