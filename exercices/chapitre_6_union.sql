
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

 

