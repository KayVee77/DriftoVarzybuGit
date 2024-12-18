-- Create Database
CREATE DATABASE DriftoVarzybos;
USE DriftoVarzybos;

-- 1. Lygos
CREATE TABLE Lygos (
    LygosID INT PRIMARY KEY AUTO_INCREMENT,
    Pavadinimas NVARCHAR(50),
    Aprasymas NVARCHAR(255)
);

-- 2. Organizatoriai
CREATE TABLE Organizatoriai (
    OrganizatoriausID INT PRIMARY KEY AUTO_INCREMENT,
    Pavadinimas NVARCHAR(100),
    Salis NVARCHAR(50)
);

-- 3. Sezonai
CREATE TABLE Sezonai (
    SezonoID INT PRIMARY KEY AUTO_INCREMENT,
    LygosID INT,
    Metai INT,
    FOREIGN KEY (LygosID) REFERENCES Lygos(LygosID)
);

-- 4. Varzybos
CREATE TABLE Varzybos (
    VarzybuID INT PRIMARY KEY AUTO_INCREMENT,
    SezonoID INT,
    OrganizatoriausID INT,
    Pavadinimas NVARCHAR(100),
    Data DATE,
    Vieta NVARCHAR(100),
    FOREIGN KEY (SezonoID) REFERENCES Sezonai(SezonoID),
    FOREIGN KEY (OrganizatoriausID) REFERENCES Organizatoriai(OrganizatoriausID)
);

-- 5. Vairuotojai
CREATE TABLE Vairuotojai (
    VairuotojoID INT PRIMARY KEY AUTO_INCREMENT,
    Vardas NVARCHAR(50),
    Pavarde NVARCHAR(50),
    Salis NVARCHAR(50)
);

-- 6. DalyvavimasLygose
CREATE TABLE DalyvavimasLygose (
    DalyvavimoID INT PRIMARY KEY AUTO_INCREMENT,
    VairuotojoID INT,
    LygosID INT,
    FOREIGN KEY (VairuotojoID) REFERENCES Vairuotojai(VairuotojoID),
    FOREIGN KEY (LygosID) REFERENCES Lygos(LygosID)
);

-- 7. Tvarkarastis
CREATE TABLE Tvarkarastis (
    TvarkarascioID INT PRIMARY KEY AUTO_INCREMENT,
    VarzybuID INT,
    Laikas NVARCHAR(50),
    Veiksmas NVARCHAR(100),
    FOREIGN KEY (VarzybuID) REFERENCES Varzybos(VarzybuID)
);

-- 8. Kvalifikacija
CREATE TABLE Kvalifikacija (
    KvalifikacijosID INT PRIMARY KEY AUTO_INCREMENT,
    VarzybuID INT,
    VairuotojoID INT,
    Vaziavimas1 INT,
    Vaziavimas2 INT,
    GeriausiTaskai INT,
    FOREIGN KEY (VarzybuID) REFERENCES Varzybos(VarzybuID),
    FOREIGN KEY (VairuotojoID) REFERENCES Vairuotojai(VairuotojoID)
);

-- 9. Etapai (Stages)
CREATE TABLE Etapai (
    EtapoID INT PRIMARY KEY AUTO_INCREMENT,
    Pavadinimas NVARCHAR(50),
    Aprasymas NVARCHAR(255)
);

-- 10. PoriniaiVaziavimai (Pair Races)
CREATE TABLE PoriniaiVaziavimai (
    VaziavimoID INT PRIMARY KEY AUTO_INCREMENT,
    VarzybuID INT,
    EtapoID INT,
    PoraNumeris INT,
    FOREIGN KEY (VarzybuID) REFERENCES Varzybos(VarzybuID),
    FOREIGN KEY (EtapoID) REFERENCES Etapai(EtapoID)
);

-- 11. PoriniuVaziavimuRezultatai (Pair Race Results)
CREATE TABLE PoriniuVaziavimuRezultatai (
    RezultatoID INT PRIMARY KEY AUTO_INCREMENT,
    PorosID INT,
    LaimetojasID INT,
    FOREIGN KEY (PorosID) REFERENCES PoriniaiVaziavimai(VaziavimoID),
    FOREIGN KEY (LaimetojasID) REFERENCES Vairuotojai(VairuotojoID)
   
);

