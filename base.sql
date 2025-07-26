CREATE DATABASE FEO_VO_PEO;

\c FEO_VO_PEO

CREATE TABLE User(
    id serial primary key,
    login varchar(50),
    mdp varchar(50)
);
CREATE TABLE Chanson(
    id serial primary key,
    filename varchar(100),
    parole text,
    titre varchar(100),
    auteur varchar(100)
);
CREATE TABLE Performance(
    id serial primary key,
    date_heure timestamp,
    pourcentage decimal,
    id_user int references User(id),
    id_chanson int references Chanson(id)
);
CREATE TABLE Transaction(
    id serial primary key,
    montant decimal,
    date_heure timestamp,
    id_user int references User(id)
);