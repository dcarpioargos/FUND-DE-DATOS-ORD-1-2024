SELECT * FROM mock_data
WHERE (gender = "Male") AND (id >= 200) 
AND (first_name = "Kenon") or university = "Universidad de San Andres";
SELECT count(university) From mock_data 
where university = "Universidad de San Andres";




SELECT * FROM mock_data
where university LIKE "%University"
