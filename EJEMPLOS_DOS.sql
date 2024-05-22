SELECT * FROM mock_data
WHERE (gender = "Male") AND (id >= 200) 
AND (first_name = "Kenon") or university = "Universidad de San Andres";
SELECT count(university) From mock_data 
where university = "Universidad de San Andres";



/*SELECT * FROM mock_data
where university LIKE "%ka%";*/


SELECT * FROM mock_data
where id not in(1, 2, 3, 4)


SELECT * FROM mock_data
where id not in(1, 2, 3, 4)
ORDER BY first_name DESC


/*SELECT * FROM materia_db.mock_data
where id between 10 and 18*/
/*SELECT * FROM materia_db.mock_data
where first_name LIKE "%a%"*/

SELECT * FROM materia_db.mock_data
where first_name in (
"Vaclav","Ky")

