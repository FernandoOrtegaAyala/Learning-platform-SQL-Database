-- Verificación de las DB
SHOW DATABASES;

-- Creación de la DB
CREATE DATABASE plataforma_aprendizaje;

-- Utilizacion de la DB actual
USE plataforma_aprendizaje;

-- Verificacion de las tablas en la DB
SHOW TABLES;

-- Creación de la tabla usuarios
CREATE TABLE usuarios (
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(30) NOT NULL,
	apellidos VARCHAR(30) NOT NULL,
	es_administrador TINYINT(1) DEFAULT 0,
	fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
	email VARCHAR(45) UNIQUE NOT NULL,
	contraseña VARCHAR(45) NOT NULL,
	avatar VARCHAR(255)
);

-- Insertar datos de prueba en usuarios
INSERT INTO usuarios (nombre, apellidos, es_administrador, fecha_registro, email, contraseña, avatar)
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
	
-- Verificación de los datos de prueba en usuarios
SELECT *
FROM usuarios;

-- Creación de la tabla instructores
CREATE TABLE instructores (
	id_instructor INT AUTO_INCREMENT PRIMARY KEY,
	nombre_instructor VARCHAR(55) NOT NULL,
	especialidad VARCHAR(55) NOT NULL,
	experiencia VARCHAR(255) NOT NULL
);