-- 12. GalutiniaiRezultatai
CREATE TABLE GalutiniaiRezultatai (
    RezultatoID INT PRIMARY KEY AUTO_INCREMENT,
    VarzybuID INT,
    VairuotojoID INT,
    KvalifikacijosTaskai INT,
    PoriniuVaziavimuTaskai INT,
    BendriTaskai INT,
    Pozicija INT,
    FOREIGN KEY (VarzybuID) REFERENCES Varzybos(VarzybuID),
    FOREIGN KEY (VairuotojoID) REFERENCES Vairuotojai(VairuotojoID)
);

-- 13. MetineIskaita
CREATE TABLE MetineIskaita (
    IskaitosID INT PRIMARY KEY AUTO_INCREMENT,
    SezonoID INT,
    VairuotojoID INT,
    BendriTaskai INT,
    Pozicija INT,
    FOREIGN KEY (SezonoID) REFERENCES Sezonai(SezonoID),
    FOREIGN KEY (VairuotojoID) REFERENCES Vairuotojai(VairuotojoID)
);


INSERT INTO Lygos (Pavadinimas, Aprasymas)
VALUES ('STREET', 'Street lyga'),
       ('SEMI-PRO', 'Semi-pro lyga'),
       ('PRO', 'Pro lyga');
       
INSERT INTO Organizatoriai (Pavadinimas, Salis, EtapoID)
VALUES ('Molėtai', 'Lietuva', 19),
('Bialystok', 'Lietuva', 20),
('Kuršėnai', 'Lietuva', 21),
('Alytus', 'Lietuva', 22),
('Kačerginė', 'Lietuva', 23);
       

ALTER TABLE organizatoriai
add EtapoID INT;

ALTER TABLE organizatoriai
ADD CONSTRAINT FK_organizatoriai_Etapas
FOREIGN KEY (EtapoID) REFERENCES etapai(EtapoID);

INSERT INTO Sezonai (LygosID, Metai)
VALUES (1, 2021),
	(2, 2021),
	(3, 2021),
    (1, 2022),
    (2, 2022),
    (3, 2022),
    (1, 2023),
    (2, 2023),
    (3, 2023);

INSERT INTO Varzybos (SezonoID, OrganizatoriausID, Pavadinimas, Data, Vieta)
VALUES (5, 19, 'Lietuvos Driftas SEMI-PRO', '2022-09-17', 'Lietuva');

INSERT INTO Vairuotojai (Vardas, Pavarde, Salis)
VALUES ('Jonas', 'Jonaitis', 'Lietuva'),
       ('Petras', 'Petraitis', 'Latvija'),
       ('Antanas', 'Antanaitis', 'Estija');

INSERT INTO DalyvavimasLygose (VairuotojoID, LygosID)
VALUES (1, 1),
       (2, 1),
       (3, 2);

INSERT INTO Tvarkarastis (VarzybuID, Laikas, Veiksmas)
VALUES (1, '10:00', 'Pirmas važiavimas'),
       (2, '12:00', 'Antras važiavimas'),
       (3, '14:00', 'Trečias važiavimas');

INSERT INTO Kvalifikacija (VarzybuID, VairuotojoID, Vaziavimas1, Vaziavimas2, GeriausiTaskai)
VALUES (1, 1, 20, 25, 45),
       (1, 2, 18, 22, 40),
       (2, 3, 21, 23, 44);

INSERT INTO Etapai (Pavadinimas, Aprasymas, LygosID, Metai)
VALUES ('VI', '2022 metu 6 etapas', 2, 2022),
('V', '2022 metu 5 etapas', 2, 2022),
('IV', '2022 metu 4 etapas', 2, 2022),
('III', '2022 metu 3 etapas', 2, 2022),
('II', '2022 metu 2 etapas', 2, 2022),
       ('I', '2022 metu 1 etapas', 2, 2022);

INSERT INTO PoriniaiVaziavimai (VarzybuID, EtapoID, PoraNumeris)
VALUES (1, 1, 1),
       (1, 2, 2),
       (2, 1, 1);

