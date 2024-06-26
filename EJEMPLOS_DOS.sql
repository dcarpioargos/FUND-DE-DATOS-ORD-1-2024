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




========= EJERCICIO EN CLASES USANDO: COUNT, SUM, AVG, MAX, MIN, GROUP BY, HAVING, ORDERBY
Encuentra las categorías de libros, 
el número total de libros vendidos, 
el precio promedio, 
el precio máximo y el precio mínimo por categoría. 

Filtra para mostrar solo las categorías que han vendido más de 1 libros en total. 
Ordena los resultados por la cantidad total vendida en orden descendente.


-- Crear la tabla Libros
CREATE TABLE #Libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2),
    fecha_publicacion DATE,
    categoria VARCHAR(255)
);

-- Crear la tabla Ventas
CREATE TABLE Ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_libro INT,
    cantidad INT,
    fecha_venta DATE,
    FOREIGN KEY (id_libro) REFERENCES Libros(id_libro)
);


INSERT INTO Libros (titulo, autor, precio, fecha_publicacion, categoria) VALUES
('Cien Años de Soledad', 'Gabriel Garcia Marquez', 15.99, '1967-06-05', 'Ficción'),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 22.50, '1605-01-16', 'Ficción'),
('El Principito', 'Antoine de Saint-Exupéry', 12.99, '1943-04-06', 'Infantil'),
('La Odisea', 'Homero', 13.45, '800-01-01', 'Clásico'),
('Historia de Dos Ciudades', 'Charles Dickens', 18.00, '1859-11-01', 'Clásico'),
('El Nombre de la Rosa', 'Umberto Eco', 20.00, '1980-09-01', 'Misterio'),
('La Divina Comedia', 'Dante Alighieri', 25.50, '1320-01-01', 'Clásico'),
('Los Juegos del Hambre', 'Suzanne Collins', 17.99, '2008-09-14', 'Ciencia Ficción'),
('1984', 'George Orwell', 14.99, '1949-06-08', 'Ciencia Ficción'),
('El Alquimista', 'Paulo Coelho', 19.99, '1988-05-01', 'Aventura'),
('El Señor de los Anillos', 'J.R.R. Tolkien', 30.00, '1954-07-29', 'Fantasía'),
('Harry Potter y la Piedra Filosofal', 'J.K. Rowling', 21.99, '1997-06-26', 'Fantasía'),
('Crónica de una Muerte Anunciada', 'Gabriel Garcia Marquez', 16.50, '1981-12-02', 'Misterio'),
('El Amor en los Tiempos del Cólera', 'Gabriel Garcia Marquez', 23.00, '1985-09-05', 'Romance'),
('Drácula', 'Bram Stoker', 18.75, '1897-05-26', 'Horror'),
('Frankenstein', 'Mary Shelley', 17.50, '1818-01-01', 'Horror'),
('Orgullo y Prejuicio', 'Jane Austen', 22.00, '1813-01-28', 'Romance'),
('Matar a un Ruiseñor', 'Harper Lee', 24.50, '1960-07-11', 'Clásico'),
('El Gran Gatsby', 'F. Scott Fitzgerald', 20.00, '1925-04-10', 'Clásico'),
('Alicia en el País de las Maravillas', 'Lewis Carroll', 15.00, '1865-11-26', 'Infantil');

INSERT INTO Ventas (id_libro, cantidad, fecha_venta) VALUES
(1, 10, '2022-01-15'),
(2, 5, '2022-01-20'),
(3, 8, '2022-02-10'),
(4, 12, '2022-02-15'),
(5, 7, '2022-03-01'),
(6, 3, '2022-03-05'),
(7, 9, '2022-03-10'),
(8, 11, '2022-03-15'),
(9, 4, '2022-03-20'),
(10, 15, '2022-04-01'),
(11, 6, '2022-04-05'),
(12, 13, '2022-04-10'),
(13, 2, '2022-04-15'),
(14, 14, '2022-04-20'),
(15, 8, '2022-05-01'),
(16, 10, '2022-05-05'),
(17, 5, '2022-05-10'),
(18, 9, '2022-05-15'),
(19, 3, '2022-05-20'),
(20, 7, '2022-06-01');


SELECT * FROM libros;
SELECT * FROM ventas;

SELECT * FROM libros AS l, ventas AS v
WHERE l.id_libro = v.id_libro;
-- ejercicio respuesta
SELECT l.categoria, COUNT(l.id_libro) AS cant_libros FROM libros AS l, ventas AS v
WHERE l.id_libro = v.id_libro 
GROUP BY l.categoria;


-- joins
SELECT * FROM libros l
inner join tabla
on l.id_libro = v.id_libro
inner join tabla3 t3
on t3.id_ = l.id_libro
where