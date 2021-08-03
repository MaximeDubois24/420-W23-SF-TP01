/* 
 Travail pratique 1
 --> Maxime Dubois
Mohamed Reda Bouabdallah
 
 Date  31-07-2021
*/

DROP DATABASE IF EXISTS PosteClientDFC;
CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------	 
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE IF NOT EXISTS poste (
    id_poste INT NOT NULL,
    desc_poste VARCHAR(45),
    desc_processeur VARCHAR(45),
    nb_ram_mo VARCHAR(45),
    tail_disque_giga INT,
    id_fabricant INT,
    id_local INT,
    -- contraintes de table
    PRIMARY KEY (id_poste),
	CONSTRAINT id_fabricant FOREIGN KEY(id_fabricant) REFERENCES fabricant(id_fabricant),
    CONSTRAINT id_local FOREIGN KEY (id_local) REFERENCES local(id_local)
    )ENGINE = InnoDB;
    
CREATE TABLE IF NOT EXISTS local (
    id_local INT NOT NULL,
    nom_local VARCHAR(45) NOT NULL,
    -- contraintes de table
    PRIMARY KEY (id_local)
    )ENGINE = InnoDB;
    
CREATE TABLE IF NOT EXISTS peripherique (
    id_peripherique INT NOT NULL,
    nom_peripherique VARCHAR(45) NOT NULL,
    id_poste INT,
    id_fabricant INT,
    -- contraintes de table
    PRIMARY KEY (id_peripherique),
    CONSTRAINT id_poste FOREIGN KEY (id_poste) REFERENCES poste(id_poste)/*, 
    CONSTRAINT id_fabricant FOREIGN KEY (id_fabricant) REFERENCES fabricant(id_fabricant)*/ /*je peux pas meme nom*/
    )ENGINE = InnoDB;
    
CREATE TABLE IF NOT EXISTS fabricant (
    id_fabricant INT NOT NULL,
    nom_fabricant VARCHAR(45) NOT NULL,
    -- contraintes de table
    PRIMARY KEY (id_fabricant)
)ENGINE = InnoDB;

SET FOREIGN_KEY_CHECKS = 1;



