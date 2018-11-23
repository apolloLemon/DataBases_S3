insert into group values
	('A1','Informatique'),
	('A2','Math-Info'),
	('A3','Bio-Info'),
	('A4','Chimie'),
	('A5','Math');

insert into etudiant values
	(nextval('ETi'),'AHDJOUDJ','Yannick','Angers','2000-01-18','A1'),
	(nextval('ETi'),'AMEUR','Adil','Cholet','1999-02-17','A1'),
	(nextval('ETi'),'CALVAIRE','Isabelle','Nantes','2001-03-01','A2'),
	(nextval('ETi'),'GHULAM','William','Cholet','2001-04-27','A2'),
	(nextval('ETi'),'MIRMONT','Jean','Paris','1999-05-07','A3'),
	(nextval('ETi'),'TOTO','Sylvie','Tours','1998-06-17','A3'),
	(nextval('ETi'),'WINTERHA','Shahidah','Toulouse','2000-07-07','A3');

insert into enseignant values 
	(nextval('profi'),'Carter'),
	(nextval('profi'),'Clinton'),
	(nextval('profi'),'Bush'),
	(nextval('profi'),'Paolo'),
	(nextval('profi'),'Vissou'),
	(nextval('profi'),'Charlemagne'),
	(nextval('profi'),'Leandri');

insert into matiere values
	('Algo 2',0,1),
	('Algo 3',0,1),
	('Math1',0,1),
	('Gestion',0,1),
	('TE',0,1),
	('Math2',0,1),
	('Anglais',0,1);

insert into controle values 
	(nextval('Ci'), 'Algo 2','2018-01-15',1),
	(nextval('Ci'), 'Algo 2','2017-12-12',3),
	(nextval('Ci'), 'Algo 3','2018-02-17',2),
	(nextval('Ci'), 'Algo 3','2018-03-27',3),
	(nextval('Ci'), 'Math1','2018-01-17',1),
	(nextval('Ci'), 'Gestion','2018-02-07',2),
	(nextval('Ci'), 'TE','2018-03-27',2),
	(nextval('Ci'), 'Math2','2018-01-17',1),
	(nextval('Ci'), 'Anglais','2018-01-27',2);

insert into passcont values
	('1111',1,10),
	('1112',1,20),
	('1113',1,11.5),
	('1114',1,3),
	('1115',1,10.5),
	('1116',1,12),
	('1111',2,10.5),
	('1112',2,6.6),
	('1113',2,4.5),
	('1114',2,9),
	('1115',2,8.5),
	('1116',2,2.5),
	('1111',3,14.5),
	('1112',3,11.5),
	('1113',3,3.5),
	('1114',3,12.5),
	('1115',3,20),
	('1116',3,9.5);