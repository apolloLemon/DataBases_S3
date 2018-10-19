 -- 1 
select * from produit;

-- 2
select nomf, villef from fournisseur;

-- 3
select nomp 
	from produit 
	where prix >= 1300;

-- 4
select nomp 
	from produit 
	where prix between 1300 and 1500;

-- 5
select nomp
	from produit
	where prix = 1300 or prix = 1500;

-- 6
select nomc , villec
	from client
	where nomc like 'J%';

-- 7
select distinct nomp
	from produit
	order by nomp;

-- 8
select *
	from client
	where (2018-AnneeNaissC>40);

-- 9
select numf
	from produit
	where prix >= 1300 and nomp='parpaing';

-- 10
select distinct nomf
	from fournisseur natural join produit
	where nomp = 'briques' or nomp = 'parpaing';

-- 11
select distinct nomc
	from client natural join commande
	where nomp = 'briques';

-- 12
select distinct nomp
	from fournisseur natural join produit
	where villef ~* 'paris';

-- 13
select distinct nomc, villec
	from client natural join commande
	where nomp = 'briques' and qte between 8 and 14;
