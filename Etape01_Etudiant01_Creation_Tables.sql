/* 
 Travail pratique 1
 --> Maxime Dubois
 Nom de la deuxième personne
 
 Date  31-07-2021
*/

DROP DATABASE IF EXISTS PosteClientDFC;
CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------

CREATE TABLE poste (
    id_poste INT NOT NULL PRIMARY KEY,
    desc_poste VARCHAR(45),
    desc_processeur VARCHAR(45),
    nb_ram_mo VARCHAR(45),
    tail_disque_giga INT,
    id_fabricant INT,
    id_local INT
    )ENGINE = InnoDB;
DESCRIBE poste;
CREATE TABLE local (
    id_local INT NOT NULL PRIMARY KEY,
    nom_local VARCHAR(45) NOT NULL
    )ENGINE = InnoDB;
DESCRIBE local;
CREATE TABLE peripherique (
    id_peripherique INT NOT NULL PRIMARY KEY,
    nom_peripherique VARCHAR(45) NOT NULL,
    id_poste INT,
    id_fabricant INT
    )ENGINE = InnoDB;
DESCRIBE peripherique;
CREATE TABLE fabricant (
    id_fabricant INT NOT NULL PRIMARY KEY,
    nom_fabricant VARCHAR(45) NOT NULL
    )ENGINE = InnoDB;
DESCRIBE fabricant;

ALTER TABLE poste
ADD CONSTRAINT id_fabricant FOREIGN KEY (id_fabricant) REFERENCES fabricant(id_fabricant),
ADD CONSTRAINT id_local FOREIGN KEY (id_local) REFERENCES local(id_local);

ALTER TABLE peripherique
ADD CONSTRAINT id_poste FOREIGN KEY (id_poste) REFERENCES poste(id_poste);
