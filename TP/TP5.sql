drop table societe;
drop table campagne;
drop table spot;

create table societe(
	CodeSoc numeric, 
	Nom varchar(15) not null,
	Adresse varchar(50),
	primary key(CodeSoc)
);

create table campagne(
	CodeCamp varchar(5) primary key,
	Titre varchar,
	CodeSoc numeric references societe(CodeSoc) on delete cascade,
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
	foreign key (CodeCamp) references campagne(CodeCamp) on delete cascade;
);

create table tarif(
	Media varchar,
	Moment varchar,
	prix numeric,
	primary key(Media, Moment)
);

create table programmation(
	CodeSpot char(3),
	Media varchar,
	Moment varchar,
	Datep date
);