INSERT INTO PoriniuVaziavimuRezultatai (PorosID, LaimetojasID)
VALUES (1, 1),
       (2, 2),
       (3, 3);

INSERT INTO GalutiniaiRezultatai (VarzybuID, VairuotojoID, KvalifikacijosTaskai, PoriniuVaziavimuTaskai, BendriTaskai, Pozicija)
VALUES (1, 1, 45, 20, 65, 1),
       (2, 2, 40, 15, 55, 2),
       (3, 3, 44, 18, 62, 3);

INSERT INTO MetineIskaita (SezonoID, VairuotojoID, BendriTaskai, Pozicija)
VALUES (1, 1, 65, 1),
       (1, 2, 55, 2),
       (2, 3, 62, 3);
       
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
FLUSH PRIVILEGES;


SELECT user, host, plugin FROM mysql.user;

-- Pridedame naują stulpelį LygosID į Etapai lentelę
ALTER TABLE Etapai
ADD LygosID INT;

-- Pridedame FOREIGN KEY apribojimą
ALTER TABLE Etapai
ADD CONSTRAINT FK_Etapas_Lyga
FOREIGN KEY (LygosID) REFERENCES Lygos(LygosID);

ALTER TABLE Etapai
ADD Metai INT;

ALTER TABLE GalutiniaiRezultatai
DROP COLUMN KvalifikacijosTaskai,
DROP COLUMN PoriniuVaziavimuTaskai;

ALTER TABLE GalutiniaiRezultatai
ADD COLUMN Etapo1Taskai INT,
ADD COLUMN Etapo2Taskai INT,
ADD COLUMN Etapo3Taskai INT,
ADD COLUMN Etapo4Taskai INT,
ADD COLUMN Etapo5Taskai INT,
ADD COLUMN Etapo6Taskai INT;









-- 1. TOP 3 lenktynininkai kiekvienoje lygoje
WITH LygosRezultatai AS (
    SELECT 
        lygos.LygosID, 
        vairuotojai.Vardas, 
        SUM(galutiniairezultatai.BendriTaskai) AS Taskai
    FROM 
        galutiniairezultatai
    JOIN vairuotojai ON galutiniairezultatai.VairuotojoID = vairuotojai.VairuotojoID
    JOIN sezonai ON galutiniairezultatai.VarzybuID = sezonai.SezonoID
    JOIN lygos ON sezonai.LygosID = lygos.LygosID
    GROUP BY 
        lygos.LygosID, vairuotojai.Vardas
)
SELECT 
    LygosID, Vardas, Taskai
FROM (
    SELECT 
        LygosID, 
        Vardas, 
        Taskai, 
        ROW_NUMBER() OVER (PARTITION BY LygosID ORDER BY Taskai DESC) AS Reitingas
    FROM LygosRezultatai
) AS Reitinguota
WHERE Reitingas <= 3;
-----------------------------------------------------------------
-- 2. Dalyvių sąrašas su jų etapų rezultatais
SELECT 
    vairuotojai.Vardas, 
    etapai.Pavadinimas AS Etapas, 
    galutiniairezultatai.BendriTaskai AS Taskai
FROM 
    galutiniairezultatai
JOIN vairuotojai ON galutiniairezultatai.VairuotojoID = vairuotojai.VairuotojoID
JOIN varzybos ON galutiniairezultatai.VarzybuID = varzybos.VarzybuID
JOIN etapai ON varzybos.VarzybuID = etapai.EtapoID
ORDER BY 
    vairuotojai.Vardas, Etapas;
-------------------------------------------------------------------

-- 3. Vairuotojai, dalyvavę daugiausiai varžybų per sezoną
SELECT 
    vairuotojai.Vardas, 
    sezonai.Metai, 
    COUNT(DISTINCT galutiniairezultatai.VarzybuID) AS VarzybuSkaicius
FROM 
    galutiniairezultatai
JOIN vairuotojai ON galutiniairezultatai.VairuotojoID = vairuotojai.VairuotojoID
JOIN sezonai ON galutiniairezultatai.VarzybuID = sezonai.SezonoID
GROUP BY 
    vairuotojai.Vardas, sezonai.Metai
ORDER BY 
    VarzybuSkaicius DESC;
    
    
