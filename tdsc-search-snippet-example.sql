SELECT `recordings`.source, `recordings`.id, taxon, startTime, 
 SQRT(
 POW(a-119,2) + 
 POW(b-229,2) +
 POW(c-153,2) +
 POW(d-72,2) +
 POW(e-10,2) +
 POW(f-235,2) +
 POW(g-301,2) +
 POW(h-138,2) +
 POW(i-62,2) +
 POW(j-6,2) +
 POW(k-150,2) +
 POW(l-129,2) +
 POW(m-46,2) +
 POW(n-25,2) +
 POW(o-8,2) +
 POW(p-65,2) +
 POW(q-58,2) +
 POW(r-31,2) +
 POW(s-18,2) +
 POW(t-5,2) +
 POW(u-6,2) +
 POW(v-16,2) +
 POW(w-5,2) +
 POW(x-3,2) +
 POW(y-0,2)
 ) 
 AS diff FROM `analysis-tdsc5x5`
 INNER JOIN `recordings` ON `analysis-tdsc5x5`.`source` = `recordings`.`source` AND `analysis-tdsc5x5`.`id` = `recordings`.`id`
   ORDER BY diff DESC LIMIT 10;
