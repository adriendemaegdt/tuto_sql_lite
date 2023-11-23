-- SQLite

--CHAPITRE 3: TABLE: CREATE, ALTER , DROP --------------------------



CREATE TABLE mes_reves (

-- On definit les colonnes et leur type
    id_reve INTEGER PRIMARY KEY AUTOINCREMENT,
    pseudo_reveur CHAR(20),
    date DATETIME,
    titre CHAR(40) UNIQUE, 
    recit TEXT NOT NULL,
    cauchemard BOOLEAN,
    lucide BOOLEAN,
    action CHAR(20),
    emotion CHAR(20)

)
---------------------------- CREATE ALL BDD ----------------------------
CREATE TABLE mes_reves (

-- On definit les colonnes et leur type
    id_reve INTEGER PRIMARY KEY AUTOINCREMENT,
    id_utilisateur INTEGER UNIQUE,
    date DATETIME,
    titre CHAR(40) UNIQUE, 
    recit TEXT NOT NULL,
    cauchemard BOOLEAN,
    lucide BOOLEAN,
    id_action INTEGER,
    -- On définit les clés étrangères
    FOREIGN KEY(id_utilisateur) REFERENCES utilisateurs(id_utilisateur)
    FOREIGN KEY(id_action) REFERENCES actions(id_action)
)

CREATE TABLE utilisateurs (
    id_utilisateur INTEGER PRIMARY KEY AUTOINCREMENT,
    pseudo CHAR(30),
    age INTEGER,
    date_de_naissance DATE
)

CREATE TABLE emotions (
    id_emotion INTEGER PRIMARY KEY AUTOINCREMENT,
    emotion CHAR(20),
    positif BOOLEAN
)

CREATE TABLE actions(
    id_action INTEGER PRIMARY KEY AUTOINCREMENT,
    action CHAR(20),
    description VARCHAR(40),
    type CHAR(20)
)

-- / TABLE DE JOINTURE/liaison
CREATE TABLE reve_emotions(
    id_reve INTEGER,
    id_emotion INTEGER,
   PRIMARY KEY (id_emotion, id_reve),
   FOREIGN KEY (id_emotion) 
      REFERENCES emotions (id_emotion),
        --  ON DELETE CASCADE 
        --  ON UPDATE NO ACTION,
   FOREIGN KEY (id_reve) 
      REFERENCES reves (id_reve) 
        --  ON DELETE CASCADE 
        --  ON UPDATE NO ACTION
);
---------------------------- ALTER --------------------------
-- // Rajoute une colonne à la table existante
ALTER TABLE mes_reves 
ADD emotion VARCHAR(20);
-- // Efface une colonne d'une table existante
-- ATTENTION IF DROP syntax, faire manip sqllite3
ALTER TABLE mes_reves
DROP COLUMN emotion;

-- // Renomme une colonne d'une table existante
ALTER TABLE mes_reves
RENAME COLUMN emotion TO emotions ;

-- // modifie le type d'une colonne d'une table existante
-- ATTENTION IF DROP syntax, faire manip sqllite3
ALTER TABLE mes_reves
ALTER COLUMN emotions TEXT ;

--------------------------- DROP --------------------------
DROP TABLE IF EXISTS mes_reves;
DROP TABLE IF EXISTS actions;
DROP TABLE IF EXISTS emotions;
DROP TABLE IF EXISTS mes_reves;
DROP TABLE IF EXISTS reve_emotions;
DROP TABLE IF EXISTS utilisateurs;


-------------------------- BONUS ---------------------------
-- AFFICHER LENSEMBLE DES COLONNES ET LEUR TYPE 
PRAGMA table_info(mes_reves);









