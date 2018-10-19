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


-- 3 */
select numcom
from commande
where qte

-- 4 */
-- 5 */
-- 6 */
-- 7 */
-- 8 */
