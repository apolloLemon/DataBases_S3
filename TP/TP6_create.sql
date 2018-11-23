create table etudiant(
	numet numeric,
	nomet varchar,
	prenomet varchar,
	adret varchar,
	datnais date,
	nomgr char(2)
);

create table groupe(
	nomgroupe char(2),
	intitulegroupe varchar
);

create table passcont(
	numet numeric,
	numcont numeric,
	note numeric
);

create table controle(
	numcont numeric,
	nommat varchar,
	datcont date,
	coef numeric,
);

create table matiere(
	nommat varchar,
	coefmat numeric,
	numens numeric
);

create table enseignant(
	numens numeric,
	nomens varchar
);