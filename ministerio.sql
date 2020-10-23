-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2020 a las 23:04:29
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ministerio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corrientes`
--

CREATE TABLE `corrientes` (
  `IdCorriente` int(11) NOT NULL,
  `NombreCo` varchar(50) NOT NULL,
  `PaisCo` varchar(50) NOT NULL,
  `AnoCo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `corrientes`
--

INSERT INTO `corrientes` (`IdCorriente`, `NombreCo`, `PaisCo`, `AnoCo`) VALUES
(1, 'Realismo', 'Latinoamérica', '1900'),
(2, 'Hiperrealismo', 'Estados Unidos', '1960 '),
(3, 'Surrealismo', 'Francia', '1920'),
(4, 'Impresionismo', 'Paris', '1874'),
(5, 'Expresionismo', 'Alemania', '1912'),
(6, 'Arte abstracto', 'Francia', '1872'),
(7, 'Arte Pop', 'Reino', '1950');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuadros`
--

CREATE TABLE `cuadros` (
  `Codigo` int(11) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Dimensiones` varchar(50) NOT NULL,
  `Fecha` date NOT NULL,
  `Tecnica` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(50) NOT NULL,
  `IdPin` int(11) NOT NULL,
  `IdPintor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuadros`
--

INSERT INTO `cuadros` (`Codigo`, `Titulo`, `Dimensiones`, `Fecha`, `Tecnica`, `thumb`, `IdPin`, `IdPintor`) VALUES
(7, 'La Gioconda', '77 cm x 53 cm', '1503-03-28', 'Lisa Gherardini', 'Mona_Lisa.jpg', 1, 1),
(8, 'La ultima cena', '4.6 m x 8.8 m', '1498-03-28', 'Pintura al temple', 'cena.jpg', 1, 1),
(9, 'Hombre de Vitruvio', '35 cm x 26 cm', '1490-02-05', 'Tinta', 'renacimiento.jpg', 1, 1),
(10, 'Guernica', '3.49 m x 7.77 m', '1937-02-02', 'Guerra', '4000139.jpg', 1, 2),
(11, 'autorretrato', '81 cm x 60 cm', '1901-01-02', 'olio sobre lienzo', 'auto.jpg', 6, 2),
(12, 'Las señoritas de Avignon', '243,9 cm x 233,7 cm', '1907-01-01', 'Cubismo', 'srta.jpg', 8, 2),
(13, 'El viñedo Rojo', '75 cm x 93 cm', '1888-11-01', 'Pintura al óleo', 'rojo.jpg', 9, 3),
(14, 'Los Girasoles', '93 cm x 72 cm', '1888-01-01', 'Óleo sobre lienzo', 'girasol.jpg', 4, 3),
(15, 'La noche estrellada', '74 cm x 92 cm', '1889-01-02', 'Oleo sobre lienzo', 'noche.jpg', 2, 3),
(16, 'Impresión, Sol Naciente', '48 cm x 63 cm', '1872-01-03', 'Oleo', 'impresion.jpg', 11, 4),
(17, 'Campo de amapolas', '65 cm x 50 cm', '1873-03-04', 'Oleo', 'campo.jpg', 7, 4),
(18, 'El Paseo', '1 m x 82 cm', '1871-04-05', 'Oleo', 'paseo.jpeg', 7, 4),
(19, 'La persistencia de la memoria', '24 cm x 33 cm', '1931-05-05', 'oleo', 'memoria.jpg', 4, 5),
(20, 'Cisnes que se reflejan como elefantes', '51 cm x 77 cm', '1937-09-12', 'Oleo sobre lienzo', 'cisnes.jpg', 5, 5),
(21, 'La tentación de San Antoñio', '90 cm x 120 cm', '1946-06-08', 'Oleo', 'tentacion.jpg', 11, 5),
(22, 'La tormenta en el mar de Galilea', '160 cm x 128 cm', '1633-07-09', 'Oleo sobre lienzo', 'tormenta.jpg', 3, 6),
(23, 'El rapto de Europa', '62 cm x 77 cm', '1632-06-07', 'Oleo sobre panel', 'rapto.jpeg', 4, 6),
(24, 'La Novia Judía', '53 cm x 75 cm', '1669-03-23', 'Oleo', 'novia.jpeg', 3, 6),
(25, 'El Muchacho Pelando Frutas', '63 × 53 cm', '1592-09-12', 'Pintura al oleo', 'muchacho.jpeg', 4, 7),
(26, 'Baco Enfermo', '66 cm x 52 cm', '1593-02-09', 'Pintura al oleo', 'baco.jpeg', 11, 7),
(27, 'Jugadores De Cartas', '94.2 x 131.2 cm', '1594-02-20', 'Oleo sobre lienzo', 'jugadores.jpeg', 9, 7),
(28, 'Huida a Egipto', '35 cm x 60 cm', '1771-03-10', 'Oleo', 'huida.jpeg', 8, 8),
(29, 'La Nevada', '275 cm x 293 cm', '1786-09-13', 'Oleo sobre lienzo', 'nevada.jpeg', 7, 8),
(30, 'El Albañil Herido', '268 cm x 110 cm', '1787-10-16', 'Oleo', 'herido.jpeg', 7, 8),
(31, 'Baile En Moulin De La Galette ', '1.31 m x 1.75 m', '1876-09-19', 'Oleo', 'baile.jpeg', 6, 9),
(32, 'Castaño En Flor', '49 cm x 63 cm', '1881-07-18', 'Oleo sobre lienzo', 'flor.jpeg', 5, 9),
(33, 'Dos niñas al piano', '116 cm x 90 cm', '1892-11-11', 'Oleo sobre tela', 'dos.jpeg', 3, 9),
(34, 'Las meninas', '318 x 276 cm', '1656-12-01', 'Oleo', 'menina.jpeg', 2, 10),
(35, 'La fabula de Aracne', '220 cm x 289 cm', '1657-02-25', 'Oleo sobre lienzo', 'fabula.jpeg', 1, 10),
(36, 'Adoracion a los Reyes Magos', '2.04 m x 1.26 m', '1619-12-25', 'Oleo', 'adora.jpeg', 2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patrocinadores`
--

CREATE TABLE `patrocinadores` (
  `IdPat` int(11) NOT NULL,
  `NombrePat` varchar(50) NOT NULL,
  `Genero` varchar(50) NOT NULL,
  `Nacimiento` date NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL,
  `IdPin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `patrocinadores`
--

INSERT INTO `patrocinadores` (`IdPat`, `NombrePat`, `Genero`, `Nacimiento`, `Nacionalidad`, `IdPin`) VALUES
(1, 'Alfonso Mendoza Angeles', 'Masculino', '1965-03-20', 'Mexicano', 1),
(2, 'Lucas Martinez Jesus ', 'Masculino', '1972-07-17', 'Mexicano', 11),
(3, 'Maria Medina Arenas', 'Femenino', '1966-11-30', 'Mexicano', 2),
(4, 'Macarena Antonio Julio', 'Femenino', '1952-08-18', 'Femenino', 3),
(5, 'Eugenio Agustin Ramos Toledo', 'Masculino', '1954-08-13', 'Mexicano', 9),
(6, 'Celeste Mattew Angeles', 'Femenino', '1950-12-01', 'Mexicana', 6),
(7, 'David De Pierre Monte', 'Masculino', '1976-03-15', 'Mexicano', 7),
(8, 'Paloma Citlali Xochitl', 'Femenino', '1979-06-06', 'Mexicana', 4),
(9, 'Jose Luis Martinez Bautista', 'Masculino', '1977-01-20', 'Mexicano', 8),
(10, 'Catiana Carlota Cervantes', 'Femenino', '1985-10-10', 'Mexicana', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pinacotecas`
--

CREATE TABLE `pinacotecas` (
  `IdPin` int(11) NOT NULL,
  `NombrePin` varchar(50) NOT NULL,
  `CiudadPin` varchar(50) NOT NULL,
  `DireccionPin` varchar(50) NOT NULL,
  `Metros2` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pinacotecas`
--

INSERT INTO `pinacotecas` (`IdPin`, `NombrePin`, `CiudadPin`, `DireccionPin`, `Metros2`) VALUES
(1, 'Pinacoteca Centro', 'CDMX', 'Colonia centro', '1000'),
(2, 'Pinacoteca de la Profesa en le Templo de San Felip', 'CDMX', 'Isabel la Catolica 21,Centro Historico de la Cdad ', '1500'),
(3, 'Laboratorio Arte Alameda', 'CDMX', 'Calle Doctor Mora 7, Colonia Centro, Centro Cuaute', '2500'),
(4, 'Museo Soumaya', 'CDMX', 'Blvd.Miguel de Servantes Saavedra', '3500'),
(5, 'Museo Nacional de Virreinato', 'CDMX', 'Hidalgo 99 San Martin  54600 Tepotzotlan Mexico', '4000'),
(6, 'Museo Nacional de Arte', 'CDMX', 'Calle Tacuba 8 Centro Historico de la Cdad de Mexi', '2350'),
(7, 'Palacio de Bellas Artes', 'CDMX', 'Av Juarez S/N, Centro Histórico del Estado de Méxi', '1769'),
(8, 'Museo de Arte Moderno', 'CDMX', 'Jesus Reyes Heroles 302, Delegacion San Buenaventu', '3400'),
(9, 'Pinacoteca Municipal', 'CDMX', '74200, Calle 11 Sur 303 Centro  74200 Atlixco Pue', '3603'),
(11, 'Museo de Arte Popular', 'CDMX', 'Revillagigedo 11, Colonia Centro, Centro, Cuautemo', '4532');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pintores`
--

CREATE TABLE `pintores` (
  `IdPintor` int(11) NOT NULL,
  `NombrePintor` varchar(50) NOT NULL,
  `Nacimiento` date NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL,
  `thumb` varchar(50) NOT NULL,
  `extracto` varchar(400) NOT NULL,
  `historia` text NOT NULL,
  `IdCorriente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pintores`
--

INSERT INTO `pintores` (`IdPintor`, `NombrePintor`, `Nacimiento`, `Nacionalidad`, `thumb`, `extracto`, `historia`, `IdCorriente`) VALUES
(1, 'Leonardo da Vinci', '1452-04-15', 'italiana', '1.png', 'En 1494, el convento dominico de Santa Maria dalle Grazie encargï¿½ a da Vinci la pintura de un fresco en una de sus estancias. Este mural, de mï¿½s de cuatro metros de largo y ocho de largo, no es otro que la famosa La ï¿½ltima cena, que terminï¿½ en 1498, sobre la que tanto se ha especulado a lo largo de la Historia.', 'Leonardo da Vinci (Leonardo di ser Piero da Vinci) Loudspeaker.svg escuchar (Vinci, 15 de abril de 1452 Amboise, 2 de mayo de 1519) fue un polÃ­mata florentino del Renacimiento italiano. Fue a la vez pintor, anatomista, arquitecto, paleontÃ³logo,3â€‹ artista, botÃ¡nico, cientÃ­fico, escritor, escultor, filÃ³sofo, ingeniero, inventor, mÃºsico, poeta y urbanista. MuriÃ³ acompaÃ±ado de Francesco Melzi,4â€‹ a quien legÃ³ sus proyectos, diseÃ±os y pinturas.2â€‹ Tras pasar su infancia en su ciudad natal, Leonardo estudiÃ³ con el pintor florentino Andrea de Verrocchio. Sus primeros trabajos de importancia fueron creados en MilÃ¡n al servicio del duque Ludovico Sforza. TrabajÃ³ a continuaciÃ³n en Roma, Bolonia y Venecia, y pasÃ³ sus Ãºltimos aÃ±os en Francia, por invitaciÃ³n del rey Francisco I.\r\n\r\nFrecuentemente descrito como un arquetipo y sÃ­mbolo del hombre del Renacimiento, genio universal, ademÃ¡s de filÃ³sofo humanista cuya curiosidad infinita solo puede ser equiparable a su capacidad inventiva,5â€‹ Leonardo da Vinci es considerado uno de los mÃ¡s grandes pintores de todos los tiempos y, probablemente, la persona con el mayor nÃºmero de talentos en mÃºltiples disciplinas que jamÃ¡s ha existido.6â€‹ Como ingeniero e inventor, Leonardo desarrollÃ³ ideas muy adelantadas a su tiempo, tales como el helicÃ³ptero, el carro de combate, el submarino y el automÃ³vil. Muy pocos de sus proyectos llegaron a construirse (entre ellos la mÃ¡quina para medir el lÃ­mite elÃ¡stico de un cable),Nota 2â€‹ puesto que la mayorÃ­a no eran realizables durante esa Ã©poca.Nota 3â€‹ Como cientÃ­fico, Leonardo da Vinci hizo progresar mucho el conocimiento en las Ã¡reas de anatomÃ­a, la ingenierÃ­a civil, la Ã³ptica y la hidrodinÃ¡mica.\r\n\r\nSu asociaciÃ³n histÃ³rica mÃ¡s famosa es la pintura. Dos de sus obras mÃ¡s conocidas, La Gioconda y La Ãšltima Cena, han sido copiadas y parodiadas en varias ocasiones, al igual que su dibujo del Hombre de Vitruvio. No obstante, Ãºnicamente se conocen alrededor de 20 obras suyas, debido principalmente a sus reiterados (y a veces desastrosos) experimentos con nuevas tÃ©cnicas y a su inconstancia crÃ³nica. Este reducido nÃºmero de creaciones, junto con sus cuadernos con dibujos, diagramas cientÃ­ficos y reflexiones sobre la naturaleza de la pintura, constituyen un legado para las sucesivas generaciones de artistas.\r\nNaciÃ³ el sÃ¡bado 15 de abril de 1452 Â«en la tercera hora de la nocheÂ», es decir, tres horas despuÃ©s del Ave MarÃ­a: a las diez y media.8â€‹ Se ha discutido si el nacimiento tuvo lugar en el castillo de Vinci, ciudad a unos 25 km en lÃ­nea recta de Florencia, o bien en la casa materna de Anchiano, una pedanÃ­a a unos dos kilÃ³metros de Vinci.Nota 4â€‹ Leonardo, descendiente de una rica familia de nobles italianos, fue hijo ilegÃ­timo: su padre, messer Piero Fruosino di Antonio (notario, canciller y embajador de la RepÃºblica de Florencia) dejÃ³ embarazada a Caterina, una humilde joven de familia campesina,9â€‹10â€‹ de quien se ha sospechado que pudiera ser una esclava de Oriente Medio.11â€‹ Martin Kemp, catedrÃ¡tico emÃ©rito de Historia del Arte en la Universidad de Oxford, tras investigar en los archivos toscanos, descubriÃ³ documentos que confirmarÃ­an la fecha del nacimiento, que tuvo lugar en la casa de campo paterna, a poco mÃ¡s de un kilÃ³metro de Vinci, y que su madre era una campesina local de quince aÃ±os, Caterina di Meo Lippi. Piero ya estaba prometido en matrimonio y el niÃ±o fue entregado al abuelo paterno, Antonio da Vinci que, probablemente, entregÃ³ una cierta cantidad a la madre como dote para que pudiera casarse. En declaraciones de impuestos de 1457, Antonio declarÃ³ que su nieto vivÃ­a con Ã©l y Caterina aparece casada con un campesino, Antonio di Piero Buti.12â€‹\r\n\r\nLeonardo, o Lionardo segÃºn su acta bautismal,8â€‹ fue bautizado y pasÃ³ sus cinco primeros aÃ±os en la casa de su padre en Vinci,8â€‹ donde fue tratado como un hijo legÃ­timo.13â€‹ Tuvo cinco madrinas y cinco padrinos, todos ellos habitantes del pueblo.8â€‹ AprendiÃ³ a leer y a escribir y adquiriÃ³ conocimientos de aritmÃ©tica, sin embargo, prÃ¡cticamente no aprendiÃ³ latÃ­n, base de la enseÃ±anza tradicional. El hecho de que tuviese una ortografÃ­a caÃ³tica muestra que su instrucciÃ³n no estuvo exenta de lagunas; en todo caso no fue la de un universitario.14â€‹', 2),
(2, 'Pablo Picasso', '1881-10-25', 'EspaÃ±ola', 'picasso_1.jpg', 'El joven Leonardo era un amante de la naturaleza, que observaba con gran curiosidad. Dibujaba caricaturas y practicaba la escritura especular en dialecto toscano.\r\n\r\nEsta enterrado en el parque del castillo de Vauvenargues (Bouches du Rhone.\r\n', 'Pablo Ruiz Picasso (MÃ¡laga, 25 de octubre de 1881-Mougins, 8 de abril de 1973) fue un pintor y escultor espaÃ±ol, creador, junto con Georges Braque, del cubismo.\r\n\r\nEs considerado desde la gÃ©nesis del siglo xx como uno de los mayores pintores que participaron en muchos movimientos artÃ­sticos que se propagaron por el mundo y ejercieron una gran influencia en otros grandes artistas de su tiempo. Sus trabajos estÃ¡n presentes en museos y colecciones de toda Europa y del mundo. AdemÃ¡s, abordÃ³ otros gÃ©neros como el dibujo, el grabado, la ilustraciÃ³n de libros, la escultura, la cerÃ¡mica y el diseÃ±o de escenografÃ­a y vestuario para montajes teatrales. TambiÃ©n tiene una breve obra literaria.\r\n\r\nEn lo polÃ­tico, Picasso se declaraba pacifista y comunista. Fue miembro del Partido Comunista de EspaÃ±a y del Partido Comunista FrancÃ©s hasta su muerte,2â€‹ acaecida el 8 de abril de 1973 a los noventa y un aÃ±os de edad, en su casa llamada Â«Notre-Dame-de-VieÂ»3â€‹4â€‹ de la localidad francesa de Mougins. EstÃ¡ enterrado en el parque del castillo de Vauvenargues (Bouches-du-Rhone).\r\n\r\nen le invierno de 1895 realizo su primer gran lienzo academico, la pirmera comunion (Museo Picasso Barcelona)\r\nen Barcelona, ciudad en la que residio unos 9 años, salvo algunas vacaciones de verano y estancias mas o menos largas en Madrid Paris.\r\nEn 1897 presento el lienzo Ciencia y caridad en la Exposicion Genral de Bellas Artes de Madrid.\r\nDurante el verano pao, una vez mas, sus vaciones en Malaga, donde pinto paisajes y corridas de toros.  \r\n', 4),
(3, 'Vicent Van Gogh', '1853-10-11', 'holandesa', 'vicent.jpeg', 'figura destacada del Postimpresionismo, es uno de los pintores favoritos de las masas. Sus fans simpatizan con la interpretación expresiva de los motivos de sus cuadros, sus colores vivos, sus pinceladas sueltas y su historia personal llena de drama, con una serie de altas y bajas entre la pasión por el arte, el fracaso comercial y la locura.', 'Vincent van Gogh (1853-1890), pintor holandés y figura destacada del Postimpresionismo.\r\nEntre noviembre de 1881 y julio de 1890, Vincent van Gogh pintó casi 900 pinturas. Después de su muerte, se ha vuelto uno de los artistas más famosos en el mundo. Las pinturas de Van Gogh han captado la mente y el corazón de millones de personas dentro y fuera del mundo de arte. \r\nEn diciembre de 1881, cuando empezó sus primeras pinturas a la edad de 28, Vincent escribió a su hermano Theo sobre hacerse pintor.\r\nVan Gogh trabajaba a un ritmo vertiginoso que le costó mucho dinero, le causó muchas tensiones mentales y fisicas que no lo dejó tiempo libre para hacer otras cosas. Pero el era perseverante. En una carta en marzo del 1882.\r\nEn las mismas cartas de 1882, Van Gogh escribió, “Hay dos maneras de pensar sobre la pintura, cómo hacerla y cómo no hacerla: cómo hacerla - con mucho dibujo y poco color; cómo no hacerla - con mucho color y poco dibujo. \r\nVan Gogh creía con firmeza que para ser un gran pintor, uno tenía que aprender a dibujar antes de añadir color. Durante los años Van Gogh llegó a dominar claramente el dibujar y empezó a usar más color. En cierto tiempo, uno de los aspectos más reconocidos de las pinturas de Van Gogh era el uso atrevido de color.\r\n\r\nMás o menos un año antes de su muerte, Van Gogh predijo que sería un gran “pintor del futuro,” quién sabría cómo usar sin parangón el color y sería el futuro de la pintura. Expresó esta idea en una carta a su hermano Theo en mayo de 1888,Durante su vida, Van Gogh no era un pintor famoso y luchó para ganarse la vida como artista. Van Gogh vendió solamente una pintura durante su vida :El viñedo rojo. Esta pintura fue vendida en Bruselas por 400 francos, unos pocos meses antes de su muerte.\r\n\r\nVincent van Gogh murió a la edad de 37 y su carrera como pintor terminó, pero empezó su legado como “el gran pintor del futuro” que inspiraría al mundo.', 4),
(4, 'Claude Monet', '1840-01-01', 'Frances', 'Claude.jpeg', 'otro de los favoritos de los aficionados al arte. Además de contar con el favor del público general, cuenta con el respaldo académico debido a su importancia en la historia del arte como uno de los fundadores del Impresionismo. De hecho, el nombre de este movimiento artístico proviene de su cuadro \"Impresión, salida del sol\"', 'Lider del movimiento de arte impresionista, los cuadros de Monet son reconocidos como los mas puros ejemplos de este estilo. Su importancia se refleja en el precio logrado por su oleo \"Le Bassin Aux Nympheas\", vendido el año 2008 en Londres por 40,9 millones de libras esterlinas.\r\nMonet sento las bases de la pintura moderna, su pincel no buscaba comunicar una historia ni dar una instruccion moral al espectador, sino que ponia en el lienzo impresiones en función de las sensaciones experimentadas por el ojo. Las pinceladas puntillistas, que pinto en sus cuadros con propiedad de maestro, son el origen de el arte pictorico moderno.\r\nCleude Monet (Paris, 14 de noviembre de 1840-Giverny, 5 de diciembre de 1926) fue un pintor frances, uno de los creadores del impresionismo.El termino impresionismo deriva del titulo de su obra Impresion, sol naciente (1872).\r\nSus primera obras, hasta la mitad de la decada de 1860, son de estilo realista.Monet logro exponer algunas en el Salon de Paris. A partir del final de la decada de 1860 comenzo a pintar obras impresionistas. Esta desviacion del gusto de la epoca, que era marcado por las academias de arte, empeoro su situacion economica a la vez que afianzo su decision de continuar en ese azoroso camino. En la decada de 187o formo parate de las exposiciones impresionistas en las cuales tambien participaron Pierre-Auguste Renoi y Edgar Degas.Su obra impresion, sol naciente formo parte del Salon des Refuses de 1874.Su carrera fue impulsada por el marchante Paul Durand-Ruel, pero a pesar de esto su situacion financiera permanecio siendo dificil hasta mediados de la decada de 1890.En esta epoca, Monet desarrollo el concepto de las series, en las que un motivo es pintado repetidas veces con distintas iluminacion. Al mismo tiempo comenzzo a trabajar en el famoso jardin de su casa en Giverny con estanques de nenufales que luego utilizo como motivo para sus pinturas.\r\n', 4),
(5, 'Salvador Dalí', '1904-02-23', 'Español', 'salvador.jpeg', 'Polifacético, excéntrico y apasionado devoto de su esposa Gala. Para muchos, Dalí es el vivo retrato del genio artístico, para otros uno de los artistas más sobrevalorados. Sea cuál sea la opinión sobre su persona, lo cierto es que su genio lo hará pasar a la historia como uno de los más talentosos y visionarios artistas plásticos.', 'Es uno de los artistas más reputados de la historia de España, nació en 1904 y murió a los 85 años en la ciudad natal: Figueras (Cataluña). Salvador Dalí fue el pintor más destacado del movimiento surrealista español. Tras su muerte dejó tras de sí una basta colección de obras, y una nueva forma de entender la estética y el arte.\r\nExcéntrico como nadie, su imagen personal e ideas; todo estaba teñido por su sensibilidad artística.\r\nUno de los rasgos de Dalí que más llamaba la atención era el contraste generado por una personalidad tan peculiar, y la enorme capacidad de trabajo y excelencia técnica, que demostraba constantemente.\r\n\r\nSalvador Felipe Jacinto Dali i Domènech marquez de dali de pubol (Figueras, 11 de mayo 1904- ibidem, 23 de enero de 1989), fue pintor, escultor, grabador,escenografo y escritor español del siglo XX. Se le considera uno de los maximos representantes del surrealismo.\r\nEs conocido por sus impactantes y oniricas imagenes surrealistas.Sus habilidades pictoricas se suelen atribuir a la influencia y admiracion por el arte renacentista.Tambien fue un experto dibujante.\r\nuna de sus pinturas mas celebres es la persistencia de la memoria realizada en 1931.\r\nEn 1916 descubrio la pintura contemporanea durante una visita familiar a Cadaques, donde conocio a la familia de Ramon Pichot, un artista local que viajaba regularmente a Paris la capital del arte del momento.\r\nen 1922 se alojo en la celebre Residencia de Estudiantes de Madrid para comenzar sus estudios en la Real Academia de Bellas Artes de San Fernando.\r\nFue expulado de la Academia en 1926, poco antes de sus examenes finales, por afirmar que no habia nadie en esta en condiciones de examinarlo.\r\nLA maestria de sus recursos pictoricos se refleja en su impecable realista Cesta de pan, pintada en 1926.\r\nEse mismo año visito Paris por primera vez donde conocio a Pablo Picasso, a quien el joven Dali admiraria profundamente.', 3),
(6, 'Rembrandt Harmenszoon van Rijn', '1606-07-15', 'Holandesa', 'Rem.jpeg', 'fue pintor más famoso del Siglo de Oro holandés. Hábil delineante técnico, dibujante y creador de piezas impresas, es reconocido por sus cuadros históricos, sus retratos y, en especial, por los autorretratos que pintó desde su juventud. En estos, que continuara realizando a lo largo de su carrera se le ve envejecer y así también queda explícita la evolución de su técnica pictórica.', 'Rembrandt fue un pintor y grabador holandes, principal participe del estilo barroco y la escuela flamenca, considerado el artista pictorico mas talentoso y prolifico de la historia de Holanda.\r\nLas pinturas de Rembrandt no solo ofrecen una propuesta estetica, ademas estan repletas de significado y sencillez. Especialista en escenas tradicionales y biblicas, huia de la ostentacion estetica y hasta provocadora que otros artistas barrocos proferian.\r\nRembrandt nunca encasillo sus obras en un estilo, ni se acomodo a una corriente artistica. Lejos de esto era El mismo quien lideraba tendencias, innovaba y cambiaba su forma de pintar constantemente.\r\nAlrededor de sus cuadros se han hecho toda clase de estudios historicos, teologicos y cientificos: las tematicas, la composicion de los pigmentos, la forma de las pinceladas, los colores, etc.La obra pictorica de Rembrandt esta expuesta en los museos de mayor renombre del mundo, entre ellos: El Prado, Louvre, Hermitage y MET New York, entre otros.\r\n\r\nRembrandt Harmenszoon van Rijn(Leiden, 15 de julio de 1606-Amsterdam, 4 de octubre de 1669), mas conocido simplemente como Rembrandt, fue un pintor y grabador neerdandes. La historia del arte lo considera uno de los mayores maestros barrocos de la pintura y el grabado, siendo con seguridad el artista mas importante de la historia de los Paises Bajos. Su aportacion a la pintura coincide con lo que los historiadores han dado en llamar la edad de oro neerlandesa, el considerado momento cumbre de su cultura, ciencia, poderio e influencia politica.\r\n\r\nHabiendo alcanzado el exito en la juventud, sus ultimos años estuvieron marcados por la tragedia personal y la ruina economica. Sus dibujos y pinturas siempre fueron muy populares gozando tambien de gran predicamento entre los artistas y durante veinte años se convietio en el maestro de practicamente todos los pintores neerdandeses.\r\nEntre los mayores logros creativos de Rembrandt estan los magisteriales retratos que realizo para sus contemporaneos, sus autorretratos y sus ilustraciones de escena biblica.En sus autorretratos, especialmente, se observa siempre la mirada humilde y sincera de un artista que trazo en ellos su propia biografia.\r\n\r\nRembrandt  tenia un profundo cocimiento de la iconografia clasica y en sus pinturas y grabados solia interpretar libremente paraajustarla a su propia experiencia. Asi, en la representacion de una escena biblica Rembrandt solia combinar su propia conocimiento del texto con su particular concepto de la composicion clasica y algunas observaciones anecdoticas de la poblacion judia de Amsterdam. Por la empatia con retrato la condicion humana, Rembrandt  ha sido considerado uno de los grandes profetas de la civilizacion.\r\n', 1),
(7, 'Michelangelo Merisi da Caravaggio ', '1571-09-29', 'Italiana', 'Miche.jpeg', 'ue un pintor italiano famoso por el naturalismo de sus pinturas sacras y el uso teatral del claroscuro, de gran influencia en el desarrollo del Barroco. Pese a que en vida no le faltaron los encargos de pinturas religiosas, fue criticado tanto por la representación realista y humana de sus personajes', 'Michelangelo Merisi da Caravaggio (Milan, 29 de septiembre de 1571 - 18 de julio de 1610). Fue uno de los exponentes más destacados de la escuela naturalista que surgio en Italia como oposicion a la corriente manierista triunfante durante el siglo XVI. Revoluciono el arte de su epoca, y se le considera uno de los primeros artistas del estilo barroco. Influyo en el desarrollo del primer barroco, creando toda una corriente de pintores caravaggistas conocidos como \"bambochantes\" (nombre en honor a su principal seguidor, que no discipulo, Bamboccio). \r\nEn pintura hizo gran uso del claroscuro y sus pinturas trataban generalmente el tema religioso. No dudo nunca en fijarse como modelos para sus trabajos en prostitutas o mendigos, como en su obra La muerte de la Virgen, en la que la cara de la Virgen Maria es la de una prostituta que había muerto ahogada en el río Tiber. \r\nAlgunas de sus obras han desaparecido y solo son conocidas por testimonios de terceros, como una obra llamada Susana, a la que alude el poeta Giambattista Marino en una carta a Paolo Berti. \r\nHoy en día, solo se conservan menos de 100 pinturas, de las cuales 80 son genuinas y el resto se le atribuyen en medio de polemicas y debates. \r\n\r\nCaravaggio (Milan, 29 de septiembre de 1571-Porto Ercole, 18 de junio de 1610) conocido como Caravaggio , fue el pintor italiano, activo en Roma, Napoles, Malta y silicia entre 1593 y 1610.Su Pintura combina una observacion realista de la figura humana, tanto en lo fisico como en lo emocional, con un uso dramatico de la luz, lo cual ejercio una influencia decisiva en la formacion de la pintura del Barroco.\r\n\r\nCaravaggio  plasmaba una detenida observacion anatomica con un uso dramatico del claroscuro que llegaria a ser conocido como tenebrismo. Esta tecnica se convirtio en un elemento estilistico dominante, oscureciendo las sombras y trasfigurando objetos en brillantes haces d luz. Expreso vividamente momentos y escenas cruciales, a menudo con muchas violentas, tortura y muerte.Trabajaba rapido con modelos del natural, prescindiendo de los bocetos para trabajar directamente sobre el lienzo.Su influencia fue profunda en el nuevo estilo barroco que emrgio del manierismo y se puede ratrear en las obras de grandes maestros como Pedro Pablo Rubens, Jose de Rivera, Rembrandt y Diego Velazquez , asi como un innumerables artistas de la siguiente generacion, que por manifestar su profundo influjo fueron llamados caravaggistas o tenebristass.', 1),
(8, 'Francisco de Goya y Lucientes', '1746-03-30', 'Español', 'francisco.jpeg', 'considerado uno de los iniciadores de la estética del Romanticismo y precursor de las vanguardias pictóricas del siglo XX. También es famoso por su talento como retratista, representando el aspecto psicológico de sus modelos más allá de su apariencia. ', 'Francisco Jose de Goya y Lucientes (Fuendetodos, España; 30 de marzo de 1746-Burdeos, Francia; 16 de abril de 1828) fue un pintor y grabador español. Su obra abarca la pintura de caballete y mural, el grabado y el dibujo.\r\n\r\n Su estilo evoluciono desde el rococo, pasando por el neoclasicismo, hasta el prerromanticismo, siempre interpretados de una forma personal y original, y siempre con un rasgo subyacente de naturalismo, del reflejo de la realidad sin una visión idealista que la edulcore ni desvirtúe, donde es igualmente importante el mensaje ético. \r\n\r\nPara Goya la pintura es un vehículo de instrucción moral, no un simple objeto estetico.\r\nSus referentes mas contemporaneos fueron Giambattista Tiepolo y Anton Raphael Mengs, aunque también recibio la influencia de Diego Velazquez y Rembrandt.El arte goyesco supone uno de los puntos de inflexion que entre los siglos xviii y xix anuncian la pintura contemporanea y es precursor de algunas de las vanguardias pictoricas del siglo XX, especialmente el expresionismo;por todo ello, se le considera uno de los artistas españoles más relevantes y uno de los grandes maestros de la historia del arte mundial. \r\nAdemas, su obra refleja el convulso periodo historico en que vive, particularmente la guerra de la Independencia, de la que la serie de estampas de Los desastres de la guerra es casi un reportaje moderno de las atrocidades cometidas y compone una vision exenta de heroismo donde las víctimas son siempre los individuos de cualquier clase y condicion. \r\n\r\nGran popularidad tiene su Maja desnuda, en parte favorecida por la polemica generada en torno a la identidad de la bella retratada. De comienzos del siglo XIX datan tambien otros retratos que emprenden el camino hacia el nuevo arte burgues. \r\nAl final del conflicto hispano-frances pinto dos grandes cuadros a proposito de los sucesos del levantamiento del Dos de Mayo de 1808, que sentaron un precedente tanto estetico como tematico para el cuadro de historia, que no solo comenta sucesos proximos a la realidad que vive el artista, sino que alcanza un mensaje universal. \r\n\r\nEntre otros trabajos suyos, su obra culminante abarca los Disparates,al igual que la serie de pinturas al oleo sobre el muro seco, las Pinturas negras, con que decoró su casa de campo, la Quinta del Sordo.En ellas Goya anticipo la pintura contemporanea y los variados movimientos de vanguardia que marcarian el siglo XX y son, segun J. M. Matilla, jefe de Conservacion de Dibujos y Estampas del Museo Nacional del Prado, «las primeras manifestaciones del caracter verdaderamente moderno de Goya, al que no debemos dudar en calificar de primer artista moderno».\r\n', 5),
(9, 'Pierre-Auguste Renoir', '1841-02-25', 'Francesa', 'pierre.jpeg', ' fue un pintor francés y uno de los principales participantes en el desarrollo de movimiento impresionista. Es famoso por su paleta colorista, vibrante y luminosa, y sus escenas alegres y llenas de vida.', 'Pierre Auguste Renoir nace en 1841, en Francia. \r\nJunto con otros artistas del Impresionismo, Pierre encuentra en la pintura una forma distinta de interpretar los acontecimientos que ocurrian en esos años. \r\nTanto es asi que a traves de la iluminacion y los colores desarrolla una realidad paralela, llena del encanto y la viveza, que el mismo carece, debido a sus dificultades personales.\r\n\r\nUn elemento pictorico presente durante toda su carrera, es el difuminado caracteristico que aplica a desnudos y figuras femeninas, esta forma de pintar definio su estilo. \r\n\r\nA mediados del 1880 P. A. Renoir comienza a sufrir de artritis en las manos, esto hace que su trabajo tome otro sentido, el dolor le hace sentar cabeza, y las pinturas se comienzan a empapar de un realismo nunca visto.\r\nRenoir comprende al fin que la realidad sin alterarse es tambien bella, que las imperfecciones hacen contraste con las perfecciones, y es en esa diferencia donde se encuentra la belleza.\r\n\r\nNace en el pintor el deseo de vivir su realidad. Avanzado en años siguio pintando incluso teniendo que atarse el pincel a la muñeca por los dolores de la enfermedad. \r\nEste amor se puede percibir en la delicadeza de las figuras y la alegria que se manifiesta en todos sus trabajos.\r\nEn sus se aprecia el estilo impresionista más puro, aquel que cultivarlos solo un pequeño grupo de fundadores del estilo. Paisajes, retratos y escenas costumbristas conforman la mayoria del catalogo de Renoir.\r\nPierre-Auguste Renoir (25 de febrero de 1841 Cagnes Sur MEr , Alpes Maritimos - 3 de diciembre de 1919) fue un pintor frances impresionista, que en la segunda parte de su carrera se intereso en la pintura de cuerpos femeninos en paisajes, inspirados a menudo en pinturas clasicas renacentistas y barrocas.\r\n\r\nRenoi ofrece una interpretacion mas sensual del impresionismo, mas inclinada a lo arnamental y la belleza.\r\nNo suele coincidir en lo mas aspero de la vida moderna, como a veces hicieron MAnet o Van Gogh. Mantuvo siempre un pie en la tradicion; se puso en relacion con los pintores del siglo XVIII que mostraba la sociedad galante del Rococo como Watteau.\r\n\r\nEn sus creaciones muestra la alegria de vivir, incluso cuando los protagonistas son trabajadores.\r\nSiempre son personajes que se divierten , en una naturaleza agradable.\r\nSe le puede emparentar por ello con Henri Matisse, a pesar de sus estilos distintos.\r\nTrato temas de flores, escenas de dulces de niños y mujeres y sobre todo el desnudo femenino, que ecuerda a Rubens por las formas gruesas.\r\nEn cuanto a su estilo y tecnica se nota en el un fuerte influjo de Corot.\r\n\r\nRenoi posee una vibrante y luminosa paleta que hace de el un impresionista muy especial.El palco, El columpio. Baile en el Moulin de la Galette, Almuerzo de remeros y Las grandes bañistas son sus obras mas representativas.', 4),
(10, 'Diego Rodriguez de Silva y Velazquez ', '1599-08-06', 'Español', 'diego.jpeg', 'es el pintor mas famoso del Siglo de Oro español. Uno de los maestros del Barroco y de la pintura universal, fue un pintor de corte de carrera brillante y modelo de los pintores realistas de las generaciones posteriores. Se le considera, ademas, uno de los mejores retratistas de la historia del arte.', 'Artista del período barroco (Siglo de Oro español), considerado por muchos como el pintor mas talentoso de todos los tiempos, su importancia comenzo a ser reconocida 2 siglos despues de su muerte. Sus obras mas destacadas son actualmente parte de la coleccion permanente del Museo del Prado, en Madrid.\r\n\r\nDiego Rodriguez de Silva y Velazquez (sevilla, bautizado el 6 de junio de 1599 Madrid, 6 de agosto de 1660), conocido como Diego Velazquez fue un pintor barroco español considerado uno de los maximos exponentes de la pintura española y maestro de la pintura universal.\r\n\r\npaso sus primeros años en Sevilla donde desarrollo un estilo naturista de iluminacion tenebrista, por influencia de Caravaggio y sus seguidores. A los 24 años se translado a Madrid, donde fue nombrado pintor del rey Felipe IV y cuatro años despues fue ascendido a pintor de camara, el cargo mas importante entre los pintores de la corte. \r\nA esta labor dedico el resto de su vida.Su trabajo consitia en pintar retratos del rey de su familia, asi como cuadros destinados a decorar las casas reales .\r\nSu presencia en la corte le permitio estudiar la coleccion real de pintura que, junto con las enseñanzas de su viaje a Italia, donde conocio tanto la pintura antigua como la que se hacia en su tiempo, fueron influencias determinantes para evolucionar a un estilo de gran luminosidad, con pinceladas rapidas y sueltas.\r\n\r\nEn su madurez, a partir se 1631, pinto de esta forma grandes obras como la rendicion de Breda.\r\nEn su ultima decada su estilo se hizo mas esquematico y abocetado, alcanzando un dominio extraordinario de la luz.\r\nEste periodo se inauguro con el Retrato del Padre Inocencio X, pintado en su segundo viaje a Italia y a el pertenecen sus uñtimas dos obras maestras: Las Meninas y Las Hilanderas.\r\nSu catalogo consta de una 120 o 130 obras.\r\nEl reconocimiento como pintor universal se produjo tardiamente, hacia 1850.\r\nAlcanzo su maxima fama entre 1880 y 1920, concidiendo con las epoca de los pintores impresionistas franceses para los que fue un referente.\r\nManet se sintio maravillado con su obra y se califico como pintor de pintores y el mas grande pintor pintor que haya existido.\r\nLa parte fundamental de sus cuadros que integraban la coleccion real se observaba en el Museo del Prado en Madrid. ', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `protege`
--

CREATE TABLE `protege` (
  `IdPintor` int(11) NOT NULL,
  `IdPat` int(11) NOT NULL,
  `FechaIni` date NOT NULL,
  `FechaFin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `protege`
--

INSERT INTO `protege` (`IdPintor`, `IdPat`, `FechaIni`, `FechaFin`) VALUES
(1, 10, '2010-12-29', '2020-04-30'),
(2, 2, '2015-11-01', '2020-04-29'),
(3, 5, '2009-08-18', '2019-07-20'),
(3, 6, '2019-07-20', '2022-07-20'),
(4, 3, '2006-01-01', '2020-01-01'),
(5, 1, '2001-09-13', '2020-10-11'),
(6, 9, '2014-06-14', '2020-07-15'),
(7, 8, '2015-05-15', '2020-05-15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `corrientes`
--
ALTER TABLE `corrientes`
  ADD PRIMARY KEY (`IdCorriente`);

--
-- Indices de la tabla `cuadros`
--
ALTER TABLE `cuadros`
  ADD PRIMARY KEY (`Codigo`),
  ADD KEY `IdPin` (`IdPin`),
  ADD KEY `IdPintor` (`IdPintor`);

--
-- Indices de la tabla `patrocinadores`
--
ALTER TABLE `patrocinadores`
  ADD PRIMARY KEY (`IdPat`),
  ADD KEY `IdPin` (`IdPin`);

--
-- Indices de la tabla `pinacotecas`
--
ALTER TABLE `pinacotecas`
  ADD PRIMARY KEY (`IdPin`);

--
-- Indices de la tabla `pintores`
--
ALTER TABLE `pintores`
  ADD PRIMARY KEY (`IdPintor`),
  ADD KEY `IdCorriente` (`IdCorriente`);

--
-- Indices de la tabla `protege`
--
ALTER TABLE `protege`
  ADD PRIMARY KEY (`IdPintor`,`IdPat`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `corrientes`
--
ALTER TABLE `corrientes`
  MODIFY `IdCorriente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cuadros`
--
ALTER TABLE `cuadros`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `patrocinadores`
--
ALTER TABLE `patrocinadores`
  MODIFY `IdPat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pinacotecas`
--
ALTER TABLE `pinacotecas`
  MODIFY `IdPin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pintores`
--
ALTER TABLE `pintores`
  MODIFY `IdPintor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuadros`
--
ALTER TABLE `cuadros`
  ADD CONSTRAINT `FK_cuadros_pinacotecas` FOREIGN KEY (`IdPin`) REFERENCES `pinacotecas` (`IdPin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_cuadros_pintores` FOREIGN KEY (`IdPintor`) REFERENCES `pintores` (`IdPintor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `patrocinadores`
--
ALTER TABLE `patrocinadores`
  ADD CONSTRAINT `FK_patrocinadores_pinacotecas` FOREIGN KEY (`IdPin`) REFERENCES `pinacotecas` (`IdPin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pintores`
--
ALTER TABLE `pintores`
  ADD CONSTRAINT `FK_pintores_corrientes` FOREIGN KEY (`IdCorriente`) REFERENCES `corrientes` (`IdCorriente`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
