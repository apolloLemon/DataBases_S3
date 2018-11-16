--2 
select * from societe;
select * from campagne;
select * from spot;
select * from tarif;
select * from programmation;

--3
alter table tarif drop constraint Medias;
alter table tarif add constraint Medias check (Media='TF1' or Media='FRANCE2' or Media='FRANCE3' or Media='CANAL+' or Media='FRANCE5' or Media='M6' or Media='ARTE' or Media='W9' or Media='NT1');
insert into tarif values 
	('W9','FINS',50),

	('NT1','FINS',80);

--4
update spot
	set libelle = 'Rencontre en soiree'
	where codespot = 'NS2';

--5
insert into societe values 
	(100,'Adidas');

--7
insert into spot values 
	('NS3','A la maison',null,
		(select codecamp 
		from campagne 
		where titre = 'Nespresso-Clooney'));

--6
insert into programmation values 
	('NS3','TF1','SOIR','2017-02-18');

--8
create table SPOT2 as (
	select libelle, duree from spot
);
-- PRE 9
drop table client;
CREATE TABLE CLIENT (NumC CHAR(6)  NOT NULL, NomC VARCHAR(20) NOT NULL, AnneeNaissC INTEGER, VilleC VARCHAR(20) NOT NULL, PRIMARY KEY (NumC)); 
INSERT INTO CLIENT VALUES 
('CLI001', 'Jean', 1975, '75006 Paris'),
('CLI002', 'Paul', 1978, '75003 Paris'),
('CLI003', 'Vincent', 1984, '94200 Evry'),
('CLI004', 'Pierre', 1970, '92400 Courbevoie'),
('CLI005', 'Daniel', 1963, '44112 Nantes');

-- 9 */
create table employe as (
	(select NumC,codesoc 
		from CLIENT,societe 
		where (NomC = 'Daniel' and nom = 'Nescafe') 
		or (VilleC like '%Paris' and nom = 'Peugeot'))
);