DROP TABLE IF EXISTS `analysis-tdsc5x5`;
CREATE TABLE `analysis-tdsc5x5` AS (
SELECT 
source, 
id,
duration,
startTime,
SUBSTRING_INDEX(SUBSTRING_INDEX(REPLACE(tdsc, '[', ''), ',', 1), ',', -1) AS a,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 2), ',', -1) AS b,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 3), ',', -1) AS c,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 4), ',', -1) AS d,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 5), ',', -1) AS e,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 51), ',', -1) AS f,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 52), ',', -1) AS g,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 53), ',', -1) AS h,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 54), ',', -1) AS i,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 55), ',', -1) AS j,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 101), ',', -1) AS k,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 102), ',', -1) AS l,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 103), ',', -1) AS m,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 104), ',', -1) AS n,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 105), ',', -1) AS o,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 151), ',', -1) AS p,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 152), ',', -1) AS q,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 153), ',', -1) AS r,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 154), ',', -1) AS s,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 155), ',', -1) AS t,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 201), ',', -1) AS u,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 202), ',', -1) AS v,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 203), ',', -1) AS w,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 204), ',', -1) AS x,
SUBSTRING_INDEX(SUBSTRING_INDEX(tdsc, ',', 205), ',', -1) AS y
FROM `analysis-tdsc` 
LIMIT 0, 2000000
);
