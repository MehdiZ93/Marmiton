#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Ingrédients
#------------------------------------------------------------

CREATE TABLE Ingredients(
        id_ing  int (11) Auto_increment  NOT NULL ,
        nom_ing Varchar (50) ,
        id_mes  Int ,
        PRIMARY KEY (id_ing )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: mesure
#------------------------------------------------------------

CREATE TABLE mesure(
        id_mes  int (11) Auto_increment  NOT NULL ,
        nom_mes Varchar (50) ,
        PRIMARY KEY (id_mes )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: recette
#------------------------------------------------------------

CREATE TABLE recette(
        id_rec  int (11) Auto_increment  NOT NULL ,
        nom_rec Varchar (50) ,
        recette Varchar (1000) ,
        PRIMARY KEY (id_rec )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Contenir
#------------------------------------------------------------

CREATE TABLE Contenir(
        Quantite Int ,
        id_ing   Int NOT NULL ,
        id_rec   Int NOT NULL ,
        PRIMARY KEY (id_ing ,id_rec )
)ENGINE=InnoDB;

ALTER TABLE Ingredients ADD CONSTRAINT FK_Ingredients_id_mes FOREIGN KEY (id_mes) REFERENCES mesure(id_mes);
ALTER TABLE Contenir ADD CONSTRAINT FK_Contenir_id_ing FOREIGN KEY (id_ing) REFERENCES Ingredients(id_ing);
ALTER TABLE Contenir ADD CONSTRAINT FK_Contenir_id_rec FOREIGN KEY (id_rec) REFERENCES recette(id_rec);
