-- DB Verification
SHOW DATABASES;

-- DB creation
CREATE DATABASE LearningPlatform;

-- Use of the current DB
USE LearningPlatform;

-- Verification of tables in the DB
SHOW TABLES;

-- Creation of the user table
CREATE TABLE users (
	id_user INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	is_administrator TINYINT(1) DEFAULT 0,
	registration_date DATETIME DEFAULT CURRENT_TIMESTAMP,
	email VARCHAR(45) UNIQUE NOT NULL,
	password VARCHAR(45) NOT NULL,
	avatar VARCHAR(255)
);

-- Insert test data into users
INSERT INTO users (first_name, last_name, is_administrator, registration_date, email, password, avatar)
	VALUES
	("Juan", "Morales Hernández", 1, "2022-08-20 07:25:41", "administrador99@correo.com",
	"admin2527140", "https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg?w=826&t=st=1700959317~exp=1700959917~hmac=2611e21dddab6ee5d612b4a62bfc5108b1526c3f58be3878462ac143def5c149"),
	("Eduardo", "García Hernández", 0, "2022-09-18 08:24:12", "usuario22@correo.com",
	"usuario000241414", "https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg?w=826&t=st=1700959317~exp=1700959917~hmac=2611e21dddab6ee5d612b4a62bfc5108b1526c3f58be3878462ac143def5c149"),
	("Juliana", "Torres Sánchez", 0, "2022-10-20 09:25:41", "usuario966@correo.com",
	"usuario254780", "https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg?w=826&t=st=1700959317~exp=1700959917~hmac=2611e21dddab6ee5d612b4a62bfc5108b1526c3f58be3878462ac143def5c149"),
	("Ana", "Martínez López", 0, "2022-11-18 10:25:41", "usuario741@correo.com",
	"usuario014520", "https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg?w=826&t=st=1700959317~exp=1700959917~hmac=2611e21dddab6ee5d612b4a62bfc5108b1526c3f58be3878462ac143def5c149"),
	("Jorge", "González Gómez", 0, "2022-12-10 11:25:41", "usuario99@correo.com",
	"usuario2527140", "https://img.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg?w=826&t=st=1700959317~exp=1700959917~hmac=2611e21dddab6ee5d612b4a62bfc5108b1526c3f58be3878462ac143def5c149");
	
-- Verifying test data in users
SELECT *
FROM users;

-- Creation of the instructors table
CREATE TABLE instructors (
	id_instructor INT AUTO_INCREMENT PRIMARY KEY,
	instructor_name VARCHAR(55) NOT NULL,
	specialty VARCHAR(55) NOT NULL,
	experience VARCHAR(255) NOT NULL
);

