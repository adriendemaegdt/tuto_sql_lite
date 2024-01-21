-- 1) Crée la table "utilisateurs" ayant les colonnes suivantes: 
--     id_utilisateur,
--     pseudo,
--     age,
--     date_de_naissance,
--     ville,
--     type_compte ( gratuit ou payant ) ,
--     id_profession ( clé etrangère ) 

CREATE TABLE utilisateurs (
    id_utilisateur INTEGER PRIMARY KEY AUTOINCREMENT,
    pseudo CHAR(30),
    age INTEGER,
    date_de_naissance DATE,
    ville VARCHAR(40),
    type_compte CHAR(30) CHECK (type_compte IN ('gratuit', 'payant')), -- ou type_compte BOOL,
    id_profession INTEGER,
    FOREIGN KEY (id_profession) REFERENCES profession(id_profession)
);


-- 2) Inserer des données factices pour 10 utilisateurs.
INSERT INTO utilisateurs (pseudo, age, date_de_naissance, ville, type_compte, id_profession) 
VALUES
    ('Alice', 25, '1997-03-15', 'Paris', 'gratuit', 1),
    ('Bob', 30, '1992-08-22', 'New York', 'payant', 2),
    ('Charlie', 22, '2000-01-10', 'London', 'gratuit', 3),
    ('David', 35, '1987-06-05', 'Berlin', 'payant', 4),
    ('Eva', 28, '1994-12-20', 'Tokyo', 'gratuit', 5),
    ('Frank', 32, '1989-09-18', 'Sydney', 'payant', 6),
    ('Grace', 27, '1995-04-25', 'Toronto', 'gratuit', 7),
    ('Henry', 40, '1982-11-08', 'Mumbai', 'payant', 8),
    ('Ivy', 23, '1999-07-12', 'Seoul', 'gratuit', 9),
    ('Jack', 38, '1984-05-30', 'Mexico City', 'payant', 10);


-- 3) Ecrire la requete qui permet de changer le titre du premier rêve.
UPDATE utilisateurs
SET pseudo = 'NouveauPseudo'
WHERE id_utilisateur = 1;


-- 4) Selectionne les pseudos des utilisateurs ayant moins de 36 ans. 
SELECT pseudo
FROM utilisateurs
WHERE age < 36;


-- 5) Selectionne les pseudos plus long que 8 caractères.

-- 6) Selectionne l'age moyen des utilisateurs ayant un compte gratuit.

-- 7) Selectionne le nombre d'utilisateurs par ville.

-- 8) Selectionne et trie par ordre alphabétique croissant, les villes des utilisateurs ayant moins de 30 ans.

    
