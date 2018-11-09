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