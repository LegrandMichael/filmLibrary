
#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

#------------------------------------------------------------
#        DataBase
#------------------------------------------------------------

DROP DATABASE IF EXISTS DB_LIBMOV;

CREATE DATABASE IF NOT EXISTS DB_LIBMOV;

USE DB_LIBMOV;


#------------------------------------------------------------
# Table: film
#------------------------------------------------------------

CREATE TABLE film(
        id           int (11) Auto_increment  NOT NULL ,
        title        Varchar (45) NOT NULL ,
        release_date Date NOT NULL ,
        id_actor     Int NOT NULL ,
        id_director  Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: actor
#------------------------------------------------------------

CREATE TABLE actor(
        id         int (11) Auto_increment  NOT NULL ,
        first_name Varchar (30) NOT NULL ,
        last_name  Varchar (30) NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table:  director
#------------------------------------------------------------

CREATE TABLE director(
        id         int (11) Auto_increment  NOT NULL ,
        first_name Varchar (30) NOT NULL ,
        last_name  Varchar (30) NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;

ALTER TABLE film ADD CONSTRAINT FK_film_id_actor FOREIGN KEY (id_actor) REFERENCES actor(id);
ALTER TABLE film ADD CONSTRAINT FK_film_id_director FOREIGN KEY (id_director) REFERENCES director(id);
