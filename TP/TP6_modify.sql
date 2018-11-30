--2
insert into etudiant values 
	(1200,'ZIDANE','Zinedine','Marseille','1972-06-23','A1');
-- too old


--3
insert into etudiant values
	(1300,'MBAPPE','Kyloan','Paris','1998-12-20','A6');
-- Ceci ne marche pas car le group A6 n'existe pas

--4
insert into groupe values
	('A6','Football');

--5
insert into etudiant values
	(1300,'MBAPPE','Kylian','Paris','1998-12-20','A6');

--6
insert into passcont 
	(1118,1,15);
--Ne marche pas car il manque ET1118

--7
insert into etudiant values
	(nextval('ETi'),'POGBA','Paul','Manchester','1993-03-15','A1');

--8
insert into passcont values
	(1118,1,15);
--Maintenant l'etudiant existe

--9
update enseignant
	set numens = 101
	where nomens = 'Carter';

--10
insert into etudiant values
	(nextval('ETi'),'POGBA','Paul','Manchester','1993-04-25','A1');

--11
alter table groupe
	add column salle varchar(5);

--12
update groupe 
	set salle = 'L00'||substring(nomgroupe,2,1);

--13
create view EtudiantGroupe as (
	select numet, nomet 
	from etudiant 
	order by nomgr
);

--14
create view EtudiantNote as (
	select nomet, 
);