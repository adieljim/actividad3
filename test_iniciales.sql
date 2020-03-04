-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2020 a las 07:39:36
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test_iniciales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `nocta` varchar(9) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apat` varchar(20) NOT NULL,
  `amat` varchar(20) DEFAULT NULL,
  `edad` varchar(2) DEFAULT NULL,
  `cve_materia` int(11) DEFAULT NULL,
  `turno` varchar(10) DEFAULT NULL,
  `comentarios` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`nocta`, `nombre`, `apat`, `amat`, `edad`, `cve_materia`, `turno`, `comentarios`) VALUES
('103112', 'JOEL', 'GONZALEZ', 'PATRICIO', '25', 1045, 'matutino', 'La materia me gusto'),
('153914140', 'PATRICIA', 'OCHOA', 'RODRIGUEZ', '25', 2012, 'vespertino', 'Muy buena Materia'),
('156383116', 'YAZMIN', 'TONINE', 'ORTIZ', '18', 1045, 'matutino', 'didactica la clase'),
('165374101', 'ALEJANDRA', 'PEREZ', 'RANGEL', '21', 2012, 'vespertino', 'mas participaciones'),
('183164140', 'SAMUEL', 'MARTINEZ', 'MEDINA', '23', 1021, 'matutino', 'no me gusto la materia'),
('196793111', 'FABIOLA', 'HERNANDEZ', 'REYES', '20', 2067, 'vespertino', 'ok '),
('219723112', 'HECTOR', 'VILLEGAS', 'VARGAS', '26', 2067, 'vespertino', 'ok '),
('251504140', 'JESSICA', 'ANAYA', 'GUEVARA', '23', 2067, 'vespertino', 'ok '),
('279563110', 'BRENDA', 'NAJERA', 'CID', '19', 2067, 'vespertino', 'mas ejercicios'),
('284973113', 'PAULINA', 'BAUTISTA', 'ORTIZ', '20', 1045, 'matutino', 'felicidades profesor'),
('294404140', 'SUSANA', 'CRUZ', 'MENDOZA', '20', 1045, 'matutino', 'mejor un trabajo final'),
('295124140', 'JACQUELINE', 'ESPARZA', 'JIMENEZ', '22', 2012, 'vespertino', 'sin comentarios'),
('297213103', 'OSCAR', 'SANCHEZ', 'SALINAS', '21', 2052, 'vespertino', 'Buen d?a\r'),
('306200317', 'DANIEL RODOLFO', 'ARAGON', 'TORRES', '26', 2052, 'vespertino', 'mal '),
('306298729', 'ANA MARIA', 'GARCIA', 'ANAYA', '19', 2052, 'vespertino', 'debe cambiar su forma de evaluacion'),
('308033113', 'ADRIAN', 'OLIVEROS', 'ROJAS', '25', 1045, 'matutino', 'ok '),
('308161555', 'MIGUEL ANGEL', 'BAUTISTA', 'BAUTISTA', '24', 2033, 'matutino', 'ok '),
('309086167', 'ANDREA ARELI', 'CRINER', 'SCHIETEKAT', '22', 1021, 'matutino', 'sin comentarios'),
('309279705', 'ROBERTO OMAR', 'RUIZ', 'PEREZ', '25', 1080, 'vespertino', 'ok '),
('310038025', 'ISAI NP', 'BAEZ', 'CRUZ', '24', 2033, 'matutino', 'Falto ejemplos de la vida real '),
('310085593', 'ALEX AURELIO', 'HERNANDEZ', 'LOPEZ', '19', 2033, 'matutino', 'Menos Teoria, Mas practica'),
('310329721', 'MONSERRAT', 'SALINAS', 'MARTINEZ', '21', 2052, 'vespertino', 'Buen d?a\r'),
('310347053', 'LUIS ARMANDO', 'PALACIOS', 'VILLEGAS', '18', 2052, 'vespertino', 'sin comentarios'),
('310649247', 'ADRIAN SALVADOR', 'CERVANTES', 'PAREDES', '23', 1080, 'vespertino', 'me gusto'),
('311027956', 'PEDRO ALEJANDRO', 'CID', 'GARCIA', '19', 1080, 'vespertino', 'mas ejercicios'),
('311036433', 'KARLA ELIZABETH', 'HERNANDEZ', 'URBAN', '24', 1021, 'matutino', 'ok '),
('311119679', 'PAOLA MONSERRAT', 'REYES', 'CHAVEZ', '20', 1080, 'vespertino', 'ok '),
('311143401', 'SAUL', 'CENOBIO', 'SANCHEZ', '23', 1080, 'vespertino', 'A conquistar el mundo'),
('311168017', 'OSVALDO RUBEN', 'SOLANO', 'OLIVEROS', '27', 2033, 'matutino', 'mal '),
('311178625', 'LESLIE MONSERRAT', 'RAMIREZ', 'TONINE', '20', 2033, 'matutino', 'ok '),
('311200010', 'OMAR AARON', 'PATRICIO', 'PIEDRAS', '25', 1021, 'matutino', 'La materia me gusto'),
('311221972', 'MARCO ANTONIO', 'VARGAS', 'ESPARZA', '26', 1080, 'vespertino', 'ok '),
('311328497', 'LEO ALEXIS', 'ORTIZ', 'GARCIA', '20', 1021, 'matutino', 'felicidades profesor'),
('311330803', 'OMAR RAMIRO', 'ROJAS', 'LOPEZ', '25', 1021, 'matutino', 'ok '),
('311340875', 'MARIA ISABEL', 'ROBLES', 'OTERO', '26', 2033, 'matutino', 'me gusto'),
('311341418', 'ALEJANDRO', 'SOTO', 'LOA', '22', 2033, 'matutino', 'Hola Mundo'),
('311615638', 'JOSE JOAQUIN', 'ORTIZ', 'ORTEGA', '18', 1021, 'matutino', 'didactica la clase'),
('3173062', 'CARLOS', 'PAREDES', 'ARAGON', '26', 2012, 'vespertino', 'mal '),
('364333110', 'ELIZABETH', 'OTERO', 'HERNANDEZ', '24', 1045, 'matutino', 'ok '),
('380253100', 'IVAN', 'LOPEZ', 'BAEZ', '24', 1078, 'matutino', 'Falto ejemplos de la vida real '),
('408753113', 'REBECA', 'ORTEGA', 'ROBLES', '26', 1078, 'matutino', 'me gusto'),
('410116537', 'HUGO NP', 'RANGEL', 'HERNANDEZ', '21', 2052, 'vespertino', 'mas participaciones'),
('414015391', 'PAULINA ESTEFANIA', 'RODRIGUEZ', 'CHAGOYA', '25', 2052, 'vespertino', 'Muy buena Materia'),
('414018316', 'JORGE SAMUEL', 'MEDINA', 'PEREZ', '23', 1021, 'matutino', 'no me gusto la materia'),
('414025150', 'FRANCISCO JAVIER', 'GUEVARA', 'OCHOA', '23', 1080, 'vespertino', 'ok '),
('414029440', 'AIDE MONTSERRAT', 'MENDOZA', 'DIAZ', '20', 1021, 'matutino', 'mejor un trabajo final'),
('414029512', 'JOSE ALFREDO', 'JIMENEZ', 'NAJERA', '22', 2052, 'vespertino', 'sin comentarios'),
('414063897', 'JORGE ALBERTO', 'VALENCIA', 'GONZALEZ', '18', 2033, 'matutino', 'no me gusto la materia'),
('414093724', 'BRENDA BERENICE', 'CHAVEZ', 'LICEA', '20', 1080, 'vespertino', 'ok '),
('414098884', 'HECTOR ADRIAN', 'HERRERA', 'GOMEZ', '28', 2052, 'vespertino', 'practica'),
('414107409', 'JAIME', 'CERVANTES', 'FLORES', '20', 1021, 'matutino', 'Hola'),
('414183113', 'FRANCISCO', 'PIEDRAS', 'SOTO', '22', 2033, 'matutino', 'Hola Mundo'),
('434013111', 'MANUEL', 'GOMEZ', 'CENOBIO', '23', 1080, 'vespertino', 'A conquistar el mundo'),
('470533103', 'RIGOBERTO', 'LICEA', 'PALACIOS', '18', 2012, 'vespertino', 'sin comentarios'),
('492473106', 'MARIA ISABEL', 'FLORES', 'CERVANTES', '23', 2067, 'vespertino', 'me gusto'),
('615553081', 'ROMAN', 'SCHIETEKAT', 'BAUTISTA', '24', 1078, 'matutino', 'ok '),
('638974140', 'VICTOR', 'GARCIA', 'VALENCIA', '18', 1078, 'matutino', 'no me gusto la materia'),
('680173111', 'LORENA', 'PEREZ', 'SOLANO', '27', 1078, 'matutino', 'mal '),
('74094141', 'JORGE', 'LOA', 'CERVANTES', '20', 1045, 'matutino', 'Hola'),
('786253111', 'REINA', 'DIAZ', 'RAMIREZ', '20', 1078, 'matutino', 'ok '),
('797053092', 'JOSE', 'TORRES', 'RUIZ', '25', 2067, 'vespertino', 'ok '),
('855933100', 'MIGUEL', 'URBAN', 'HERNANDEZ', '19', 1078, 'matutino', 'Menos Teoria, Mas practica'),
('861673090', 'FELIPE', 'LOPEZ', 'CRINER', '22', 1045, 'matutino', 'sin comentarios'),
('937244140', 'SANDRA', 'CHAGOYA', 'CHAVEZ', '20', 2067, 'vespertino', 'ok '),
('987293062', 'LUIS', 'CHAVEZ', 'GARCIA', '19', 2012, 'vespertino', 'debe cambiar su forma de evaluacion'),
('988844140', 'ERIK', 'GARCIA', 'HERRERA', '28', 2012, 'vespertino', 'practica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `cve_materia` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `carrera` varchar(5) NOT NULL,
  `comentarios` varchar(100) DEFAULT NULL,
  `cve_profesor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`cve_materia`, `descripcion`, `carrera`, `comentarios`, `cve_profesor`) VALUES
