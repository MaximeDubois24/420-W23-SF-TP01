/* 
 Travail pratique 1
 Nom de la première personne
 -->  Mohamed Reda Bouabdallah
 
 Date  03-08-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 3 : Ajout de tables et de colonnes           --
-- -----------------------------------------------------

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
