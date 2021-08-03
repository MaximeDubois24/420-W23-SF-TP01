/* 
 Travail pratique 1
 Maxime Dubois
 --> Mohamed Reda Bouabdallah
 
 Date  JJ-MM-AAAA                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 4 : Mise à jour des données (Clause UPDATE)  --
-- -----------------------------------------------------

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