(1021, 'Informatica', 'LI', 'Temario 2005', 3847506),
(1045, 'Administracion', 'LI', 'Temario 2005', 6949829),
(1078, 'Metodos Numericos', 'IME', 'Temario 2013', 3984104),
(1080, 'Programacion', 'LI', 'Temario 2013', 3847506),
(2012, 'Economia', 'LI', 'Temario 2005', 4995003),
(2033, 'Bases de Datos', 'IME', 'Temario 2000', 2929993),
(2052, 'Redes', 'IME', 'Temario 1999', 3999487),
(2067, 'Contabilidad', 'LI', 'Temario 2005', 4995003),
(3040, 'Auditoria Informatica', 'Infor', 'Temario 2013', 3984104),
(8734, 'composicion musical', 'Educa', 'Temario 1980', 866774);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `cve_profesor` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`cve_profesor`, `Nombre`, `Apellidos`) VALUES
(866774, 'Roberto', 'Fripp'),
(2929993, 'Alberto', 'Zubillaga'),
(3847506, 'Rogelio', 'Maldonado'),
(3984104, 'Yoana', 'Gutierrez'),
(3999487, 'Virginia', 'Sanchez'),
(4995003, 'Roman', 'Trejo'),
(4998739, 'Raul', 'Garc?a\r'),
(6949829, 'Brenda', 'Valencia'),
(8390339, 'Isabel', 'Mart?nez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`nocta`),
  ADD KEY `cve_materia` (`cve_materia`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`cve_materia`),
  ADD KEY `cve_profesor` (`cve_profesor`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`cve_profesor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`cve_materia`) REFERENCES `materias` (`cve_materia`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`cve_profesor`) REFERENCES `profesores` (`cve_profesor`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
