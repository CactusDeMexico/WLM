/*
#Test INSERTION 
INSERT INTO personne (Nom,Prenom,Mdp,Photo) VALUES ( 'Jean','Lario','123','chat.jpg');
 SET @idpersonne := (SELECT LAST_INSERT_ID() ); 
INSERT INTO eleve(Classe,IdPersonne)
 VALUES ( 'CP',@idpersonne); 
#Insertion Professeur il faut ajouter une matiere avant
INSERT INTO matiere(Nom) VALUES('Fraçais');

INSERT INTO personne (Nom,Prenom,Mdp,Photo) VALUES ( 'Lucie','Lant','123','chat.jpg');
 SET @idpersonne := (SELECT LAST_INSERT_ID() ); 
INSERT INTO Professeur(IdPersonne,IdMatiere_Pratiquer)
 VALUES ( @idpersonne,'1'); 
 #*/
 #Insertion final

 INSERT INTO personne (Nom,Prenom,Mdp,Photo) VALUES ( 'Jean','Lario','123','chat.jpg');
 SET @idpersonne := (SELECT LAST_INSERT_ID() ); 
INSERT INTO eleve(Classe,IdPersonne)
 VALUES ( 'CP',@idpersonne); 
######
INSERT INTO personne (Nom,Prenom,Mdp,Photo) VALUES ( 'Louis','Lasalle','123','chat.jpg');
 SET @idpersonne := (SELECT LAST_INSERT_ID() ); 
INSERT INTO eleve(Classe,IdPersonne)
 VALUES ( 'CE',@idpersonne); 

######
INSERT INTO personne (Nom,Prenom,Mdp,Photo) VALUES ( 'Marc','Legre','123','chat.jpg');
 SET @idpersonne := (SELECT LAST_INSERT_ID() ); 
INSERT INTO eleve(Classe,IdPersonne)
 VALUES ( 'CP',@idpersonne); 
 #####
 INSERT INTO matiere(Nom) VALUES('Fraçais');
 INSERT INTO personne (Nom,Prenom,Mdp,Photo) VALUES ( 'Lucie','Lant','123','chat.jpg');
 SET @idpersonne := (SELECT LAST_INSERT_ID() ); 
INSERT INTO Professeur(IdPersonne,IdMatiere_Pratiquer)
 VALUES ( @idpersonne,'1'); 

# Vue complete des élève
 CREATE VIEW EleveInfo
AS SELECT personne.IdPersonne, personne.Nom, personne.Mdp, personne.Photo, eleve.Classe
FROM personne,eleve where personne.IdPersonne=eleve.IdPersonne;
  
# Vue complete des Professeur
 CREATE VIEW ProfesseurInfo
AS SELECT personne.IdPersonne, personne.Nom, personne.Mdp, personne.Photo, Matiere.nom Matiere
FROM personne,Professeur,Matiere where personne.IdPersonne=Professeur.IdPersonne ;

