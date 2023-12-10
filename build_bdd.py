import sqlite3
import pandas as pd

con = sqlite3.connect("db.sqlite")
cursor = con.cursor()


# On efface les tables qu'on avait jusqu'a présent pour partir sur de bonnes bases.
cursor.executescript("DROP TABLE IF EXISTS Utilisateur")
cursor.executescript("DROP TABLE IF EXISTS mes_reves")
cursor.executescript("DROP TABLE IF EXISTS movie")

# On crée la table rêve en executant le fichier CREATE_TABLE_REVES.SQL
with open('./CREATE_TABLE_REVES.sql', 'r') as sql_file:
    create_table_reves_sql_query = sql_file.read()
cursor.executescript(create_table_reves_sql_query)

# On rempli la table reves
df = pd.read_csv('./data/bdd_reves.csv')
df.to_sql('reves', con, if_exists='append', index=False)


# db.commit()
# db.close()