-- Insertar datos de prueba en instructores
INSERT INTO instructores (nombre_instructor, especialidad, experiencia) 
	VALUES
	("Luisa García Hernández", "Programación en Python", "5 años de enseñanza en universidad. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Jorge Pérez Rodríguez", "Diseño Gráfico Avanzado", "10 años de enseñanza en escuela preparatoria. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("María Fernández López", "Marketing Digital ", "3 años de enseñanza en universidad. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Juan Carlos Torres", "Fotografía Creativa", "7 años de enseñanza en escuela preparatoria. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Sofía González Martínez", "Finanzas Personales", "2 años de enseñanza en escuela preparatoria. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Ricardo Hernández García", "Cocina Internacional", "4 años de enseñanza en escuela preparatoria. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Ana Torres Sánchez", "Desarrollo Web", "6 años de enseñanza en universidad. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip."),
	("Carlos Hernández Flores", "Inteligencia Artificial", "1 año de enseñanza en universidad. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.");

-- Verificación de los datos de prueba en instructores
SELECT *
FROM instructores;

-- Creación de la tabla cursos
CREATE TABLE cursos (
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
	titulo_curso VARCHAR(200) NOT NULL,
	descripción VARCHAR(255) NOT NULL,
	portada_URL VARCHAR(255) NOT NULL,
	duración VARCHAR(200) NOT NULL,
	nivel ENUM ("Principiante", "Intermedio", "Avanzado") NOT NULL,
	fecha_publicación DATETIME DEFAULT CURRENT_TIMESTAMP,
	estudiantes_inscritos INT DEFAULT 0,
	valoraciones DECIMAL(2,2) UNSIGNED DEFAULT 0.0,
	id_instructor INT,
	FOREIGN KEY (id_instructor) REFERENCES instructores(id_instructor)
);

-- Insertar datos de prueba en cursos
INSERT INTO cursos (titulo_curso, descripción, portada_URL, duración, nivel, 
	fecha_publicación, id_instructor)
	VALUES
	("Python Avanzado: Desarrollo y Optimización", "Sumérgete en el mundo avanzado de Python, desde técnicas de desarrollo hasta estrategias de optimización para aplicaciones robustas.",
	"https://img.freepik.com/free-photo/person-working-html-computer_23-2150040424.jpg?w=1380&t=st=1702261474~exp=1702262074~hmac=b0188b8d253c46c1eeeaa45e984129f6e0942b07912ea5ea35289b5a6b061f4b",
	"8 semanas", "Avanzado", "2023-09-12 08:30:00", 1),
	("Diseño Gráfico Avanzado: Creación y Branding", "Explora técnicas avanzadas de diseño gráfico, abordando desde la creación artística hasta el branding y la identidad visual corporativa.",
	"https://img.freepik.com/free-photo/man-drawing-tablet-side-view_23-2150040127.jpg?w=740&t=st=1702262193~exp=1702262793~hmac=e0cc0970a17d470384ebfea10df10b527add6ba0304013c314e7694ed114661f",
	"8 semanas", "Avanzado", "2023-11-05 15:45:00", 2),
	("Marketing Digital: Estrategias y Analíticas", "Domina estrategias de marketing digital y analiza resultados para optimizar campañas en entornos digitales.",
	"https://img.freepik.com/free-photo/corporate-management-strategy-solution-branding-concept_53876-167088.jpg?w=1380&t=st=1702262372~exp=1702262972~hmac=3b5f42fd7e30e384f2492d0bfb5e34aa1e9fa521a69e08efd99cbe366e061226",
	"7 semanas", "Intermedio", "2023-02-18 10:00:00", 3),
	("Fotografía Creativa - Explorando la Estética Visual", "Este curso explora la creatividad en la fotografía a través de la composición, el manejo de la luz y la experimentación visual. Aprenderás a desarrollar un ojo artístico para capturar momentos únicos y expresivos.",
	"https://img.freepik.com/free-photo/professional-camera-blurred_169016-10249.jpg?w=1380&t=st=1702262650~exp=1702263250~hmac=726e6cd5613e1021b7441988528fe152e6831062def283c4ea8e55bf8592d9d7",
	"4 semanas", "Principiante", "2023-05-29 14:20:00", 4),
	("Gestión Inteligente de Finanzas Personales", "Este curso proporciona herramientas prácticas para gestionar y optimizar las finanzas personales. Desde presupuestos hasta inversiones, aprenderás estrategias para tomar decisiones financieras sólidas y sostenibles en tu vida diaria.",
	"https://img.freepik.com/free-photo/front-view-arrangement-economy-elements_23-2148793796.jpg?w=1380&t=st=1702262896~exp=1702263496~hmac=70ed73683cd7a41560ba3e474f2eaf55e71b32863ead613ab5d0667d3ced600f",
	"5 semanas", "Principiante", "2023-12-28 11:50:00", 5),
	("Experiencia Gastronómica: Cocina Internacional", "Explora las diversas cocinas del mundo y aprende las técnicas culinarias de diferentes culturas. Desde platos clásicos hasta innovadoras fusiones, este curso te sumerge en un viaje culinario para descubrir sabores únicos y técnicas auténticas.",
	"https://img.freepik.com/free-photo/view-chef-working-kitchen_23-2149728014.jpg?w=1380&t=st=1702263127~exp=1702263727~hmac=314e678fdff520d90911935dd231fff3a0fbb28c96363959e83ddf302a0b4b2b",
	"10 semanas", "Intermedio", "2023-08-09 09:55:00", 6),
	("Desarrollo Web Avanzado: Frameworks y Estructuras", "Domina frameworks y estructuras avanzadas para desarrollo web, aprende a crear aplicaciones complejas y escalables.",
	"https://img.freepik.com/free-photo/html-css-collage-concept-with-person_23-2150062008.jpg?w=1380&t=st=1702263239~exp=1702263839~hmac=a8313f07ef7341c429cd7a1417628fe1cdb9cd0610f517a222a0bb1ba7bd3b6c",
	"12 semanas", "Avanzado", "2023-01-06 13:25:00", 7),
	("Dominando la Inteligencia Artificial", "Adéntrate en el fascinante mundo de la inteligencia artificial. Desde algoritmos básicos hasta aprendizaje profundo, este curso te ofrece una comprensión completa de los conceptos fundamentales y las aplicaciones prácticas de la IA en diversos campos",
	"https://img.freepik.com/free-vector/sphere-grid-wave-with-binary-code-ai-artificial-intelligence-logo-hand-machine-learning-concept_127544-855.jpg?w=1380&t=st=1702263446~exp=1702264046~hmac=ec5660204c49a61c8bb5089a74e6811ac5820464b47c9ca5d723f495a93c3906",
	"12 semanas", "Avanzado", "2023-04-22 16:00:00", 8);

-- Verificación de los datos de prueba en cursos
SELECT *
FROM cursos;

-- Creación de la tabla lecciones
CREATE TABLE lecciones (
	id_lección INT AUTO_INCREMENT PRIMARY KEY,
	orden INT,
	titulo_lección VARCHAR(200) NOT NULL,
	contenido_lección VARCHAR(255),
	id_curso INT,
	FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

-- Insertar datos de prueba en lecciones
INSERT INTO lecciones (orden, titulo_lección, contenido_lección, id_curso)
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
	(7, "Módulos Avanzados y Librerías", "Uso avanzado de módulos y librerías, uso de 
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
	(3, "Inversiones para Principiantes", "Conceptos básicos de inversión, diversificación, 
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
	(2, "Diseño Responsivo y CSS Avanzado", "Diseño adaptable y CSS avanzado, media queries, 
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
	
-- Verificación de los datos de prueba en lecciones
SELECT *
FROM lecciones;

-- Creación de la tabla inscripciones
CREATE TABLE inscripciones (
	id_inscripción INT AUTO_INCREMENT PRIMARY KEY,
	fecha_inscripción DATETIME DEFAULT CURRENT_TIMESTAMP,
	estado_finalización ENUM ("Pendiente", "En progreso", "Completado") NOT NULL, 
	calificación INT DEFAULT NULL,
	fecha_finalización DATETIME DEFAULT NULL,
	id_usuario INT,
	id_curso INT,
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
	FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

-- Insertar datos de prueba en inscripciones
INSERT INTO inscripciones (estado_finalización, calificación, fecha_finalización,
	id_usuario, id_curso)
	VALUES
	("Pendiente", NULL, NULL, 2, 1),
	("En progreso", NULL, NULL, 2, 2),
	("Completado", 5, "2023-12-28 11:50:00", 3, 1),
	("Pendiente", NULL, NULL, 4, 4),
	("Pendiente", NULL, NULL, 4, 5),
	("En progreso", NULL, NULL, 4, 8),
	("En progreso", NULL, NULL, 5, 6),
	("Pendiente", NULL, NULL, 5, 7),
	("Completado", 4, "2023-10-22 9:40:00", 5, 8);

-- Verificación de los datos de prueba en inscripciones
SELECT *
FROM inscripciones;

-- Actualización del número de estudiantes en cada curso debido a las inscripciones ingresadas

UPDATE cursos AS c
SET c.estudiantes_inscritos = (
    SELECT COUNT(*)
    FROM inscripciones AS i
    WHERE i.id_curso = c.id_curso
)
WHERE c.id_curso = 1;

UPDATE cursos AS c
SET c.estudiantes_inscritos = (
    SELECT COUNT(*)
    FROM inscripciones AS i
    WHERE i.id_curso = c.id_curso
)
WHERE c.id_curso = 2;

UPDATE cursos AS c
SET c.estudiantes_inscritos = (
    SELECT COUNT(*)
    FROM inscripciones AS i
    WHERE i.id_curso = c.id_curso
)
WHERE c.id_curso = 4;

UPDATE cursos AS c
SET c.estudiantes_inscritos = (
    SELECT COUNT(*)
    FROM inscripciones AS i
    WHERE i.id_curso = c.id_curso
)
WHERE c.id_curso = 5;

UPDATE cursos AS c
SET c.estudiantes_inscritos = (
    SELECT COUNT(*)
    FROM inscripciones AS i
    WHERE i.id_curso = c.id_curso
)
WHERE c.id_curso = 6;

UPDATE cursos AS c
SET c.estudiantes_inscritos = (
    SELECT COUNT(*)
    FROM inscripciones AS i
    WHERE i.id_curso = c.id_curso
)
WHERE c.id_curso = 7;

UPDATE cursos AS c
SET c.estudiantes_inscritos = (
    SELECT COUNT(*)
    FROM inscripciones AS i
    WHERE i.id_curso = c.id_curso
)
WHERE c.id_curso = 8;

-- Creación de la tabla calificaciones
CREATE TABLE calificaciones (
	id_calificación INT AUTO_INCREMENT PRIMARY KEY,
	calificación INT,
	observaciones VARCHAR(255),
	fecha_calificación DATETIME DEFAULT CURRENT_TIMESTAMP,
	id_usuario INT,
	id_curso INT,
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
	FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

-- Insertar datos de prueba en calificaciones
INSERT INTO calificaciones (calificación, observaciones, id_usuario, id_curso)
	VALUES
	(10, "Muy buen alumno, entregó en tiempo cada una de las actividades", 3, 1),
	(9, "Trabajos perfectos, detalles en la asistencia y puntualidad", 5, 8);

-- Verificación de los datos de prueba en calificaciones
SELECT *
FROM calificaciones;

-- Creación de la tabla comentarios
CREATE TABLE comentarios (
	id_comentario INT AUTO_INCREMENT PRIMARY KEY,
	contenido_comentario VARCHAR(255),
	fecha_comentario DATETIME DEFAULT CURRENT_TIMESTAMP,
	id_usuario INT,
	id_lección INT,
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
	FOREIGN KEY (id_lección) REFERENCES lecciones(id_lección)
);

-- Insertar datos de prueba en comentarios
INSERT INTO comentarios (contenido_comentario, id_usuario, id_lección)
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

-- Verificación de los datos de prueba en comentarios
SELECT *
FROM comentarios;

-- Consulta de todos los comentarios de una lección
SELECT c.id_comentario, c.contenido_comentario, l.titulo_lección, cr.titulo_curso 
FROM comentarios AS c
JOIN lecciones AS l ON c.id_lección = l.id_lección
JOIN cursos AS cr ON l.id_curso = cr.id_curso
WHERE l.id_lección = 57;

SELECT c.id_comentario, c.contenido_comentario, l.titulo_lección, cr.titulo_curso 
FROM comentarios AS c
JOIN lecciones AS l ON c.id_lección = l.id_lección
JOIN cursos AS cr ON l.id_curso = cr.id_curso
WHERE l.id_lección = 1;

-- Consulta de las calificaciones de un usuario
SELECT u.nombre, u.apellidos, c.calificación, c.observaciones, c.fecha_calificación
FROM usuarios AS u
INNER JOIN calificaciones AS c ON c.id_usuario = u.id_usuario 
WHERE u.id_usuario = 3;

-- Consulta de las lecciones de un curso
SELECT l.orden, l.titulo_lección, l.contenido_lección, c.titulo_curso
FROM lecciones AS l
INNER JOIN cursos AS c ON c.id_curso = l.id_curso 
WHERE c.id_curso = 1;

SELECT l.orden, l.titulo_lección, l.contenido_lección, c.titulo_curso
FROM lecciones AS l
INNER JOIN cursos AS c ON c.id_curso = l.id_curso 
WHERE c.id_curso = 2;
