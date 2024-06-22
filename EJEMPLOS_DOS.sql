SELECT * FROM mock_data
WHERE (gender = "Male") AND (id >= 200) 
AND (first_name = "Kenon") or university = "Universidad de San Andres";
SELECT count(university) from mock_data 
where university = "Universidad de San Andres";

SELECT * FROM mock_data
where university LIKE "%St.%";

SELECT * FROM mock_data -- where id = 1 or id = 2 or id = 3
where id not in(5,80,1, 2, 3, 4,60)

SELECT * FROM mock_data
where id not in(1, 2, 3, 4)
ORDER BY first_name, last_name-- 

/*SELECT * FROM materia_db.mock_data
where id between 10 and 18*/
/*SELECT * FROM materia_db.mock_data
where first_name LIKE "%a%"*/

SELECT * FROM materia_db.mock_data
where first_name in ("Vaclav","Ky")




=================== PARCIAL 2 ==================
========= REPASO
-- WHERE
SELECT * FROM mock_data
WHERE (gender = "Male") OR (job = "Actuary") 

-- BETWEEN
SELECT * FROM mock_data
WHERE id >= 14 AND id <= 20

SELECT * FROM mock_data
WHERE id BETWEEN 14 AND 20

-- LIKE
SELECT * FROM mock_data
WHERE email LIKE "%gov%"

public String frase = "Hola a todos";
frase.contains("todo") =  true

-- IN, NOT IN

SELECT * FROM mock_data
WHERE id = 10 OR id = 20 OR id = 30 OR id = 50

SELECT * FROM mock_data
WHERE id IN(10, 20, 30, 50)

SELECT * FROM mock_data
WHERE id NOT IN(10, 20, 30, 50)


!FALSE = TRUE
!TRUE = FALSE

<> FALSE = TRUE
<> TRUE = FALSE

NOT FALSE = TRUE
NOT TRUE = FALSE


SELECT * FROM mock_data
ORDER BY first_name, last_name


-- count
-- propiedades de agregado
SELECT COUNT(*) AS cant FROM mock_data

SELECT * FROM mock_data where gender = "Male"



SELECT * FROM mock_data where first_name = "Dirk";
SELECT first_name, COUNT(*) AS cant FROM mock_data
GROUP BY first_name








