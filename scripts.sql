
-- INSERTAR DATOS A LA TABLA USERS
insert into users(name, email, "password", age) 
values (
	'Osmar Medina',
	'osmar.medina@gmail.com',
	'osmar123',
	33
),
(
	'Yesbany Ramirez',
	'yesbany.ramirez@gmail.com',
	'yesbany123',
	29
);

-- INSERTAR DATOS A LA TABLA CATEGORIES
insert into categories ("name") values('Front End'), ('Back End');

--INSERTAR DATOS A LA TABLA TEACHERS
insert into teachers ("name", email, address, age)
values(
	'Sahid Kick',
	'sahid.kick@academlo.com',
	'México',
	23
),
(
	'Jesús Fernández',
	'jesus.fernandez@academlo.com',
	'México',
	28
);

-- INSERTAR DATOS A LA TABLA VIDEO
insert into videos (title, url)
values (
	'Encontrar un elemento usando Find - Métodos para arreglos en Javascript',
	'https://www.youtube.com/watch?v=RjPIpZw7G1I&t=137s'
),
(
	'Entendiendo cómo funciona el método map - Métodos para arreglos en Javascript',
	'https://www.youtube.com/watch?v=-NHlEjRWaA0'
);

-- INSERTAR DATOS A LA TABLA CUOURSES
insert into courses (title, description, "level", teacher_id, category_id, video_id)
values (
	'Fundamentos de Programación',
	'Aprendizaje básico de programación usando tecnologías como html, css, javaScript vanilla',
	'principiantes',
	2,
	1,
	2
),
(
	'Node JS',
	'Aprendizaje avanzado de programación backend usando tecnologías como postgreSQL, node JS, express',
	'avanzado',
	1,
	2,
	1
);

-- INSERTAR DATOS A LA TABLA USER_COURSE
insert into user_course (user_id, course_id) values(1,	1), (2, 2);
insert into user_course (user_id, course_id) values(1, 2);

-- MOSTRANDO DATOS
select c.title, c."level", u."name", u.age from courses c join user_course uc on c.id = uc.course_id join users u on uc.user_id = u.id
	where u.age::integer = 33; 

select c.title, c."level", u."name", u.age from courses c join user_course uc on c.id = uc.course_id join users u on uc.user_id = u.id
	where c.title = 'Node JS';

select * from users;
select * from categories;
select * from teachers;
select * from videos;
select * from courses;
select * from user_course;
