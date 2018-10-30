-- 1
select NomF, NomP, Prix
	from client natural join commande natural join produit natural join fournisseur
	where NomC = 'Jean';

-- 2
select NomF, NomP, Prix
	from client natural join commande natural join produit natural join fournisseur
	where NomC = 'Jean'
	order by NomF, NomP desc;
-- 3
select NomP
	from produit
	where prix = (select min(prix) from produit);

-- 4
select nomp, avg(prix)
	from produit
	group by nomp;

-- 5
select nomp, avg(prix)
	from produit
	group by nomp
	having avg(prix)>1000;

-- 6 
select NomP
	from produit
	where prix > (select avg(prix) from produit);

-- 7 
select NomP, avg(prix)
	from produit
	group by NomP
	having (select count (distinct numF)) >= 2;

-- 8
select NomP, Prix
	from produit natural join fournisseur natural join commande natural join client
	where villeC ~* 'paris' and villeF ~* 'angers';
