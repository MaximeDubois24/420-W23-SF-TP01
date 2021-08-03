/* 
 Travail pratique 1
 Maxime Dubois
 --> Mohamed Reda Bouabdallah
 
 Date  JJ-MM-AAAA                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------

/* 
 Travail pratique 1
 --> Mohamed Reda Bouabdallah
 Nom de la deuxième personne
 
 Date  JJ-MM-AAAA                                             
*/
DROP DATABASE IF EXISTS PosteClientDFC;
CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Étape 2 : Insertion des données                    --
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS logiciel (
id_logiciel INT UNSIGNED NOT NULL AUTO_INCREMENT,
nom_logiciel VARCHAR(45) NOT NULL,
nb_licence INT,
id_editeur INT,
PRIMARY KEY (id_logiciel),
CONSTRAINT  FOREIGN KEY (id_editeur) 
REFERENCES editeur(id_editeur)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS editeur(
id_editeur INT UNSIGNED NOT NULL AUTO_INCREMENT,
nom_editeur VARCHAR(45) NOT NULL,
PRIMARY KEY (id_editeur)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS usager (
id_usager INT UNSIGNED NOT NULL AUTO_INCREMENT,
nom_usager VARCHAR(45) NOT NULL,
prenom_usager VARCHAR(45) NOT NULL,
telephone_usager VARCHAR(15),
id_local INT,
PRIMARY KEY (id_usager),
CONSTRAINT  FOREIGN KEY (id_local) 
REFERENCES local(id_local)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS poste_has_logiciel(
id_poste INT UNSIGNED NOT NULL AUTO_INCREMENT,
id_logiciel INT NOT NULL AUTO_INCREMENT
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS usager_has_poste(
id_usager INT UNSIGNED NOT NULL AUTO_INCREMENT,
id_poste INT NOT NULL AUTO_INCREMENT
) ENGINE = InnoDB;

INSERT INTO logiciel (
id_logiciel,
nom_logiciel,
nb_licence,
id_editeur
)
VALUES
(1,'Libre Office',100,6),
(2,'Microsoft Office 2010',24,2),
(3,'ITune',100,4),
(4,'Avast',200,7),
(5,'Simple comptable',24,8),
(6,'SQL Serveur',48,2),
(7,'Client Oracle 11g (win64_11gR2_client)',48,11),
(8,'Oracle Mysql serveur',0,11),
(9,'Red Hat serveur 12',48,6),
(11,'AdobeReader X',200,1),
(12,'Windows 7',200,2),
(13,'FileZilla Client 3.5.3',0,11),
(14,'Firefox 12.0',0,11),
(15,'Flash Player 11.0',200,1),
(16,'MySQL Workbench 6 CE',0,11),
(17,'Open Office 3.3',0,11),
(18,'Visual Studio 2010',48,2),
(19,'WAMP server 2.0i',0,11),
(20,'Ubuntu 14.04',0,3),
(21,' OS X 10.9 Mavericks',24,4),
(22,'VM Ware Workstation 10',48,12);

INSERT INTO editeur(
id_editeur,
nom_editeur
)
VALUES
(1,'Adobe'),
(2,'Microsoft'),
(3,'Canonical'),
(4,'Apple'),
(5,'Symantec'),
(6,'Red Hat'),
(7,'Avast'),
(8,'Sage 50'),
(9,'Fondation Apache'),
(10,'Oracle'),
(11,'Logiciel libre'),
(12,'VM Ware');

INSERT INTO usager(
id_usager,
nom_usager,
prenom_usager,
telephone_usager,
id_local
)
VALUES
(1,'Duchesneau','Jean-Pierre','1-418-656-6600',6),
(2,'Berrier','Goerge','1-418-656-6600',6),
(3,'Roy','Claude','1-418-656-0000',6),
(4,'Parent','Alain','1-418-656-0000',6),
(5,'Laflamme','Robert','1-418-656-0000',6),
(6,'Besse','Camille','1-418-656-0000',6),
(7,'Filiatreault','Karine','1-418-656-0000',6),
(8,'Boumso','André','1-418-656-0000',6),
(9,'Awdé','Ali','1-418-656-0000',6),
(100,'Gilbert','Nathalie','1-418-656-0000',7),
(101,'Ricard','Serge','1-418-656-0000',7),
(102,'Gosselin','Sylvie','1-418-656-0000',7),
(103,'Fiset','Marc','1-418-656-0000',7),
(104,'Ducharme','Renée','1-418-656-0000',7),
(105,'Ratté','Sylvie','1-418-656-0000',7),
(106,'Massé','Odette','1-418-656-0000',7),
(1000,'Rasmussen','Hiroko','1-306-317-9668',1),
(1001,'Hall','Iliana','1-148-407-7768',1),
(1002,'Glenn','Suki','1-464-535-8426',1),
(1003,'Hernandez','David','1-252-873-1576',1),
(1004,'Forbes','Piper','1-208-468-0258',1),
(1005,'Gould','Leila','1-867-963-4130',1),
(1006,'Shannon','Leroy','1-944-144-2566',1),
(1007,'Barnett','Lee','1-121-653-3903',1),
(1008,'Reilly','Wyoming','1-254-861-3062',1),
(1009,'Saunders','Cally','1-689-766-8685',1),
(1010,'Wagner','Tanisha','1-233-877-6750',1),
(1011,'Turner','Cole','1-387-794-3559',1),
(1012,'Kirkland','Nathaniel','1-550-994-2808',1),
(1013,'Barron','Yoshio','1-537-706-3847',1),
(1014,'Craft','Nicholas','1-907-539-8109',1),
(1015,'Day','Cora','1-748-246-7140',1),
(1016,'Weber','Prescott','1-927-941-1713',1),
(1017,'Mccall','Emerald','1-995-990-2768',1),
(1018,'Pena','Kennan','1-605-164-9441',1),
(1019,'Mitchell','Maxine','1-959-422-7561',1),
(1020,'Scott','Coby','1-844-709-3266',1),
(1021,'Mclaughlin','Igor','1-883-216-8472',1),
(1022,'Martin','Risa','1-946-307-4541',1),
(1023,'Campbell','Ina','1-712-719-8563',1),
(1024,'Reilly','Eliana','1-305-208-2993',1),
(1025,'Newman','Galvin','1-233-908-4203',2),
(1026,'Hull','Nissim','1-742-990-0945',2),
(1027,'Rasmussen','Margaret','1-651-136-1290',2),
(1028,'Bray','Kerry','1-231-723-4971',2),
(1029,'Davidson','Reece','1-933-621-3588',2),
(1030,'Kemp','Roth','1-876-526-0141',2),
(1031,'Rowland','Jael','1-548-763-6332',2),
(1032,'Malone','Belle','1-181-195-3183',2),
(1033,'Hendrix','Hector','1-298-364-7331',2),
(1034,'Mendez','Susan','1-124-116-2284',2),
(1035,'Rosario','Emerson','1-149-104-5111',2),
(1036,'Leon','Serina','1-339-219-7081',2),
(1037,'Riddle','Hyatt','1-835-626-7573',2),
(1038,'Bates','Haley','1-352-129-9180',2),
(1039,'Hahn','Rhonda','1-493-727-4941',2),
(1040,'Santana','Kennan','1-732-922-2804',2),
(1041,'Wilder','Signe','1-877-214-5267',2),
(1042,'Holman','Lev','1-143-884-1358',2),
(1043,'Mcintosh','Philip','1-759-767-2459',2),
(1044,'Sykes','Kylie','1-985-247-1801',2),
(1045,'Burke','Lewis','1-231-388-9330',2),
(1046,'Kent','Kaye','1-708-982-9129',2),
(1047,'Barr','Lilah','1-578-722-0273',2),
(1048,'Bridges','Ora','1-499-197-1785',2),
(1049,'Rivera','Shelley','1-299-827-9281',2),
(1050,'May','Derek','1-948-157-0026',3),
(1051,'Sellers','Jordan','1-567-848-6853',3),
(1052,'Floyd','Henry','1-204-771-7447',3),
(1053,'Cardenas','Britanney','1-201-739-6444',3),
(1054,'Swanson','Sonia','1-698-434-4014',3),
(1055,'Kent','Guinevere','1-581-468-8203',3),
(1056,'Hubbard','Igor','1-187-963-4115',3),
(1057,'Thomas','Lacey','1-280-310-5240',3),
(1058,'Giles','Kevyn','1-598-218-8475',3),
(1059,'Glover','Amal','1-822-206-5395',3),
(1060,'Potter','Kessie','1-260-271-9633',3),
(1061,'Pace','Norman','1-516-281-2550',3),
(1062,'Hess','Andrew','1-588-970-9129',3),
(1063,'Oliver','Vaughan','1-559-852-4089',3),
(1064,'Casey','Jenna','1-813-448-2672',3),
(1065,'Harper','Ivy','1-617-899-9191',3),
(1066,'Morse','Andrew','1-989-525-3645',3),
(1067,'Hunter','Laura','1-775-655-4398',3),
(1068,'Wyatt','Ori','1-488-505-3545',3),
(1069,'Jacobson','Abel','1-836-690-4379',3),
(1070,'Delgado','Alika','1-927-969-5844',3),
(1071,'Rojas','Glenna','1-403-578-3805',3),
(1072,'Pierce','Tatyana','1-276-257-9019',3),
(1073,'Burris','Ciara','1-381-659-4484',3),
(1074,'Russell','Ryan','1-462-524-3231',3),
(1075,'Rosales','Cole','1-804-249-9655',4),
(1076,'Delaney','Brenna','1-506-133-2199',4),
(1077,'Yang','Clio','1-905-984-7452',4),
(1078,'Hampton','Helen','1-275-923-0361',4),
(1079,'Banks','Abigail','1-525-797-6781',4),
(1080,'Porter','Ila','1-826-996-0013',4),
(1081,'Grimes','Donovan','1-406-354-1625',4),
(1082,'Snyder','Ryan','1-800-226-2125',4),
(1083,'Burgess','Cora','1-557-559-0149',4),
(1084,'Copeland','Daria','1-667-363-2986',4),
(1085,'Swanson','Dexter','1-626-976-5921',4),
(1086,'Richards','Quon','1-430-811-8373',4),
(1087,'Nolan','Keith','1-396-708-0421',4),
(1088,'Blake','Bernard','1-563-908-0846',4),
(1089,'Mccray','Francis','1-202-546-5751',4),
(1090,'Stevens','Nita','1-903-615-2956',4),
(1091,'Blankenship','Kimberley','1-301-475-9453',4),
(1092,'Peters','Murphy','1-882-500-6277',4),
(1093,'Long','Lila','1-581-385-3872',4),
(1094,'Parsons','Dieter','1-582-349-3373',4),
(1095,'Stevenson','Kylee','1-525-657-1859',4),
(1096,'Hanson','Ebony','1-823-185-7050',4),
(1097,'Buck','Edward','1-616-415-2385',4),
(1098,'Bean','Griffin','1-937-746-0989',4),
(1099,'Holman','Tate','1-776-590-9971',4);

INSERT INTO poste_has_logiciel(
id_poste,
id_logiciel
)
VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,6),(8,6),(9,6),(6,12),(7,12),(8,12),(9,12),(10,12),(100,12),(101,12),(102,12),(103,12),(104,12),(105,12),(106,12),(107,12),(108,12),(109,12),(110,12),(111,12),(112,12),(113,12),(114,12),(115,12),(116,12),(117,12),(118,12),(119,12),(120,12),(121,12),(122,12),(123,12),(124,12),(125,12),(126,12),(127,12),(128,12),(129,12),(130,12),(131,12),(132,12),(133,12),(134,12),(135,12),(136,12),(137,12),(138,12),(139,12),(140,12),(141,12),(142,12),(143,12),(144,12),(145,12),(146,12),(147,12),(148,12),(149,12),(150,12),(151,12),(152,12),(153,12),(154,12),(155,12),(156,12),(157,12),(158,12),(159,12),(160,12),(161,12),(162,12),(163,12),(164,12),(165,12),(166,12),(167,12),(168,12),(169,12),(170,12),(171,12),(172,12),(10,14),(100,14),(101,14),(102,14),(103,14),(104,14),(105,14),(106,14),(107,14),(108,14),(109,14),(110,14),(111,14),(112,14),(113,14),(114,14),(115,14),(116,14),(117,14),(118,14),(119,14),(120,14),(121,14),(122,14),(123,14),(124,14),(125,14),(126,14),(127,14),(128,14),(129,14),(130,14),(131,14),(132,14),(133,14),(134,14),(135,14),(136,14),(137,14),(138,14),(139,14),(140,14),(141,14),(142,14),(143,14),(144,14),(145,14),(146,14),(147,14),(148,14),(149,14),(150,14),(151,14),(152,14),(153,14),(154,14),(155,14),(156,14),(157,14),(158,14),(159,14),(160,14),(161,14),(162,14),(163,14),(164,14),(165,14),(166,14),(167,14),(168,14),(169,14),(170,14),(171,14),(172,14),(6,18),(7,18),(8,18),(9,18),(100,18),(101,18),(102,18),(103,18),(104,18),(105,18),(106,18),(107,18),(108,18),(109,18),(110,18),(111,18),(112,18),(113,18),(114,18),(115,18),(116,18),(119,18),(120,18),(121,18),(122,18),(123,18),(124,18),(125,18),(126,18),(127,18),(128,18),(129,18),(130,18),(131,18),(132,18),(133,18),(134,18),(135,18),(136,18),(137,18),(138,18),(139,18),(140,18),(141,18),(142,18),(143,18),(144,18),(145,18),(146,18),(147,18),(148,18),(149,18),(150,18),(151,18),(152,18),(153,18),(154,18),(155,18),(156,18),(157,18),(158,18),(159,18),(160,18),(161,18),(162,18),(163,18),(164,18),(165,18),(166,18),(167,18),(168,18),(169,18),(170,18),(171,18),(172,18),(177,18),(188,18),(1,22),(2,22),(3,22),(4,22),(5,22),(6,22),(7,22),(8,22),(9,22),(10,22),(100,22),(101,22),(102,22),(103,22),(104,22),(105,22),(106,22),(107,22),(108,22),(109,22),(110,22),(111,22),(112,22),(113,22),(114,22),(115,22),(116,22),(117,22),(118,22),(119,22),(120,22),(121,22),(122,22),(123,22),(124,22),(125,22),(126,22),(127,22),(128,22),(129,22),(130,22),(131,22),(132,22),(133,22),(134,22),(135,22),(136,22),(137,22),(138,22),(139,22),(140,22),(141,22),(142,22),(143,22),(144,22),(145,22),(146,22),(147,22),(148,22),(149,22),(150,22),(151,22),(152,22),(153,22),(154,22),(155,22),(156,22),(157,22),(158,22),(159,22),(160,22),(161,22),(162,22),(163,22),(164,22),(165,22),(166,22),(167,22),(168,22),(169,22),(170,22),(171,22),(172,22);

INSERT INTO usager_has_poste(
id_usager,
id_poste
)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(100,1000),
(101,1001),
(102,1002),
(103,1003),
(104,1004),
(105,1005),
(106,1006),
(107,1007),
(108,1008),
(109,1009),
(110,1010),
(111,1011),
(112,1012),
(113,1013),
(114,1014),
(115,1015),
(116,1016),
(117,1017),
(118,1018),
(119,1019),
(173,1073),
(174,1074),
(175,1075),
(176,1076),
(177,1077),
(178,1078),
(179,1079),
(180,1080),
(181,1081),
(182,1082),
(183,1083),
(184,1084),
(185,1085),
(186,1086),
(187,1087),
(188,1088),
(189,1089),
(190,1090),
(191,1091),
(192,1092),
(193,1093),
(194,1094),
(195,1095),
(196,1096),
(197,1097),
(198,1098),
(199,1099);

CREATE TABLE IF NOT EXISTS typeusager(
id_typeusager INT UNSIGNED NOT NULL AUTO_INCREMENT,
nom_statut VARCHAR(45),
PRIMARY KEY (id_typeusager)
) ENGINE = InnoDB;

ALTER TABLE usager
ADD id_typeusager INT,
ADD CONSTRAINT id_typeusager FOREIGN KEY (id_typeusager) REFERENCES typeusager(id_typeusager);

ALTER TABLE logiciel
MODIFY nom_logiciel VARCHAR(45) UNIQUE NOT NULL;

ALTER TABLE editeur
MODIFY nom_editeur VARCHAR(45) UNIQUE NOT NULL; 

UPDATE local
SET  nb_bureau= '27', nb_prise_ethernet = '27', imprimante_id_peripherique='678'
WHERE nom_local = 'P-409';
UPDATE local
SET nb_bureau= '5', nb_prise_ethernet = '6', imprimante_id_peripherique='673'
WHERE nom_local = 'P-416';
UPDATE local
SET nb_bureau= '27', nb_prise_ethernet = '27', imprimante_id_peripherique='679'
WHERE nom_local = 'P-418';

UPDATE peripherique
SET  id_type_peripherique = '4'
WHERE nom_peripherique LIKE '%Écran%';
UPDATE peripherique
SET  id_type_peripherique = '1'
WHERE nom_peripherique LIKE '%Imprimante%';
UPDATE peripherique
SET  id_type_peripherique = '2'
WHERE nom_peripherique LIKE '%Souris%';
UPDATE peripherique
SET  id_type_peripherique = '3'
WHERE nom_peripherique LIKE '%Clavier%';


SELECT nom_local AS 'No.local', nb_bureau AS 'Nb.bureau', nb_prise_ethernet AS 'Nb.prise ethernet', imprimante_id_peripherique AS 'No.imprimante'
FROM local;
 
 
SELECT u.nom_usager AS "Nom d'usager", l.nom_local AS 'local', p.desc_poste AS 'Description du poste'
FROM usager_has_poste AS up
JOIN usager AS u ON u.id_usager = up.id_usager
JOIN local AS l ON l.id_local = u.local_id_usager
JOIN poste AS p ON p.id_poste = u.id_poste;
