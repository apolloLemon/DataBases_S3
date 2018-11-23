create sequence ETi minvalue 1111;

create table groupe(
	nomgroupe char(5) primary key,
	intitulegroupe varchar
);

create table etudiant(
	numet numeric primary key,
	nomet char(30),
	prenomet char(30),
	adret char(50),
	datnais date,
	nomgr char references group(nomgroupe)
);

create table enseignant(
	numens numeric primary key,
	nomens char(30)
);

create table matiere(
	nommat varchar primary key,
	coefmat numeric,
	numens numeric references enseignant(numens)
);

create table controle(
	numcont numeric primary key,
	nommat varchar references matiere(nommat),
	datcont date,
	coef numeric,
);

create table passcont(
	numet numeric references etudiant(numet),
	numcont numeric references controle(numcont),
	note numeric,
	primary key (numet,numcont)
);