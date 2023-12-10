

--CHAPITRE 3: CONTENU: INSERT, UPDATE, DELETE/TRUNCATE --------------------------

--------------------------- CORRECTION EXERCICE --------------------------

-- 1) Insérer dans la table “mes_reves”, 3 nouveaux rêves.

INSERT INTO mes_reves (
    pseudo_reveur,
    date, 
    titre, 
    recit, 
    cauchemard,
    lucide,
    action,
    emotion
) VALUES (
    'kelly slater',
    '2023-04-22 10:34:23.55',
    'ce bon vieux reve',
    'je surfais sur la vie toute la sainte journée',
    FALSE,
    TRUE,
    'surfer', 
    'excitation'
),(
    'rene la taupe',
    '2023-10-22 10:34:23.55',
    'la terre est plate',
    'je creusais jusqu"au bout de la terre',
    FALSE,
    FALSE,
    'creuser',
    'emerveillement'
),(
    'jeannine',
    '2023-02-20 10:34:23.55',
    'l"imbuvable café',
    'j"essayais de boire un café mais la tasse ne se vidait jamais',
    TRUE,
    FALSE,
    'boire',
    'découragement'
),(
    'jean castex',
    '2021-02-20 10:34:23.55',
    'le fameux renard',
    'je courais aprés un fameux renard',
    TRUE,
    TRUE,
    'courir',
    'excitation'
);

-- 2) Changer le titre du premier rêve.
--------------------------- UPDATE --------------------------
UPDATE mes_reves
SET titre = 'rene la grosse taupe'
-- Si on ne met pas de where, ca change les valeurs de toute la colonne. 
WHERE pseudo_reveur == 'jean castex'

-- 3) Changer le boolean de la colonne lucide.
UPDATE mes_reves
SET lucide = 'FALSE'
-- Si on ne met pas de where, ca change les valeurs de toute la colonne. 
WHERE lucide == 'TRUE'

-- 4) Supprimer le rêve d’un utilisateur en fonction de son pseudo.
--------------------------- DELETE --------------------------
DELETE FROM mes_reves
-- Si on ne met pas de where ca delete tout ( revient au meme que TRUNCATE ) 
WHERE pseudo_reveur == 'kelly slater'

-- 5) Vider la table mes_reves.

DELETE FROM mes_reves







