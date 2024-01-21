
-- ORDER BY 

-- 1) Affichez les rêves des plus anciens aux plus nouveaux.

-- SELECT * FROM reves ORDER BY date ASC 
-- -- 2) Affichez les actions par ordre alphabétique.( Attention doublons )
-- SELECT DISTINCT action FROM reves ORDER BY action ASC
-- -- 3) Affichez les rêves lucides triés par nombre de personnages décroissant.
-- SELECT * FROM reves WHERE lucide = 1 ORDER BY nb_personnages DESC
-- -- 4) Affichez les rêves cauchemardesques triés d'abord par émotion de manière ascendante puis par date de manière descendante.
-- SELECT * FROM reves WHERE cauchemard = 1 ORDER BY emotion ASC, date DESC 




-- GROUP BY
-- Comptez le nombre de rêves pour chaque émotion.

SELECT DISTINCT emotion, COUNT(*) as nb_emotions FROM reves GROUP BY emotion ORDER BY nb_emotions  DESC


-- SELECT emotion , COUNT(*) FROM reves GROUP BY emotion ;
-- Comptez le nombre de cauchemars pour chaque pseudo_reveur





SELECT pseudo_reveur, COUNT(*) FROM reves WHERE cauchemard=1 GROUP BY pseudo_reveur ORDER BY pseudo_reveur DESC
-- Calculez la moyenne du nombre de personnages pour chaque émotion.




SELECT emotion, ROUND(AVG(nb_personnages)) AS moyenne_nb_personnage FROM reves GROUP BY emotion ORDER BY moyenne_nb_personnage DESC
-- Comptez le nombre de cauchemars pour chaque mois.


SELECT strftime('%m', date) as mois , COUNT(*) AS nb_cauchemard 
FROM reves 
WHERE cauchemard = 1 
GROUP BY mois 
-- ORDER BY mois

ALTER TABLE reves
ADD COLUMN mois INTEGER;

UPDATE reves
SET mois = strftime('%m', date);

SELECT mois, COUNT(*) FROM reves WHERE cauchemard = 1 GROUP BY mois 

-- JOIN 

-- Exercice UNION 

SELECT * FROM client
WHERE prenom = 'Flavie' AND nom = 'Da costa'
UNION
SELECT * FROM client
WHERE prenom = 'Gustave' AND nom = 'Collin'


SELECT * FROM client
LEFT JOIN commande
ON client.id_client = commande.client_id
WHERE prenom = 'Flavie' AND nom = 'Da costa'
UNION
SELECT * FROM client
LEFT JOIN commande
ON client.id_client = commande.client_id
WHERE prenom = 'Gustave' AND nom = 'Collin'


SELECT * FROM client
INNER JOIN commande
ON client.id_client = commande.client_id
WHERE prenom = 'Flavie' AND nom = 'Da costa'
UNION
SELECT * FROM client
INNER JOIN commande
ON client.id_client = commande.client_id
WHERE prenom = 'Gustave' AND nom = 'Collin'

 

