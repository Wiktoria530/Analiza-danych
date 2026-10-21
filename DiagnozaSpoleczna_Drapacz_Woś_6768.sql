CREATE VIEW v_osoby_gospodarstwa_2005 AS
SELECT 
    i.ID_GD,
    i.NUMER_OSOBY,
    i.PLEC_ALL,
    i.wiek,
    i.status9,
    g.L_OSOB,
    g.WAGA_GD,
    g.KLASA_MIEJSCOWOSCI,
    g.WOJEWODZTWO
FROM IND_2005 i
JOIN GD_2005 g
    ON i.ID_GD = g.ID_GD



CREATE VIEW v_osoby_gospodarstwa_2009 AS
SELECT 
    i.ID_GD,
    i.NUMER_OSOBY,
    i.PLEC_ALL,
    i.wiek,
    i.status9,
    g.L_OSOB,
    g.WAGA_GD,
    g.KLASA_MIEJSCOWOSCI,
    g.WOJEWODZTWO
FROM IND_2009 i
JOIN GD_2009 g
    ON i.ID_GD = g.ID_GD



CREATE VIEW v_osoby_gospodarstwa_2015 AS
SELECT 
    i.ID_GD,
    i.NUMER_OSOBY,
    i.PLEC_ALL,
    i.wiek,
    i.status9,
    g.L_OSOB,
    g.WAGA_GD,
    g.KLASA_MIEJSCOWOSCI,
    g.WOJEWODZTWO
FROM IND_2015 i
JOIN GD_2015 g
    ON i.ID_GD = g.ID_GD



CREATE VIEW v_liczba_respondentow_lata AS
SELECT '2005' AS rok, COUNT(*) AS liczba_respondentow
FROM IND_2005
UNION ALL
SELECT '2009' AS rok, COUNT(*) AS liczba_respondentow
FROM IND_2009
UNION ALL
SELECT '2015' AS rok, COUNT(*) AS liczba_respondentow
FROM IND_2015



SELECT TOP 100 * FROM v_osoby_gospodarstwa_2005
SELECT TOP 100 * FROM v_osoby_gospodarstwa_2009
SELECT TOP 100 * FROM v_osoby_gospodarstwa_2015
SELECT * FROM v_liczba_respondentow_lata


CREATE INDEX IX_IND_2005_ID_GD ON IND_2005(ID_GD)
CREATE INDEX IX_IND_2009_ID_GD ON IND_2009(ID_GD)
CREATE INDEX IX_IND_2015_ID_GD ON IND_2015(ID_GD)