-- 4. Varžybų statistika (bendras rezultatas)
SELECT 
    varzybos.Pavadinimas, 
    COUNT(galutiniairezultatai.VairuotojoID) AS DalyviuSkaicius, 
    SUM(galutiniairezultatai.BendriTaskai) AS VisoTasku
FROM 
    galutiniairezultatai
JOIN varzybos ON galutiniairezultatai.VarzybuID = varzybos.VarzybuID
GROUP BY 
    varzybos.Pavadinimas;
------------------------------------------------------------------------
-- 5. Lenktynininkų bendri rezultatai sezono metu
SELECT 
    vairuotojai.Vardas, 
    sezonai.Metai, 
    SUM(galutiniairezultatai.BendriTaskai) AS BendriTaskai
FROM 
    galutiniairezultatai
JOIN vairuotojai ON galutiniairezultatai.VairuotojoID = vairuotojai.VairuotojoID
JOIN sezonai ON galutiniairezultatai.VarzybuID = sezonai.SezonoID
GROUP BY 
    vairuotojai.Vardas, sezonai.Metai;
-------------------------------------------------------------
-- 6. Lygos, kuriose vairuotojai surinko daugiausiai taškų
SELECT 
    lygos.Pavadinimas AS Lyga, 
    SUM(metineiskaita.BendriTaskai) AS BendriTaskai
FROM 
    metineiskaita
JOIN sezonai ON metineiskaita.SezonoID = sezonai.SezonoID
JOIN lygos ON sezonai.LygosID = lygos.LygosID
GROUP BY 
    lygos.Pavadinimas
ORDER BY 
    BendriTaskai DESC;
-----------------------------------------
-- 7. Sezonai su didžiausiu bendru taškų skaičiumi

SELECT 
    sezonai.Metai, 
    SUM(metineiskaita.BendriTaskai) AS BendriTaskai
FROM 
    metineiskaita
JOIN sezonai ON metineiskaita.SezonoID = sezonai.SezonoID
GROUP BY 
    sezonai.Metai
ORDER BY 
    BendriTaskai DESC;
-- 8.  Vairuotojų geriausi rezultatai skirtinguose sezonuose
SELECT 
    vairuotojai.Vardas, 
    sezonai.Metai, 
    MAX(galutiniairezultatai.BendriTaskai) AS GeriausiTaskai
FROM 
    galutiniairezultatai
JOIN vairuotojai ON galutiniairezultatai.VairuotojoID = vairuotojai.VairuotojoID
JOIN sezonai ON galutiniairezultatai.VarzybuID = sezonai.SezonoID
GROUP BY 
    vairuotojai.Vardas, sezonai.Metai
ORDER BY 
    sezonai.Metai, GeriausiTaskai DESC;

-- 9. Varžybos, kuriose buvo daugiausiai dalyvių
SELECT 
    varzybos.Pavadinimas, 
    COUNT(galutiniairezultatai.VairuotojoID) AS DalyviuSkaicius
FROM 
    galutiniairezultatai
JOIN varzybos ON galutiniairezultatai.VarzybuID = varzybos.VarzybuID
GROUP BY 
    varzybos.Pavadinimas
ORDER BY 
    DalyviuSkaicius DESC
LIMIT 1;
---------------------------------------------------------------------------
-- 10. Virtuali lentelė: Vairuotojų rezultatų santrauka pagal lyga
WITH LygosSantrauka AS (
    SELECT 
        vairuotojai.Vardas, 
        lygos.Pavadinimas AS Lyga, 
        SUM(galutiniairezultatai.BendriTaskai) AS Taskai
    FROM 
        galutiniairezultatai
    JOIN vairuotojai ON galutiniairezultatai.VairuotojoID = vairuotojai.VairuotojoID
    JOIN sezonai ON galutiniairezultatai.VarzybuID = sezonai.SezonoID
    JOIN lygos ON sezonai.LygosID = lygos.LygosID
    GROUP BY 
        vairuotojai.Vardas, lygos.Pavadinimas
)
SELECT 
    Lyga, Vardas, Taskai
FROM LygosSantrauka
ORDER BY 
    Lyga, Taskai DESC;


