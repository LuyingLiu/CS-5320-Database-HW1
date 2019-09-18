SELECT C.name
FROM country C
WHERE NOT EXISTS ( SELECT TEMP."language"
				   FROM ( SELECT L1."language"
						  FROM countrylanguage L1
				   		  GROUP BY "language") AS TEMP
				   EXCEPT ( SELECT L."language"
						    FROM countrylanguage L
						    WHERE L.countrycode = C.code
				   		  )
				 )