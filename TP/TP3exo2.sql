/*
-- 1
select nom 
from personnels
where (qualif='INFIRMIERE') and nom in (select nom 
					from personnels 
					where qualif='SECRETAIRE MEDICALE');

-- 2
select p.nom, p.prnm
from personnels p join patients 
	on cdprs = cdpat;

-- 3
select p.nom, p.prnm
from personnels p join patients 
	on cdprs = cdpat;

-- 4
select A.cdprs, A.prnm, A.qualif, A.cdspr, B.prnm, B.qualif 
from personnels A join personnels B on A.cdspr = B.cdprs 
where A.qualif='ASSISTANT' or A.qualif='CHEF DE CLINIQUE';

-- 5
select A.nom, A.prnm, A.sx, A.datnais, B.nom
from personnels A join services B on A.cdsrv = B.cdsrv
where A.qualif='CHEF DE SERVICE';

-- 6 */
-- 7 */
-- 8 */
select A.cdsrv, A.nom
from services A left join personnels P on A.cdsrv = P.cdsrv
where P.cdprs is null;
