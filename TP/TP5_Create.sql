drop table programmation;
drop table tarif;
drop table spot;
drop table campagne;
drop table societe;


create table societe(
	CodeSoc numeric, 
	Nom varchar(15) not null,
	Adresse varchar(50),
	primary key(CodeSoc)
);

create table campagne(
	CodeCamp varchar(5) primary key,
	Titre varchar,
	CodeSoc numeric references societe(CodeSoc),
	Produit varchar,
	Cible varchar(4),
	constraint NomCible
	check ((Cible='ENF') or (Cible='ADO') or (Cible='MM50') or (Cible='TOUS'))
);

create table spot(
	CodeSpot char(3),
	Libelle varchar,
	Duree numeric,
	CodeCamp varchar(5),
	primary key (CodeSpot),
	foreign key (CodeCamp) references campagne(CodeCamp)
);

create table tarif(
	Media varchar,
	Moment varchar,
	prix numeric,
	constraint Medias
	check(Media='TF1' or Media='FRANCE2' or Media='FRANCE3' or Media='CANAL+' or Media='FRANCE5' or Media='M6' or Media='ARTE'),
	constraint Moments
	check(Moment='JOUR' or Moment='DEBSOIR' or Moment='SOIR' or Moment='FINS'),
	primary key(Media, Moment)
);

create table programmation(
	CodeSpot char(3) references spot(CodeSpot),
	Media varchar, --references tarif(Media),
	Moment varchar, --references tarif(Moment),
	Datep date,
	primary key (CodeSpot,Media,Moment,Datep),
	foreign key (Media,Moment) references tarif(Media,Moment)	
);

insert into societe values
	(101,'Nescafe','523 rue des grains Paris 13'),
	(102,'CIG','5 rue du brigand Paris 15'),
	(120,'Peugeot','36 avenue de la routourne Angers');

insert into campagne values
	('NE025','Nespresso-Clooney',101,'Cafe','MM50'),
	('P208P','208-Pinocchio',120,'Voiture','TOUS'),
	('BA75','Le monde bouge',102,'Banque','MM50');

insert into spot values 
	('NS1','Rencontre au bar',135,'NE025'),
	('NS2','Soiree',115,'NE025'),
	('P12','Mobile',60,'BA75'),
	('P13','Premier emploi',75,'BA75'),
	('P14','Sejour etranger',45,'BA75');

insert into tarif values
	('TF1','SOIR',500),
	('TF1','DEBSOIR',400),
	('FRANCE2','JOUR',50),
	('FRANCE3','JOUR',50),
	('FRANCE3','DEBSOIR',200);

insert into programmation values
	('NS1','TF1','SOIR','2018-02-17'),
	('NS1','FRANCE3','JOUR','2020-02-17'),
	('NS2','TF1','DEBSOIR','2020-02-17'),
	('P12','TF1','DEBSOIR','2019-02-17'),
	('P13','TF1','DEBSOIR','2020-02-17'),
	('P13','FRANCE3','DEBSOIR','2020-02-17');