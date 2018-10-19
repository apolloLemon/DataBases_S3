-- 1
\d conges
\d consultations
\d patients
\d personnels
\d services

-- 2
select * from conges;
select * from consultations;
select * from patients;
select * from personnels;
select * from services;

-- 3
select nom,localis,batim
	from services;

-- 4
select distinct qualif
	from personnels P join services S
	on P.cdsrv = S.cdsrv;

-- 5
select nom,prnm,datnais
	from personnels
	where qualif = 'CHEF DE SERVICE';

-- 6
select nom,prnm,sx,qualif
	from personnels
	where vactn = 0 or vactn=NULL;


-- 7
select distinct qualif
	from personnels
	where vactn = 0 or NULL;

-- 8
select nom,prnm,sx,qualif,trtmnt
	from personnels
	where trtmnt between 25000 and 35000;

-- 9
select nom,prnm,sx,qualif,trtmnt*6.56
	from personnels
	where trtmnt between 25000 and 35000;

-- 10 
select nom,prnm,datnais,sx,qualif
	from personnels
	where qualif='ASSISTANT' or qualif='CHEF DE SERVICE';

-- 11
select nom,prnm,sx,qualif
	from personnels
	where nom like 'BOU%';

-- 12
select nom,prnm,sx,qualif
	from personnels
	where nom like '_AR%';

-- 13 
select nom,prnm,datnais,sx,qualif
	from personnels
	where (qualif = 'INTERNE' or qualif =  'DOCTEUR') and sx = '2';

-- 14 
select nom,prnm,datnais,sx,qualif
	from personnels
	where qualif = 'INTERNE' or (qualif =  'DOCTEUR' and sx = '2');

-- 15
select nom,prnm,dattit,sx,qualif
	from personnels
	where dattit > '1990-01-01';

-- 16
select nom,prnm,datnais,sx,qualif,trtmnt
	from personnels
	where qualif = 'CHEF DE SERVICE' or qualif = 'ASSISTANT'
	order by trtmnt;

-- 17
select nom,prnm,datnais,sx,qualif,trtmnt
	from personnels
	where qualif = 'CHEF DE SERVICE' or qualif = 'ASSISTANT'
	order by datnais;

-- 18
select nom,prnm,datnais,sx,qualif,trtmnt
	from personnels
	where qualif = 'CHEF DE SERVICE' or qualif = 'ASSISTANT'	
	order by qualif, trtmnt desc;





