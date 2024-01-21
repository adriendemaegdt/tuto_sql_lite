
-- Create TABLE 

CREATE TABLE professions (
    id_profession INTEGER PRIMARY KEY,
    nom_profession TEXT,
    manuel INTEGER
);
-- Table des utilisateurs
CREATE TABLE utilisateurs (
    id_utilisateur INTEGER PRIMARY KEY,
    pseudo TEXT,
    age INTEGER,
    date_de_naissance TEXT,
    marie INTEGER, -- Utiliser 0 ou 1 pour représenter faux ou vrai
    id_profession INTEGER,
    FOREIGN KEY (id_profession) REFERENCES professions(id_profession)
);

-- Table des rêves
CREATE TABLE reves (
    id_reve INTEGER PRIMARY KEY,
    id_utilisateur INTEGER,
    date DATETIME,
    heure TIME,
    titre CHAR(40),
    recit TEXT,
    emotion CHAR(30),
    action CHAR(20),
    cauchemard INTEGER,
    lucide INTEGER,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateurs(id_utilisateur)
);


-- Insertion de données dans la table des professions
INSERT INTO professions (nom_profession, manuel) VALUES
    ('Ingénieur', 0),
    ('Enseignant', 0),
    ('Médecin', 1),
    ('Artiste', 1),
    ('Informaticien', 0),
    ('Avocat', 0),
    ('Journaliste', 0),
    ('Chef', 1),
    ('Athlète', 1),
    ('Architecte', 0);

-- Insertion de données dans la table des utilisateurs
INSERT INTO utilisateurs (pseudo, age, date_de_naissance, marie, id_profession) VALUES
    ('Luna23', 25, '1999-01-01', 1, 1),
    ('Phoenix86', 30, '1994-05-15', 0, 2),
    ('Dreamer28', 28, '1996-08-22', 1, 3),
    ('StarGazer35', 35, '1991-11-10', 1, 4),
    ('ByteCoder40', 40, '1986-04-03', 0, 5),
    ('SkyWalker22', 22, '2002-07-18', 1, 1),
    ('StoryTeller33', 33, '1989-09-25', 0, 2),
    ('Gourmet29', 29, '1993-12-12', 1, 3),
    ('Explorer27', 27, '1995-02-28', 0, 4),
    ('Architect32', 32, '1990-06-08', 1, 5);

-- Insertion de données dans la table des rêves
INSERT INTO reves (id_utilisateur, date, heure, titre, recit, emotion, action, cauchemard, lucide) VALUES
    (1, '2022-01-14', '23:30', 'Voyage Onirique', "C'était une belle journée ensoleillée...", 'Joie', 'Voler', 0, 1),
    (3, '2021-01-15', '07:45', 'Forêt Enchantée', "Je me trouvais dans une forêt mystérieuse...", 'Peur', 'Courir', 1, 0),
    (3, '2023-01-16', '20:00', 'Île Paradisiaque', "J'étais sur une île déserte...", 'Émerveillement', 'Explorer', 0, 0),
    (1, '2019-01-17', '11:00', 'Triomphe Olympique',"J'ai gagné une médaille d'or aux Jeux Olympiques...", 'Fierté', 'Célébrer', 0, 1),
    (5, '2018-01-18', '21:30', 'Codage Infini', "J'ai résolu un problème informatique complexe...", 'Satisfaction', 'Coder', 0, 1),
    (6, '2020-01-19', '22:45', 'Justice Céleste', "J'ai plaidé avec succès dans un grand procès...", 'Triomphe', 'Défendre', 0, 1),
    (7, '2021-01-20', '20:45', 'Entrevue Célebrité', "J'ai interviewé une célébrité pour un article...", 'Excitation', 'Reporter', 0, 1),
    (8, '2023-01-21', '18:20', 'Festin Imaginaire', "J'ai préparé un plat délicieux et complexe...", 'Gourmandise', 'Cuisiner', 0, 1),
    (9, '2018-01-22', '23:30', 'But Gagnant Épique', "J'ai marqué le but gagnant dans une finale...", 'Euphorie', 'Marquer', 0, 1),
    (1, '2019-01-23', '05:55', 'Architecture Futuriste', "J'ai conçu un bâtiment futuriste étonnant...", 'Inspiration', 'Concevoir', 0, 1),
    (4, '2014-01-24', '21:30', 'Monde de Bonbons', "Le monde était fait de bonbons...", 'Joie', 'Manger', 0, 1),
    (5, '2015-01-25', '22:30', 'Exploration Spatiale', "J'ai exploré l'espace en tant qu'astronaute...", 'Émerveillement', 'Flotter', 0, 1),
    (7, '2016-01-26', '16:45', 'Civilisation Ancienne', "J'ai découvert une civilisation ancienne...", 'Curiosité', 'Explorer', 0, 1),
    (3, '2018-01-27', '20:30', 'Zombie Survival', "J'ai survécu à une apocalypse zombie...", 'Survie', 'Fuir', 1, 0),
    (8, '2022-01-28', '08:15', 'Vol sur Dragon', "J'ai volé sur le dos d'un dragon...", 'Excitation', 'Voler', 0, 1),
    (8, '2021-01-29', '19:30', 'Course Formule 1', "J'ai participé à une course de formule 1...", 'Adrénaline', 'Conduire', 0, 1),
    (9, '2020-01-30', '12:45', 'Planète Habitable', "J'ai découvert une planète habitable...", 'Espoir', 'Coloniser', 0, 1),
    (2, '2023-01-31', '22:30', 'Concert Épique', "J'ai joué en tête d'affiche à un concert...", 'Émotion', 'Jouer', 0, 1),
    (3, '2020-02-01', '23:55', 'Prix Nobel', "J'ai remporté un prix Nobel...", 'Réussite', 'Accepter', 0, 1),
    (1, '2008-02-02', '04:30', 'Mystère Criminel', "J'ai résolu un mystère criminel...", 'Détective', 'Découvrir', 0, 1);




