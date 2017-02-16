-- psql -U postgres -d postgres -a -f create_database.sql
DROP TABLE ecoracer2_users_table;
DROP TABLE ecoracer2_games_table;

CREATE TABLE ecoracer2_users_table(
   id SERIAL,
   name VARCHAR(50) UNIQUE NOT NULL,
   pass CHAR(60),
   PRIMARY KEY(id)
);
CREATE TABLE ecoracer2_games_table(
  id SERIAL,
  userid INTEGER,
  score INTEGER,
  keys TEXT,
  time TIMESTAMP WITH TIME ZONE,
  finaldrive INTEGER,
  ranking_percentage INTEGER,
  ranking_scoreboard INTEGER,
  PRIMARY KEY(id)
);	