-- Insert test data into instructors
INSERT INTO instructors (instructor_name, specialty, experience) 
	VALUES
	("Luisa García Hernández", "Programación en Python", "5 años de enseñanza en universidad. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Jorge Pérez Rodríguez", "Diseño Gráfico Advanced", "10 años de enseñanza en escuela preparatoria. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("María Fernández López", "Marketing Digital ", "3 años de enseñanza en universidad. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Juan Carlos Torres", "Fotografía Creativa", "7 años de enseñanza en escuela preparatoria. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Sofía González Martínez", "Finanzas Personales", "2 años de enseñanza en escuela preparatoria. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Ricardo Hernández García", "Cocina Internacional", "4 años de enseñanza en escuela preparatoria. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Ana Torres Sánchez", "Desarrollo Web", "6 años de enseñanza en universidad. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Carlos Hernández Flores", "Inteligencia Artificial", "1 año de enseñanza en universidad. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.");

-- Verification of test data on instructors
SELECT *
FROM instructors;

-- Creation of the courses table
CREATE TABLE courses (
	id_course INT AUTO_INCREMENT PRIMARY KEY,
	course_title VARCHAR(200) NOT NULL,
	description VARCHAR(255) NOT NULL,
	cover_URL VARCHAR(255) NOT NULL,
	duration VARCHAR(200) NOT NULL,
	level ENUM ("Beginner", "Intermediate", "Advanced") NOT NULL,
	publication_date DATETIME DEFAULT CURRENT_TIMESTAMP,
	enrolled_students INT DEFAULT 0,
	ratings DECIMAL(2,2) UNSIGNED DEFAULT 0.0,
	id_instructor INT,
	FOREIGN KEY (id_instructor) REFERENCES instructors(id_instructor)
);

-- Insert test data into courses
INSERT INTO courses (course_title, description, cover_URL, duration, level, 
	publication_date, id_instructor)
	VALUES
	("Python Advanced: Desarrollo y Optimización", "Sumérgete en el mundo avanzado de Python, desde técnicas de desarrollo hasta estrategias de optimización para aplicaciones robustas.",
	"https://img.freepik.com/free-photo/person-working-html-computer_23-2150040424.jpg?w=1380&t=st=1702261474~exp=1702262074~hmac=b0188b8d253c46c1eeeaa45e984129f6e0942b07912ea5ea35289b5a6b061f4b",
	"8 semanas", "Advanced", "2023-09-12 08:30:00", 1),
	("Diseño Gráfico Advanced: Creación y Branding", "Explora técnicas avanzadas de diseño gráfico, abordando desde la creación artística hasta el branding y la identidad visual corporativa.",
	"https://img.freepik.com/free-photo/man-drawing-tablet-side-view_23-2150040127.jpg?w=740&t=st=1702262193~exp=1702262793~hmac=e0cc0970a17d470384ebfea10df10b527add6ba0304013c314e7694ed114661f",
	"8 semanas", "Advanced", "2023-11-05 15:45:00", 2),
	("Marketing Digital: Estrategias y Analíticas", "Domina estrategias de marketing digital y analiza resultados para optimizar campañas en entornos digitales.",
	"https://img.freepik.com/free-photo/corporate-management-strategy-solution-branding-concept_53876-167088.jpg?w=1380&t=st=1702262372~exp=1702262972~hmac=3b5f42fd7e30e384f2492d0bfb5e34aa1e9fa521a69e08efd99cbe366e061226",
	"7 semanas", "Intermediate", "2023-02-18 10:00:00", 3),
	("Fotografía Creativa - Explorando la Estética Visual", "Este curso explora la creatividad en la fotografía a través de la composición, el manejo de la luz y la experimentación visual. Aprenderás a desarrollar un ojo artístico para capturar momentos únicos y expresivos.",
	"https://img.freepik.com/free-photo/professional-camera-blurred_169016-10249.jpg?w=1380&t=st=1702262650~exp=1702263250~hmac=726e6cd5613e1021b7441988528fe152e6831062def283c4ea8e55bf8592d9d7",
	"4 semanas", "Beginner", "2023-05-29 14:20:00", 4),
	("Gestión Inteligente de Finanzas Personales", "Este curso proporciona herramientas prácticas para gestionar y optimizar las finanzas personales. Desde presupuestos hasta inversiones, aprenderás estrategias para tomar decisiones financieras sólidas y sostenibles en tu vida diaria.",
	"https://img.freepik.com/free-photo/front-view-arrangement-economy-elements_23-2148793796.jpg?w=1380&t=st=1702262896~exp=1702263496~hmac=70ed73683cd7a41560ba3e474f2eaf55e71b32863ead613ab5d0667d3ced600f",
	"5 semanas", "Beginner", "2023-12-28 11:50:00", 5),
	("Experiencia Gastronómica: Cocina Internacional", "Explora las diversas cocinas del mundo y aprende las técnicas culinarias de diferentes culturas. Desde platos clásicos hasta innovadoras fusiones, este curso te sumerge en un viaje culinario para descubrir sabores únicos y técnicas auténticas.",
	"https://img.freepik.com/free-photo/view-chef-working-kitchen_23-2149728014.jpg?w=1380&t=st=1702263127~exp=1702263727~hmac=314e678fdff520d90911935dd231fff3a0fbb28c96363959e83ddf302a0b4b2b",
	"10 semanas", "Intermediate", "2023-08-09 09:55:00", 6),
	("Desarrollo Web Advanced: Frameworks y Estructuras", "Domina frameworks y estructuras avanzadas para desarrollo web, aprende a crear aplicaciones complejas y escalables.",
	"https://img.freepik.com/free-photo/html-css-collage-concept-with-person_23-2150062008.jpg?w=1380&t=st=1702263239~exp=1702263839~hmac=a8313f07ef7341c429cd7a1417628fe1cdb9cd0610f517a222a0bb1ba7bd3b6c",
	"12 semanas", "Advanced", "2023-01-06 13:25:00", 7),
	("Dominando la Inteligencia Artificial", "Adéntrate en el fascinante mundo de la inteligencia artificial. Desde algoritmos básicos hasta aprendizaje profundo, este curso te ofrece una comprensión completa de los conceptos fundamentales y las aplicaciones prácticas de la IA en diversos campos",
	"https://img.freepik.com/free-vector/sphere-grid-wave-with-binary-code-ai-artificial-intelligence-logo-hand-machine-learning-concept_127544-855.jpg?w=1380&t=st=1702263446~exp=1702264046~hmac=ec5660204c49a61c8bb5089a74e6811ac5820464b47c9ca5d723f495a93c3906",
	"12 semanas", "Advanced", "2023-04-22 16:00:00", 8);

-- Verifying test data in courses
SELECT *
FROM courses;

-- Creating the lessons table
CREATE TABLE lessons (
	id_lesson INT AUTO_INCREMENT PRIMARY KEY,
	number INT,
	lesson_title VARCHAR(200) NOT NULL,
	lesson_content VARCHAR(255),
	id_course INT,
	FOREIGN KEY (id_course) REFERENCES courses(id_course)
);

-- Insert test data into lessons
INSERT INTO lessons (number, lesson_title, lesson_content, id_course)
	VALUES
	(1, "Introducción a Python", "Conceptos básicos de Python, variables, tipos de datos, 
	operadores, estructuras de control", 1),
	(2, "Estructuras de Datos en Python", "Listas, tuplas, diccionarios y conjuntos en Python, 
	métodos, manipulación y operaciones con estructuras de datos", 1),
	(3, "Funciones y Módulos", "Creación y uso de funciones, parámetros, argumentos, retorno 
	de valores, importación de módulos", 1),
	(4, "Programación Orientada a Objetos en Python", "Conceptos fundamentales de POO, 
	clases, herencia, polimorfismo, encapsulamiento", 1),
	(5, "Manejo de Excepciones", "Manejo de errores y excepciones, Try-Except, Finally,
	excepciones personalizadas", 1),
	(6, "Manipulación de Archivos", "Lectura, escritura y manipulación de archivos en Python, 
	operaciones con archivos, lectura y escritura de datos", 1),
	(7, "Módulos Advanceds y Librerías", "Uso avanzado de módulos y librerías, uso de 
	librerías populares como NumPy, Pandas, Matplotlib", 1),
	(8, "Desarrollo de Proyectos en Python", "Aplicaciones prácticas y proyectos, desarrollo 
	de proyectos, mejores prácticas, recomendaciones de estudio adicional", 1),
	(1, "Fundamentos del Diseño Gráfico", "Principios básicos del diseño, composición, 
	tipografía, teoría del color", 2),
	(2, "Herramientas y Software", "Uso avanzado de herramientas de diseño, Adobe Photoshop, 
	Illustrator, InDesign, técnicas avanzadas", 2),
	(3, "Diseño de Identidad Corporativa", "Creación de logotipos y branding, identidad 
	visual, aplicaciones corporativas, manual de identidad", 2),
	(4, "Diseño Editorial y Tipografía", "Maquetación, composición y selección tipográfica,
	diseño de revistas, libros, selección y uso de fuentes tipográficas", 2),
	(5, "Ilustración y Diseño Vectorial", "Uso avanzado de ilustraciones vectoriales, 
	vectores, ilustraciones complejas, técnicas de dibujo", 2),
	(6, "Diseño de Experiencia de Usuario (UX)", "Conceptos y principios de UX/UI, diseño 
	centrado en el usuario, wireframes, prototipado", 2),
	(7, "Animación y Motion Graphics", "Creación de animaciones y gráficos en movimiento, 
	After Effects, animaciones, efectos especiales", 2),
	(8, "Diseño Interactivo y Multimedia", "Diseño interactivo para web y dispositivos, 
	diseño web responsivo, interfaces de usuario, multimedia", 2),
	(1, "Introducción al Marketing Digital", "Fundamentos y conceptos básicos, historia 
	del marketing digital, conceptos clave, panorama actual", 3),
	(2, "Estrategias de Marketing en Redes Sociales", "Uso efectivo de plataformas sociales,
	publicidad en redes sociales, análisis de audiencia, contenido viral", 3),
	(3, "SEO (Optimización de Motores de Búsqueda)", "Mejora de visibilidad en buscadores,
	palabras clave, etiquetas meta, estrategias de enlace", 3),
	(4, "Publicidad en Línea (SEM)", "Estrategias de publicidad pagada, Google Ads,
	Bing Ads, optimización de campañas", 3),
	(5, "Marketing de Contenidos", "Creación y distribución de contenido, blogging, 
	email marketing, estrategias de contenido", 3),
	(6, "Analítica y Métricas en Marketing Digital", "Uso de herramientas de análisis, 
	Google Analytics, métricas clave, informes de rendimiento", 3),
	(7, "Estrategias de Email Marketing", "Aprovechamiento del correo electrónico, 
	automatización de emails, segmentación, campañas efectivas", 3),
	(8, "Estrategias de Marketing de Influencers", "Colaboración con figuras relevantes, 
	identificación de influencers, campañas de colaboración, ROI de influencers", 3),
	(1, "Introducción a la Fotografía Creativa", "Conceptos básicos y principios creativos,
	composición, perspectiva, iluminación básica", 4),
	(2, "Explorando la Iluminación Creativa", "Uso avanzado de la luz en la fotografía,
	luz natural y artificial, uso de flashes y reflectores", 4),
	(3, "Retrato Creativo y Expresivo", "Técnicas para retratos únicos, dirección de modelos, 
	expresión emocional, manipulación creativa", 4),
	(4, "Fotografía de Paisajes Innovadores", "Capturando paisajes de manera creativa, 
	composición innovadora, perspectivas inusuales, uso de filtros", 4),
	(5, "Fotografía de Producto y Bodegón", "Creando imágenes atractivas de productos, 
	composición para resaltar productos, uso de fondos, iluminación específica", 4),
	(6, "Fotografía de Naturaleza Creativa", "Capturando la belleza natural de forma única,
	fotografía macro, vida silvestre, momentos únicos", 4),
	(7, "Manipulación y Edición Creativa", "Procesamiento digital avanzado, uso de software 
	de edición, técnicas de manipulación creativa", 4),
	(8, "Proyecto Final de Fotografía Creativa", "Aplicación de conocimientos adquiridos en 
	un proyecto, desarrollo y presentación de una serie fotográfica innovadora", 4),
	(1, "Fundamentos de Finanzas Personales", "Conceptos básicos y objetivos financieros, 
	presupuestos, ahorro, planificación a corto y largo plazo", 5),
	(2, "Gestión de Deudas y Créditos", "Estrategias para manejar deudas, tipos de deuda, 
	reducción de deudas, uso responsable de tarjetas de crédito", 5),
	(3, "Inversiones para Beginners", "Conceptos básicos de inversión, diversificación, 
	acciones, bonos, fondos de inversión", 5),
	(4, "Planificación de Jubilación y Pensiones", "Preparándose para el futuro financiero,
	planificación para la jubilación, planes de pensiones, seguros", 5),
	(5, "Herramientas para la Gestión Financiera", "Uso de herramientas financieras modernas,
	aplicaciones de presupuesto, software de seguimiento financiero", 5),
	(6, "Gestión del Dinero en el día a día", "Estrategias para administrar gastos diarios,
	estrategias de ahorro, gestión eficaz del dinero diario", 5),
	(7, "Educación Financiera para Niños y Adolescentes", "Enseñanza temprana de finanzas, 
	conceptos financieros básicos para niños, ahorro temprano", 5),
	(8, "Estrategias Avanzadas de Inversión y Protección", "Estrategias avanzadas para 
	aumentar el patrimonio, inversiones alternativas, protección patrimonial y fiscal", 5),
	(1, "Introducción a la Cocina Internacional", "Exploración de diferentes cocinas, 
	principales tendencias culinarias, ingredientes comunes", 6),
	(2, "Cocina Mediterránea", "Sabores del Mediterráneo, platos típicos, técnicas de 
	cocción, ingredientes clave", 6),
	(3, "Cocina Asiática: Sabores de Asia", "Diversidad de la gastronomía asiática, cocina 
	china, japonesa, tailandesa, vietnamita, etc.", 6),
	(4, "Cocina Latinoamericana: Colores y Sabores", "Rica tradición culinaria 
	latinoamericana, platos emblemáticos de México, Perú, Argentina, etc.", 6),
	(5, "Cocina Europea: Tradición y Modernidad", "Platos europeos clásicos y contemporáneos,
	cocina francesa, italiana, alemana, etc.", 6),
	(6, "Cocina Africana: Aromas y Especias", "Diversidad gastronómica africana, platos 
	típicos, uso de especias, técnicas de cocción", 6),
	(7, "Cocina del Medio Oriente: Exquisitas Combinaciones", "Delicias culinarias de 
	Oriente Medio, platos árabes, turcos, persas, etc.", 6),
	(8, "Cocina Fusion: Creatividad en la Mesa", "Fusiones culinarias y nuevas tendencias,
	combinación de sabores, técnicas innovadoras", 6),
	(1, "Fundamentos del Desarrollo Web", "Introducción al desarrollo web, HTML, CSS, 
	JavaScript: conceptos básicos", 7),
	(2, "Diseño Responsivo y CSS Advanced", "Diseño adaptable y CSS avanzado, media queries, 
	flexbox, grid, preprocesadores CSS", 7),
	(3, "Fundamentos de JavaScript", "Fundamentos de programación con JavaScript, variables, 
	condicionales, bucles, funciones", 7),
	(4, "Frameworks Front-end", "Introducción a frameworks front-end (ej. React, Angular, Vue),
	conceptos básicos, creación de componentes", 7),
	(5, "Backend con Node.js", "Desarrollo de backend con Node.js, Express, manejo de rutas, 
	integración con bases de datos", 7),
	(6, "Bases de Datos para Web", "Introducción a bases de datos para aplicaciones web,
	SQL vs NoSQL, manipulación de datos, consultas básicas", 7),
	(7, "Seguridad y Optimización Web", "Principios de seguridad y optimización web, 
	seguridad en aplicaciones, rendimiento y optimización", 7),
	(8, "Despliegue y Hosting", "Despliegue de aplicaciones web, configuración de 
	servidores, despliegue en la nube, consideraciones de hosting", 7),
	(1, "Introducción a la Inteligencia Artificial", "Fundamentos de la IA y sus 
	aplicaciones, historia, conceptos básicos, áreas de aplicación", 8),
	(2, "Aprendizaje Automático (Machine Learning)", "Introducción al aprendizaje automático, 
	tipos de aprendizaje (supervisado, no supervisado, reforzado), algoritmos básicos", 8),
	(3, "Redes Neuronales Artificiales", "Fundamentos de redes neuronales, estructura, 
	entrenamiento, tipos de capas", 8),
	(4, "Procesamiento del Lenguaje Natural (NLP)", "Introducción al procesamiento del 
	lenguaje natural, tokenización, análisis sintáctico, modelos de lenguaje", 8),
	(5, "Visión por Computadora (Computer Vision)", "Conceptos de visión por computadora,
	detección de objetos, segmentación, redes neuronales convolucionales", 8),
	(6, "Ética en Inteligencia Artificial", "Consideraciones éticas y sociales, bias 
	algorítmico, privacidad, responsabilidad social", 8),
	(7, "Aplicaciones de la IA en la Industria", "Aplicaciones empresariales de la IA, 
	automatización, análisis predictivo, asistentes virtuales", 8),
	(8, "Desarrollo de Proyectos de Inteligencia Artificial", "Pasos para desarrollar 
	proyectos de IA, definición de problemas, selección de algoritmos, implementación práctica", 8);
	
-- Verifying test data in lessons
SELECT *
FROM lessons;

-- Creation of the registration table
CREATE TABLE registrations (
	id_registration INT AUTO_INCREMENT PRIMARY KEY,
	registration_date DATETIME DEFAULT CURRENT_TIMESTAMP,
	state ENUM ("Pending", "In progress", "Finished") NOT NULL, 
	grade INT DEFAULT NULL,
	end_date DATETIME DEFAULT NULL,
	id_user INT,
	id_course INT,
	FOREIGN KEY (id_user) REFERENCES users(id_user),
	FOREIGN KEY (id_course) REFERENCES courses(id_course)
);

-- Insert test data into registrations
INSERT INTO registrations (state, grade, end_date,
	id_user, id_course)
	VALUES
	("Pending", NULL, NULL, 2, 1),
	("In progress", NULL, NULL, 2, 2),
	("Finished", 5, "2023-12-28 11:50:00", 3, 1),
	("Pending", NULL, NULL, 4, 4),
	("Pending", NULL, NULL, 4, 5),
	("In progress", NULL, NULL, 4, 8),
	("In progress", NULL, NULL, 5, 6),
	("Pending", NULL, NULL, 5, 7),
	("Finished", 4, "2023-10-22 9:40:00", 5, 8);

-- Verifying test data in registrations
SELECT *
FROM registrations;

-- Update of the number of students in each course due to the registrations entered

UPDATE courses AS c
SET c.enrolled_students = (
    SELECT COUNT(*)
    FROM registrations AS i
    WHERE i.id_course = c.id_course
)
WHERE c.id_course = 1;

UPDATE courses AS c
SET c.enrolled_students = (
    SELECT COUNT(*)
    FROM registrations AS i
    WHERE i.id_course = c.id_course
)
WHERE c.id_course = 2;

UPDATE courses AS c
SET c.enrolled_students = (
    SELECT COUNT(*)
    FROM registrations AS i
    WHERE i.id_course = c.id_course
)
WHERE c.id_course = 4;

UPDATE courses AS c
SET c.enrolled_students = (
    SELECT COUNT(*)
    FROM registrations AS i
    WHERE i.id_course = c.id_course
)
WHERE c.id_course = 5;

UPDATE courses AS c
SET c.enrolled_students = (
    SELECT COUNT(*)
    FROM registrations AS i
    WHERE i.id_course = c.id_course
)
WHERE c.id_course = 6;

UPDATE courses AS c
SET c.enrolled_students = (
    SELECT COUNT(*)
    FROM registrations AS i
    WHERE i.id_course = c.id_course
)
WHERE c.id_course = 7;

UPDATE courses AS c
SET c.enrolled_students = (
    SELECT COUNT(*)
    FROM registrations AS i
    WHERE i.id_course = c.id_course
)
WHERE c.id_course = 8;

-- Creation of the grades table
CREATE TABLE grades (
	id_grade INT AUTO_INCREMENT PRIMARY KEY,
	grade INT,
	observations VARCHAR(255),
	grade_date DATETIME DEFAULT CURRENT_TIMESTAMP,
	id_user INT,
	id_course INT,
	FOREIGN KEY (id_user) REFERENCES users(id_user),
	FOREIGN KEY (id_course) REFERENCES courses(id_course)
);

-- Insert test data into grades
INSERT INTO grades (grade, observations, id_user, id_course)
	VALUES
	(10, "Muy buen alumno, entregó en tiempo cada una de las actividades", 3, 1),
	(9, "Trabajos perfectos, detalles en la asistencia y puntualidad", 5, 8);

-- Verification of test data in grades
SELECT *
FROM grades;

-- Creating the comments table
CREATE TABLE comments (
	id_comment INT AUTO_INCREMENT PRIMARY KEY,
	comment_content VARCHAR(255),
	comment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
	id_user INT,
	id_lesson INT,
	FOREIGN KEY (id_user) REFERENCES users(id_user),
	FOREIGN KEY (id_lesson) REFERENCES lessons(id_lesson)
);

-- Insert test data in comments
INSERT INTO comments (comment_content, id_user, id_lesson)
	VALUES
	("Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl 
	nunc mi ipsum faucibus vitae aliquet", 2, 1),
	("Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl 
	nunc mi ipsum faucibus vitae aliquet", 2, 9),
	("Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl 
	nunc mi ipsum faucibus vitae aliquet", 3, 1),
	("Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl 
	nunc mi ipsum faucibus vitae aliquet", 4, 25),
	("Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl 
	nunc mi ipsum faucibus vitae aliquet", 4, 33),
	("Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl 
	nunc mi ipsum faucibus vitae aliquet", 4, 57),
	("Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl 
	nunc mi ipsum faucibus vitae aliquet", 5, 41),
	("Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl 
	nunc mi ipsum faucibus vitae aliquet", 5, 49),
	("Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl 
	nunc mi ipsum faucibus vitae aliquet", 5, 57);

-- Verifying test data in comments
SELECT *
FROM comments;

-- Consultation of all the comments of a lesson
SELECT c.id_comment, c.comment_content, l.lesson_title, cr.course_title 
FROM comments AS c
JOIN lessons AS l ON c.id_lesson = l.id_lesson
JOIN courses AS cr ON l.id_course = cr.id_course
WHERE l.id_lesson = 57;

SELECT c.id_comment, c.comment_content, l.lesson_title, cr.course_title 
FROM comments AS c
JOIN lessons AS l ON c.id_lesson = l.id_lesson
JOIN courses AS cr ON l.id_course = cr.id_course
WHERE l.id_lesson = 1;

-- Querying a user's ratings
SELECT u.first_name, u.last_name, c.grade, c.observations, c.grade_date
FROM users AS u
INNER JOIN grades AS c ON c.id_user = u.id_user 
WHERE u.id_user = 3;

-- Consultation of the lessons of a course
SELECT l.number, l.lesson_title, l.lesson_content, c.course_title
FROM lessons AS l
INNER JOIN courses AS c ON c.id_course = l.id_course 
WHERE c.id_course = 1;

SELECT l.number, l.lesson_title, l.lesson_content, c.course_title
FROM lessons AS l
INNER JOIN courses AS c ON c.id_course = l.id_course 
WHERE c.id_course = 2;
