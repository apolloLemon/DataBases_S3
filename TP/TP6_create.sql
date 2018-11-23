drop sequence ETi;
drop sequence Ci;
drop sequence profi;

drop table passcont;
drop table controle;
drop table matiere;
drop table enseignant;
drop table etudiant;
drop table groupe;


create sequence ETi minvalue 1111;
create sequence Ci;
create sequence profi;

create table groupe(
	nomgroupe char(5) primary key,
	intitulegroupe varchar,
	constraint grpname
	check (nomgroupe in ('A1','A2','A3','A4','A5','A6'))
);

create table etudiant(
	numet numeric primary key,
	nomet char(30),
	prenomet char(30),
	adret char(50),
	datnais date,
	nomgr char(5) references groupe(nomgroupe) on delete cascade on update cascade,
	constraint agerange
	check ((extract(year from age(datnais)) between 16 and 40))
);

create table enseignant(
	numens numeric primary key,
	nomens char(30)
);

create table matiere(
	nommat varchar(15) primary key,
	coefmat numeric,
	numens numeric references enseignant(numens) on delete cascade on update cascade,
	constraint coefrange
	check (coefmat between 1 and 8)
);

create table controle(
	numcont numeric primary key,
	nommat varchar references matiere(nommat) on delete cascade on update cascade,
	datcont date,
	coef numeric,
	constraint coefrange
	check (coef between 1 and 3)
);

create table passcont(
	numet numeric references etudiant(numet) on delete cascade on update cascade,
	numcont numeric references controle(numcont) on delete cascade on update cascade,
	note numeric,
	primary key (numet,numcont),
	constraint noterange
	check (note between 0 and 20)
);