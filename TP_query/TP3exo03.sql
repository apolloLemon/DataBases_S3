/*
-- 1
select sum(qte)
from commande natural join client
where nomc = 'Pierre';

-- 2
select numcom , sum(qte)
from commande
group by numcom
having sum(qte) >= (select sum(qte)
		from commande natural join client
		where nomc = 'Vincent');


-- 3
select distinct numcom
from commande
where qte >= any(select qte
		from commande natural join client
		where nomc = 'Jean')
order by numcom;

-- 4 */
select distinct nomp
from commande
where nomp not in (select nomp
			from commande natural join client
			where nomc = 'Jean'); 

-- 5 */
-- 6 */
-- 7 */
-- 8 */
