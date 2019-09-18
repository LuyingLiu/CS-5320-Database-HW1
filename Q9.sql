SELECT C.name
FROM country C
WHERE C.lifeexpectancy > ( SELECT AVG(TEMP.lifeexpectancy)
						   FROM ( SELECT C1.lifeexpectancy
								  FROM country C1
						   		  WHERE C1.continent = C.continent)AS TEMP
	                     )