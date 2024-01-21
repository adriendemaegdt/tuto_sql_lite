-- EXERCICE JOINTURES 

-- 1) Les rêves de tous les utilisateurs mariés. 
SELECT * FROM reves AS r
LEFT JOIN utilisateurs AS u
ON r.id_utilisateur = u.id_utilisateur
WHERE marie = 1

-- 2) Les rêves des utilisateurs ayant pour profession: "Ingénieur"
SELECT * FROM reves 
LEFT JOIN utilisateurs
ON reves.id_utilisateur = utilisateurs.id_utilisateur
LEFT JOIN professions
ON professions.id_profession = utilisateurs.id_profession
WHERE nom_profession LIKE '%nieur'

-- 3) L'âge moyen des utilisateurs faisant des cauchemars. 
SELECT AVG(utilisateurs.age) AS moyenne_age FROM utilisateurs
LEFT JOIN reves
ON utilisateurs.id_utilisateur = reves.id_utilisateur
WHERE reves.cauchemard = 1

-- 4) Les pseudos des utilisateurs ayant rêvé cette année. 
SELECT pseudo, date FROM utilisateurs
LEFT JOIN reves
ON utilisateurs.id_utilisateur = reves.id_utilisateur
WHERE date LIKE '%2023%'
-- 5) Les professions des utilisateurs qui font des rêves lucides.
SELECT DISTINCT nom_profession FROM utilisateurs AS u 
LEFT JOIN professions 
ON u.id_profession = professions.id_profession
LEFT JOIN reves 
ON u.id_utilisateur = reves.id_utilisateur
WHERE lucide = 1

-- BONUS
-- 6) Les emotions des reves des utilisateurs faisant un métier manuel. 
-- 7) L'age moyen des utilisateurs faisant des metiers manuels. 

-- DIFFERENCE LEFT JOIN VS INNER JOIN 
SELECT * FROM professions
INNER JOIN utilisateurs
ON utilisateurs.id_profession = professions.id_profession


SELECT * FROM reves 
LEFT JOIN utilisateurs
ON reves.id_utilisateur = utilisateurs.id_utilisateur-66|
WHERE reves.cauchemard = 1

SELECT * FROM  utilisateurs
LEFT JOIN reves
ON reves.id_utilisateur = utilisateurs.id_utilisateur
WHERE reves.cauchemard = 1