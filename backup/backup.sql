-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_reservas
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `cancelacionesportipotrabajo`
--

DROP TABLE IF EXISTS `cancelacionesportipotrabajo`;
/*!50001 DROP VIEW IF EXISTS `cancelacionesportipotrabajo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cancelacionesportipotrabajo` AS SELECT 
 1 AS `TIPO_TRABAJO`,
 1 AS `TotalCancelaciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `capacidadpuestos`
--

DROP TABLE IF EXISTS `capacidadpuestos`;
/*!50001 DROP VIEW IF EXISTS `capacidadpuestos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `capacidadpuestos` AS SELECT 
 1 AS `IDTALLER`,
 1 AS `nombre_taller`,
 1 AS `TIPO_PUESTO`,
 1 AS `IDPUESTOTALLER`,
 1 AS `capacidad_total`,
 1 AS `reservas_actuales`,
 1 AS `capacidad_disponible`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `IDCLIENTE` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL DEFAULT 'USUARIO_UNKNOW',
  `TELEFONO` varchar(20) NOT NULL,
  `CORREO` varchar(100) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  PRIMARY KEY (`IDCLIENTE`),
  UNIQUE KEY `CORREO` (`CORREO`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Zarah Zini','(815) 2396965','zzini0@theguardian.com','7557673'),(2,'Aubry Toffanelli','(416) 7694914','atoffanelli1@dion.ne.jp','25682698'),(3,'Perrine Guilford','(649) 5271045','pguilford2@phoca.cz','19161189'),(4,'Sayre Philipet','(800) 5912865','sphilipet3@youtube.com','2452337'),(5,'Greggory Benka','(802) 3639414','gbenka4@upenn.edu','22633675'),(6,'Yvor Dearness','(800) 4237520','ydearness5@hp.com','31818241'),(7,'Mark Tallach','(657) 5102297','mtallach6@msu.edu','35088905'),(8,'Isidore Epilet','(358) 8466261','iepilet7@lulu.com','30925541'),(9,'Lettie Follitt','(637) 5855775','lfollitt8@godaddy.com','19058752'),(10,'Ashby Snelman','(812) 2158191','asnelman9@usda.gov','2325854'),(11,'Delora Kingsnoad','(856) 5338589','dkingsnoada@networksolutions.com','28386559'),(12,'Nollie Mayte','(462) 8317978','nmayteb@webeden.co.uk','19471167'),(13,'Gilberto Dennerley','(509) 3522911','gdennerleyc@altervista.org','17187876'),(14,'Kattie Haquin','(444) 3100845','khaquind@wisc.edu','22502149'),(15,'Jarad Phette','(197) 1732415','jphettee@angelfire.com','41942394'),(16,'Maribel Alfonzo','(922) 2037782','malfonzof@mit.edu','12062349'),(17,'Brita Mangeon','(741) 9708927','bmangeong@phoca.cz','29400192'),(18,'Dreddy Kemmer','(477) 9445203','dkemmerh@dailymail.co.uk','20876291'),(19,'Cheri Tibols','(786) 1326676','ctibolsi@123-reg.co.uk','24907393'),(20,'Sloane Pinching','(741) 8089730','spinchingj@unblog.fr','36704311'),(21,'Brittany Fuster','(649) 7775454','bfusterk@huffingtonpost.com','30698191'),(22,'Langston Josse','(976) 8168826','ljossel@amazonaws.com','10015471'),(23,'Jerry Nenci','(704) 2688025','jnencim@unc.edu','15974755'),(24,'Coop Koomar','(891) 1259060','ckoomarn@pen.io','31200061'),(25,'Parry Keeri','(267) 9516875','pkeerio@psu.edu','25764416'),(26,'Ana Farran','(879) 3773948','afarranp@theatlantic.com','3820406'),(27,'Casey Strowthers','(123) 9549705','cstrowthersq@reuters.com','29199721'),(28,'Hastie O\'Dempsey','(824) 1116929','hodempseyr@ebay.com','40161254'),(29,'Edee Lafford','(537) 2691840','elaffords@a8.net','11590332'),(30,'Marcus Kubczak','(638) 1890233','mkubczakt@blogger.com','12469868'),(31,'Beth Bevens','(137) 8670530','bbevensu@furl.net','37622023'),(32,'Abigale Lyttle','(454) 4293260','alyttlev@discovery.com','19077644'),(33,'Vinnie Cumine','(317) 7820529','vcuminew@cnet.com','20063930'),(34,'Falkner Probate','(195) 1115016','fprobatex@mlb.com','1914781'),(35,'Carlye Laterza','(149) 8425013','claterzay@skyrock.com','5355595'),(36,'Belvia Late','(483) 2804926','blatez@g.co','6865143'),(37,'Galen Hofler','(267) 3257785','ghofler10@google.it','34426723'),(38,'Rosella Pomroy','(675) 4199065','rpomroy11@army.mil','7971321'),(39,'Jenifer Bryant','(888) 2318009','jbryant12@mlb.com','22192675'),(40,'Cristal Fickling','(824) 1459198','cfickling13@linkedin.com','26706591'),(41,'Masha Heers','(769) 4765322','mheers14@ehow.com','35470350'),(42,'Gene Halso','(964) 8862386','ghalso15@blog.com','15926386'),(43,'Julianne Banane','(729) 3975712','jbanane16@house.gov','27128308'),(44,'Hal Earsman','(871) 4034355','hearsman17@archive.org','3244875'),(45,'Phebe Suero','(705) 3533095','psuero18@npr.org','29695331'),(46,'Minerva Dowzell','(730) 1760498','mdowzell19@google.fr','21718452'),(47,'Mariam Denton','(133) 7166604','mdenton1a@indiatimes.com','25219861'),(48,'Arleta Loddy','(549) 2641726','aloddy1b@sbwire.com','31354412'),(49,'Shaine Hallor','(487) 8991449','shallor1c@boston.com','40589758'),(50,'Alexandra Escofier','(483) 3851697','aescofier1d@msn.com','35870009'),(51,'Jase Barette','(918) 9754308','jbarette1e@utexas.edu','11717615'),(52,'Dame MacLeese','(141) 5207025','dmacleese1f@tinyurl.com','19136656'),(53,'Barbabra Gennrich','(240) 7813926','bgennrich1g@kickstarter.com','21162699'),(54,'Lethia McEneny','(111) 2553050','lmceneny1h@cbsnews.com','4472920'),(55,'Irvine Halden','(176) 1728552','ihalden1i@globo.com','12995852'),(56,'Somerset Fretwell','(380) 6283920','sfretwell1j@si.edu','14432549'),(57,'Clareta Seabridge','(968) 8069738','cseabridge1k@yandex.ru','2383585'),(58,'Eula Rableau','(252) 5891857','erableau1l@nymag.com','40691864'),(59,'Hobey Hutsby','(411) 1095747','hhutsby1m@feedburner.com','4028596'),(60,'Marleen Sarah','(413) 3513189','msarah1n@seattletimes.com','25316698'),(61,'Harlan Harm','(966) 9990659','hharm1o@icio.us','32579789'),(62,'Haley Lindelof','(530) 7506528','hlindelof1p@cbslocal.com','14082960'),(63,'Magdalen Botten','(474) 8137483','mbotten1q@hibu.com','39963726'),(64,'Cammi Plampin','(648) 5027239','cplampin1r@yelp.com','19243937'),(65,'Nanon Gudyer','(926) 2421821','ngudyer1s@addtoany.com','11763617'),(66,'Berty Ghelardoni','(445) 3713335','bghelardoni1t@ted.com','29500199'),(67,'Minnaminnie Wagnerin','(111) 3931965','mwagnerin1u@wired.com','3014641'),(68,'Ted Looby','(637) 3297880','tlooby1v@adobe.com','16499368'),(69,'Hildagarde Olivera','(123) 6725338','holivera1w@tamu.edu','7020622'),(70,'Dorie Romaint','(512) 3011980','dromaint1x@bbb.org','9657771'),(71,'Lyndy Geggie','(934) 2983486','lgeggie1y@homestead.com','5082087'),(72,'Joyann Ganforthe','(912) 7794737','jganforthe1z@nydailynews.com','41575846'),(73,'Christiano Dewdeny','(179) 2920418','cdewdeny20@guardian.co.uk','38029182'),(74,'Kelly Halleybone','(196) 1794515','khalleybone21@ow.ly','7171940'),(75,'Danice Vickerstaff','(680) 6361289','dvickerstaff22@mit.edu','12888274'),(76,'Eran Radmore','(884) 4767461','eradmore23@census.gov','40930669'),(77,'Culver Dennitts','(463) 3105637','cdennitts24@bluehost.com','3757255'),(78,'Shayna Simonin','(256) 3453032','ssimonin25@delicious.com','10554541'),(79,'Hymie Glabach','(423) 9781351','hglabach26@over-blog.com','38162844'),(80,'Helen Stenhouse','(602) 2500577','hstenhouse27@google.com.au','37205540'),(81,'Inger Greatbatch','(277) 9552645','igreatbatch28@yale.edu','16048861'),(82,'Sissie Cutts','(626) 7025614','scutts29@soundcloud.com','8932115'),(83,'Jaynell Vispo','(590) 2912646','jvispo2a@slashdot.org','5520899'),(84,'Franciskus Josh','(546) 8513512','fjosh2b@abc.net.au','5775571'),(85,'Currey Coghlan','(923) 5153432','ccoghlan2c@wordpress.com','22856818'),(86,'Kain Lewens','(775) 4277855','klewens2d@noaa.gov','12126908'),(87,'Colas Tankard','(884) 7691974','ctankard2e@fc2.com','34611732'),(88,'Frances Pettegre','(932) 3408951','fpettegre2f@sogou.com','34778834'),(89,'Elsie MacCoughan','(938) 8713405','emaccoughan2g@ycombinator.com','38320916'),(90,'Betti Paulitschke','(756) 6065746','bpaulitschke2h@nih.gov','20054131'),(91,'Mildred Simmons','(145) 3562733','msimmons2i@noaa.gov','28577865'),(92,'Eryn Corsham','(478) 6521155','ecorsham2j@google.com','8463399'),(93,'Debbie Guterson','(791) 4865508','dguterson2k@seesaa.net','15625447'),(94,'Jacquenette Drage','(336) 8554667','jdrage2l@elpais.com','38286157'),(95,'Borg Wallsworth','(970) 1836975','bwallsworth2m@fc2.com','19338815'),(96,'Lazar Hynson','(228) 2246823','lhynson2n@forbes.com','33711447'),(97,'Conan Sainthill','(191) 1191125','csainthill2o@wunderground.com','28791541'),(98,'Lonnard De Dantesie','(134) 2873140','lde2p@mediafire.com','38882248'),(99,'Meyer Mullaly','(717) 8155358','mmullaly2q@umich.edu','31727043'),(100,'Noel Renvoys','(205) 3524550','nrenvoys2r@howstuffworks.com','4930971');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_cliente_trigger` BEFORE INSERT ON `cliente` FOR EACH ROW BEGIN
    DECLARE correo_count INT;
    
    SELECT COUNT(*) INTO correo_count
        FROM CLIENTE
    WHERE CORREO = NEW.CORREO;
    
    IF correo_count > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El correo electrónico ya está en uso.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_trigger` AFTER INSERT ON `cliente` FOR EACH ROW BEGIN
    INSERT INTO LOG_CAMBIOS (tabla_afectada, accion, fecha, idcliente, usuario)
    VALUES ('CLIENTE', 'INSERT', NOW() , NEW.IDCLIENTE,USER());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dueno`
--

DROP TABLE IF EXISTS `dueno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dueno` (
  `IDDUENO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL,
  `CORREO` varchar(100) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `TELEFONO` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDDUENO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dueno`
--

LOCK TABLES `dueno` WRITE;
/*!40000 ALTER TABLE `dueno` DISABLE KEYS */;
INSERT INTO `dueno` VALUES (1,'Clarence Ventris','cventris0@oaic.gov.au','24797981','(390) 4487193'),(2,'Hughie Wardle','hwardle1@weather.com','20887949','(618) 4168143'),(3,'Delmer Pilpovic','dpilpovic2@sourceforge.net','31908006','(836) 5876077'),(4,'Anatollo Snowdon','asnowdon3@uiuc.edu','20456705','(464) 1081115'),(5,'Sophie Edsall','sedsall4@icq.com','39921269','(144) 2280155'),(6,'Dacey Izhaky','dizhaky5@epa.gov','18643219','(224) 4702707'),(7,'Jeremias Barczewski','jbarczewski6@t-online.de','5547035','(410) 3963422'),(8,'Torre Marskell','tmarskell7@oaic.gov.au','31391127','(381) 7168209'),(9,'Felice Matys','fmatys8@twitter.com','33056752','(226) 8185567'),(10,'Shepherd Ace','sace9@tiny.cc','20079220','(131) 2658870'),(11,'Michail Henningham','mhenninghama@jigsy.com','30527371','(705) 3376592'),(12,'Jacquetta Foulser','jfoulserb@gravatar.com','7044668','(453) 5620802'),(13,'Gloria Tordoff','gtordoffc@drupal.org','30206263','(439) 1582079'),(14,'Siegfried Saltern','ssalternd@bbc.co.uk','10522239','(654) 5409501'),(15,'Daisy Jaggers','djaggerse@accuweather.com','31070471','(577) 3506982');
/*!40000 ALTER TABLE `dueno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `IDEMPLEADO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL,
  `TELEFONO` varchar(20) NOT NULL,
  `CORREO` varchar(100) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `IDTIPOTRABAJO` int NOT NULL,
  `IDTALLER` int NOT NULL,
  PRIMARY KEY (`IDEMPLEADO`),
  KEY `FK_EMPLEADO_CLIENTE` (`IDTALLER`),
  KEY `FK_EMPLEADO_TRABAJO` (`IDTIPOTRABAJO`),
  CONSTRAINT `FK_EMPLEADO_CLIENTE` FOREIGN KEY (`IDTALLER`) REFERENCES `taller` (`IDTALLER`),
  CONSTRAINT `FK_EMPLEADO_TRABAJO` FOREIGN KEY (`IDTIPOTRABAJO`) REFERENCES `tipo_trabajo` (`IDTIPOTRABAJO`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Glenden Semper','(880) 1229536','gsemper0@deviantart.com','41460844',2,15),(2,'Marcel Skerratt','(881) 5484994','mskerratt1@skyrock.com','37838137',3,12),(3,'Paten Heaney','(126) 8670433','pheaney2@sphinn.com','1293031',4,14),(4,'Noella Denkel','(214) 2271744','ndenkel3@oaic.gov.au','23265919',3,7),(5,'Anet Truran','(879) 1088001','atruran4@cnbc.com','17630699',5,5),(6,'Cele Sawtell','(955) 5210534','csawtell5@hubpages.com','31557653',2,14),(7,'Zilvia Ganderton','(686) 1822448','zganderton6@cafepress.com','23192624',7,14),(8,'Obadias Bengoechea','(914) 2686781','obengoechea7@mediafire.com','7357481',2,12),(9,'Erv Copo','(983) 7329505','ecopo8@google.de','40817866',6,7),(10,'Brandy Karpf','(646) 2909648','bkarpf9@dagondesign.com','2480550',3,8),(11,'Brenden Aspenlon','(182) 9314072','baspenlona@house.gov','16188595',7,7),(12,'Hamlin Smyley','(391) 2594049','hsmyleyb@nature.com','29300133',8,10),(13,'Avril Tolliday','(946) 1984777','atollidayc@addtoany.com','9808460',2,7),(14,'Kylynn Sugge','(324) 3380207','ksugged@unc.edu','5369213',6,6),(15,'Rosaleen Muglestone','(302) 9737485','rmuglestonee@intel.com','40888135',7,1),(16,'Sheelah Kellett','(568) 1475906','skellettf@lycos.com','13647208',4,5),(17,'Harriet Hand','(278) 2859228','hhandg@geocities.jp','16368513',5,11),(18,'Kendall Golda','(657) 6986458','kgoldah@storify.com','41728545',6,4),(19,'Aaren Heart','(458) 4228678','ahearti@paginegialle.it','3482132',3,1),(20,'Madelaine Lingfoot','(184) 6063147','mlingfootj@phpbb.com','40454201',6,2),(21,'Kissee Gagin','(656) 2110614','kgagink@google.com.hk','5623119',2,9),(22,'Sara Grzelczak','(291) 8301080','sgrzelczakl@mail.ru','7949788',6,8),(23,'Norby Mignot','(643) 1845082','nmignotm@admin.ch','25237845',2,5),(24,'Stanly Edington','(738) 8563679','sedingtonn@newsvine.com','38443636',8,11),(25,'Jobey Breffitt','(816) 6730358','jbreffitto@example.com','18928015',8,15),(26,'Amelina Folk','(912) 6971274','afolkp@goo.gl','1658625',1,12),(27,'Reiko Shaw','(774) 2640809','rshawq@gmpg.org','18611236',6,7),(28,'Gayla Cann','(337) 3285078','gcannr@deviantart.com','9126723',4,3),(29,'Darbee Matis','(595) 1669047','dmatiss@yale.edu','38849228',7,15),(30,'Arlene Filippov','(342) 9919827','afilippovt@cdc.gov','18552789',3,8),(31,'Yves Farish','(604) 7394386','yfarishu@home.pl','8694612',2,12),(32,'Amandy Evemy','(748) 2827535','aevemyv@psu.edu','40312988',6,12),(33,'Tabitha Daunay','(106) 9468459','tdaunayw@4shared.com','24052303',7,4),(34,'Wilow Vicioso','(321) 7889994','wviciosox@bloglovin.com','16498663',8,8),(35,'Bruce Nottingam','(136) 2036063','bnottingamy@issuu.com','26171119',5,8),(36,'Lyndsay Hursthouse','(547) 4057165','lhursthousez@sina.com.cn','6529171',5,13),(37,'Ford Meneo','(827) 5371229','fmeneo10@1und1.de','41875081',6,1),(38,'Christophe Grix','(400) 3999355','cgrix11@blogger.com','25887142',3,12),(39,'Gardener Kempton','(177) 6121577','gkempton12@cmu.edu','5645849',1,12),(40,'Theresa Scaddon','(375) 7733778','tscaddon13@clickbank.net','4123165',7,13),(41,'Nicholle Attenbarrow','(101) 3721629','nattenbarrow14@google.com','3976337',5,15),(42,'Sasha Pellatt','(543) 7234353','spellatt15@slate.com','6951170',4,8),(43,'Myrtie Hollyar','(835) 2340715','mhollyar16@arizona.edu','11396675',2,3),(44,'Elsie Cullerne','(728) 6014557','ecullerne17@quantcast.com','33754610',8,4),(45,'Cathryn Wallsworth','(647) 9763652','cwallsworth18@gravatar.com','8133206',4,3),(46,'Julee Vanderplas','(971) 6757944','jvanderplas19@ycombinator.com','9603979',3,13),(47,'Tucky Garnsey','(574) 6908551','tgarnsey1a@homestead.com','20675295',3,2),(48,'Quentin Woolsey','(449) 7700481','qwoolsey1b@csmonitor.com','20717887',7,3),(49,'Molly Schrinel','(602) 1521336','mschrinel1c@army.mil','6992041',1,15),(50,'Valentijn Blaske','(551) 4309020','vblaske1d@webnode.com','40165322',1,5),(51,'Katlin Misselbrook','(114) 1755353','kmisselbrook1e@cisco.com','1556820',1,10),(52,'Deck Vile','(623) 8433074','dvile1f@wunderground.com','12679222',6,13),(53,'Shelba Giron','(927) 2624935','sgiron1g@nydailynews.com','22794640',4,4),(54,'Gregorius Storer','(662) 8265063','gstorer1h@samsung.com','33493427',6,8),(55,'Boote Iorizzo','(934) 3010463','biorizzo1i@wordpress.com','21544467',4,4),(56,'Jeffry Ebanks','(266) 9649249','jebanks1j@nbcnews.com','11939607',6,5),(57,'Sumner Blees','(735) 9719809','sblees1k@ca.gov','32781801',6,11),(58,'Cass D\'Aguanno','(427) 4159495','cdaguanno1l@example.com','34611719',7,3),(59,'Ree Maseyk','(412) 2844758','rmaseyk1m@uiuc.edu','7933839',8,15),(60,'Packston Harniman','(326) 7095374','pharniman1n@wikimedia.org','9549675',5,10),(61,'Vida Godain','(756) 9367057','vgodain1o@de.vu','10771498',1,6),(62,'Idelle Tother','(508) 8768896','itother1p@list-manage.com','29291492',6,1),(63,'Lindy Judson','(873) 8211036','ljudson1q@aol.com','20018996',7,3),(64,'Maisey Brazear','(667) 5491803','mbrazear1r@t.co','19044975',3,4),(65,'Giovanna Ellesmere','(508) 3716809','gellesmere1s@livejournal.com','21482659',2,4),(66,'Zitella Krzyzanowski','(805) 3943831','zkrzyzanowski1t@imgur.com','11493184',6,5),(67,'Glenn Stoppe','(449) 4441645','gstoppe1u@alibaba.com','41845332',6,4),(68,'Ted Hargey','(655) 2865757','thargey1v@aboutads.info','14248010',5,9),(69,'Petronilla Godthaab','(481) 6811198','pgodthaab1w@symantec.com','30354894',8,9),(70,'Sunny Lease','(746) 8187910','slease1x@dailymotion.com','37195063',2,15),(71,'Adelheid Craggs','(573) 1529260','acraggs1y@godaddy.com','30429859',4,15),(72,'Harli Chant','(630) 5923675','hchant1z@nytimes.com','38283763',3,11),(73,'Perkin O\'Mohun','(335) 9776993','pomohun20@sitemeter.com','4775913',5,10),(74,'Karoly Iston','(456) 5821314','kiston21@tripadvisor.com','31986209',4,8),(75,'Jackie Younie','(293) 3257565','jyounie22@themeforest.net','28870701',4,5),(76,'Charo Bayliss','(548) 5207889','cbayliss23@studiopress.com','28552407',2,11),(77,'Cirilo Ranby','(245) 3743057','cranby24@moonfruit.com','17796922',7,5),(78,'Glendon Harriss','(388) 4264938','gharriss25@taobao.com','4732255',6,13),(79,'Bernette Lung','(457) 3669684','blung26@theguardian.com','27893896',8,15),(80,'Evanne Longhurst','(489) 6849305','elonghurst27@kickstarter.com','35048403',1,8),(81,'Arlene McCaughren','(415) 7795919','amccaughren28@nba.com','20707055',4,7),(82,'Lynn Pentecost','(918) 3080522','lpentecost29@walmart.com','31343294',5,3),(83,'Marco Weathers','(109) 6959445','mweathers2a@php.net','35027160',8,12),(84,'Tobe Aspinwall','(475) 5252834','taspinwall2b@biglobe.ne.jp','35304156',4,1),(85,'Heath Schlagtmans','(287) 6622679','hschlagtmans2c@pbs.org','3077625',8,1),(86,'Justis Harvatt','(597) 1845196','jharvatt2d@army.mil','10129799',7,14),(87,'Skye Dolle','(922) 6547376','sdolle2e@a8.net','40751873',1,10),(88,'Eleanor Marlor','(135) 1675252','emarlor2f@apple.com','3246573',3,6),(89,'Izzy Atwill','(475) 5554096','iatwill2g@whitehouse.gov','13959008',2,14),(90,'Camile Antonacci','(152) 9680035','cantonacci2h@addthis.com','30826962',6,10),(91,'Arlee Prendeville','(696) 8292470','aprendeville2i@t.co','41593222',3,11),(92,'Raff Kitching','(507) 9371990','rkitching2j@nyu.edu','10013163',6,5),(93,'Normand Heyworth','(517) 1523568','nheyworth2k@google.fr','18941368',5,15),(94,'Garv Debrett','(665) 6537528','gdebrett2l@joomla.org','19994892',5,10),(95,'Felicity Nuzzi','(330) 3582143','fnuzzi2m@shop-pro.jp','36474079',8,6),(96,'Fabio Freiburger','(711) 2900452','ffreiburger2n@wufoo.com','31763351',3,5),(97,'Goober Colegrove','(236) 6901419','gcolegrove2o@hud.gov','24406729',8,11),(98,'Anestassia Netherclift','(487) 3551189','anetherclift2p@zdnet.com','23310605',5,4),(99,'Roseanna Woffinden','(336) 3140043','rwoffinden2q@github.com','26432860',6,11),(100,'Dori Wain','(272) 7852709','dwain2r@hibu.com','38024234',2,6);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_cambios`
--

DROP TABLE IF EXISTS `log_cambios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_cambios` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `tabla_afectada` varchar(50) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `idcliente` int DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_cambios`
--

LOCK TABLES `log_cambios` WRITE;
/*!40000 ALTER TABLE `log_cambios` DISABLE KEYS */;
INSERT INTO `log_cambios` VALUES (1,'CLIENTE','INSERT','2024-08-23 20:28:45',1,'root@localhost'),(2,'CLIENTE','INSERT','2024-08-23 20:28:45',2,'root@localhost'),(3,'CLIENTE','INSERT','2024-08-23 20:28:45',3,'root@localhost'),(4,'CLIENTE','INSERT','2024-08-23 20:28:45',4,'root@localhost'),(5,'CLIENTE','INSERT','2024-08-23 20:28:45',5,'root@localhost'),(6,'CLIENTE','INSERT','2024-08-23 20:28:45',6,'root@localhost'),(7,'CLIENTE','INSERT','2024-08-23 20:28:45',7,'root@localhost'),(8,'CLIENTE','INSERT','2024-08-23 20:28:45',8,'root@localhost'),(9,'CLIENTE','INSERT','2024-08-23 20:28:45',9,'root@localhost'),(10,'CLIENTE','INSERT','2024-08-23 20:28:45',10,'root@localhost'),(11,'CLIENTE','INSERT','2024-08-23 20:28:45',11,'root@localhost'),(12,'CLIENTE','INSERT','2024-08-23 20:28:45',12,'root@localhost'),(13,'CLIENTE','INSERT','2024-08-23 20:28:45',13,'root@localhost'),(14,'CLIENTE','INSERT','2024-08-23 20:28:45',14,'root@localhost'),(15,'CLIENTE','INSERT','2024-08-23 20:28:45',15,'root@localhost'),(16,'CLIENTE','INSERT','2024-08-23 20:28:45',16,'root@localhost'),(17,'CLIENTE','INSERT','2024-08-23 20:28:45',17,'root@localhost'),(18,'CLIENTE','INSERT','2024-08-23 20:28:45',18,'root@localhost'),(19,'CLIENTE','INSERT','2024-08-23 20:28:45',19,'root@localhost'),(20,'CLIENTE','INSERT','2024-08-23 20:28:45',20,'root@localhost'),(21,'CLIENTE','INSERT','2024-08-23 20:28:45',21,'root@localhost'),(22,'CLIENTE','INSERT','2024-08-23 20:28:45',22,'root@localhost'),(23,'CLIENTE','INSERT','2024-08-23 20:28:45',23,'root@localhost'),(24,'CLIENTE','INSERT','2024-08-23 20:28:45',24,'root@localhost'),(25,'CLIENTE','INSERT','2024-08-23 20:28:45',25,'root@localhost'),(26,'CLIENTE','INSERT','2024-08-23 20:28:45',26,'root@localhost'),(27,'CLIENTE','INSERT','2024-08-23 20:28:45',27,'root@localhost'),(28,'CLIENTE','INSERT','2024-08-23 20:28:45',28,'root@localhost'),(29,'CLIENTE','INSERT','2024-08-23 20:28:45',29,'root@localhost'),(30,'CLIENTE','INSERT','2024-08-23 20:28:45',30,'root@localhost'),(31,'CLIENTE','INSERT','2024-08-23 20:28:45',31,'root@localhost'),(32,'CLIENTE','INSERT','2024-08-23 20:28:45',32,'root@localhost'),(33,'CLIENTE','INSERT','2024-08-23 20:28:45',33,'root@localhost'),(34,'CLIENTE','INSERT','2024-08-23 20:28:45',34,'root@localhost'),(35,'CLIENTE','INSERT','2024-08-23 20:28:45',35,'root@localhost'),(36,'CLIENTE','INSERT','2024-08-23 20:28:45',36,'root@localhost'),(37,'CLIENTE','INSERT','2024-08-23 20:28:45',37,'root@localhost'),(38,'CLIENTE','INSERT','2024-08-23 20:28:45',38,'root@localhost'),(39,'CLIENTE','INSERT','2024-08-23 20:28:45',39,'root@localhost'),(40,'CLIENTE','INSERT','2024-08-23 20:28:45',40,'root@localhost'),(41,'CLIENTE','INSERT','2024-08-23 20:28:45',41,'root@localhost'),(42,'CLIENTE','INSERT','2024-08-23 20:28:45',42,'root@localhost'),(43,'CLIENTE','INSERT','2024-08-23 20:28:45',43,'root@localhost'),(44,'CLIENTE','INSERT','2024-08-23 20:28:45',44,'root@localhost'),(45,'CLIENTE','INSERT','2024-08-23 20:28:45',45,'root@localhost'),(46,'CLIENTE','INSERT','2024-08-23 20:28:45',46,'root@localhost'),(47,'CLIENTE','INSERT','2024-08-23 20:28:45',47,'root@localhost'),(48,'CLIENTE','INSERT','2024-08-23 20:28:45',48,'root@localhost'),(49,'CLIENTE','INSERT','2024-08-23 20:28:45',49,'root@localhost'),(50,'CLIENTE','INSERT','2024-08-23 20:28:45',50,'root@localhost'),(51,'CLIENTE','INSERT','2024-08-23 20:28:45',51,'root@localhost'),(52,'CLIENTE','INSERT','2024-08-23 20:28:45',52,'root@localhost'),(53,'CLIENTE','INSERT','2024-08-23 20:28:45',53,'root@localhost'),(54,'CLIENTE','INSERT','2024-08-23 20:28:45',54,'root@localhost'),(55,'CLIENTE','INSERT','2024-08-23 20:28:45',55,'root@localhost'),(56,'CLIENTE','INSERT','2024-08-23 20:28:45',56,'root@localhost'),(57,'CLIENTE','INSERT','2024-08-23 20:28:45',57,'root@localhost'),(58,'CLIENTE','INSERT','2024-08-23 20:28:45',58,'root@localhost'),(59,'CLIENTE','INSERT','2024-08-23 20:28:45',59,'root@localhost'),(60,'CLIENTE','INSERT','2024-08-23 20:28:45',60,'root@localhost'),(61,'CLIENTE','INSERT','2024-08-23 20:28:45',61,'root@localhost'),(62,'CLIENTE','INSERT','2024-08-23 20:28:45',62,'root@localhost'),(63,'CLIENTE','INSERT','2024-08-23 20:28:45',63,'root@localhost'),(64,'CLIENTE','INSERT','2024-08-23 20:28:45',64,'root@localhost'),(65,'CLIENTE','INSERT','2024-08-23 20:28:45',65,'root@localhost'),(66,'CLIENTE','INSERT','2024-08-23 20:28:45',66,'root@localhost'),(67,'CLIENTE','INSERT','2024-08-23 20:28:45',67,'root@localhost'),(68,'CLIENTE','INSERT','2024-08-23 20:28:45',68,'root@localhost'),(69,'CLIENTE','INSERT','2024-08-23 20:28:45',69,'root@localhost'),(70,'CLIENTE','INSERT','2024-08-23 20:28:45',70,'root@localhost'),(71,'CLIENTE','INSERT','2024-08-23 20:28:45',71,'root@localhost'),(72,'CLIENTE','INSERT','2024-08-23 20:28:45',72,'root@localhost'),(73,'CLIENTE','INSERT','2024-08-23 20:28:45',73,'root@localhost'),(74,'CLIENTE','INSERT','2024-08-23 20:28:45',74,'root@localhost'),(75,'CLIENTE','INSERT','2024-08-23 20:28:45',75,'root@localhost'),(76,'CLIENTE','INSERT','2024-08-23 20:28:45',76,'root@localhost'),(77,'CLIENTE','INSERT','2024-08-23 20:28:45',77,'root@localhost'),(78,'CLIENTE','INSERT','2024-08-23 20:28:45',78,'root@localhost'),(79,'CLIENTE','INSERT','2024-08-23 20:28:45',79,'root@localhost'),(80,'CLIENTE','INSERT','2024-08-23 20:28:45',80,'root@localhost'),(81,'CLIENTE','INSERT','2024-08-23 20:28:45',81,'root@localhost'),(82,'CLIENTE','INSERT','2024-08-23 20:28:45',82,'root@localhost'),(83,'CLIENTE','INSERT','2024-08-23 20:28:45',83,'root@localhost'),(84,'CLIENTE','INSERT','2024-08-23 20:28:45',84,'root@localhost'),(85,'CLIENTE','INSERT','2024-08-23 20:28:45',85,'root@localhost'),(86,'CLIENTE','INSERT','2024-08-23 20:28:45',86,'root@localhost'),(87,'CLIENTE','INSERT','2024-08-23 20:28:45',87,'root@localhost'),(88,'CLIENTE','INSERT','2024-08-23 20:28:45',88,'root@localhost'),(89,'CLIENTE','INSERT','2024-08-23 20:28:45',89,'root@localhost'),(90,'CLIENTE','INSERT','2024-08-23 20:28:45',90,'root@localhost'),(91,'CLIENTE','INSERT','2024-08-23 20:28:45',91,'root@localhost'),(92,'CLIENTE','INSERT','2024-08-23 20:28:45',92,'root@localhost'),(93,'CLIENTE','INSERT','2024-08-23 20:28:45',93,'root@localhost'),(94,'CLIENTE','INSERT','2024-08-23 20:28:45',94,'root@localhost'),(95,'CLIENTE','INSERT','2024-08-23 20:28:45',95,'root@localhost'),(96,'CLIENTE','INSERT','2024-08-23 20:28:45',96,'root@localhost'),(97,'CLIENTE','INSERT','2024-08-23 20:28:45',97,'root@localhost'),(98,'CLIENTE','INSERT','2024-08-23 20:28:45',98,'root@localhost'),(99,'CLIENTE','INSERT','2024-08-23 20:28:45',99,'root@localhost'),(100,'CLIENTE','INSERT','2024-08-23 20:28:45',100,'root@localhost');
/*!40000 ALTER TABLE `log_cambios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto_trabajo`
--

DROP TABLE IF EXISTS `puesto_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puesto_trabajo` (
  `IDPUESTO` int NOT NULL AUTO_INCREMENT,
  `TIPO_PUESTO` varchar(50) NOT NULL,
  PRIMARY KEY (`IDPUESTO`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto_trabajo`
--

LOCK TABLES `puesto_trabajo` WRITE;
/*!40000 ALTER TABLE `puesto_trabajo` DISABLE KEYS */;
INSERT INTO `puesto_trabajo` VALUES (1,'Alineador'),(2,'Balanceador'),(3,'Mecánico simple'),(4,'Mecánico pesada'),(5,'Motorista'),(6,'Chasisista competición'),(7,'Motorista competición'),(8,'Programador ECU competición');
/*!40000 ALTER TABLE `puesto_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto_trabajo_taller`
--

DROP TABLE IF EXISTS `puesto_trabajo_taller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puesto_trabajo_taller` (
  `IDPUESTOTALLER` int NOT NULL AUTO_INCREMENT,
  `IDTALLER` int NOT NULL,
  `IDPUESTO` int NOT NULL,
  `IDTIPOTRABAJO` int NOT NULL,
  `CAPACIDAD` int NOT NULL,
  PRIMARY KEY (`IDPUESTOTALLER`),
  KEY `FK_PTT_PUESTO` (`IDPUESTO`),
  KEY `FK_PTT_TALLER` (`IDTALLER`),
  KEY `FK_PTT_TIPO_TRABAJO` (`IDTIPOTRABAJO`),
  CONSTRAINT `FK_PTT_PUESTO` FOREIGN KEY (`IDPUESTO`) REFERENCES `puesto_trabajo` (`IDPUESTO`),
  CONSTRAINT `FK_PTT_TALLER` FOREIGN KEY (`IDTALLER`) REFERENCES `taller` (`IDTALLER`),
  CONSTRAINT `FK_PTT_TIPO_TRABAJO` FOREIGN KEY (`IDTIPOTRABAJO`) REFERENCES `tipo_trabajo` (`IDTIPOTRABAJO`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto_trabajo_taller`
--

LOCK TABLES `puesto_trabajo_taller` WRITE;
/*!40000 ALTER TABLE `puesto_trabajo_taller` DISABLE KEYS */;
INSERT INTO `puesto_trabajo_taller` VALUES (1,4,4,4,576000),(2,7,8,8,576000),(3,6,1,1,576000),(4,15,7,7,576000),(5,2,2,2,576000),(6,5,7,7,576000),(7,4,6,6,576000),(8,4,3,3,576000),(9,9,6,6,576000),(10,3,5,5,576000),(11,8,3,3,576000),(12,1,1,1,576000),(13,9,1,1,576000),(14,11,6,6,576000),(15,4,3,3,576000),(16,7,7,7,576000),(17,6,7,7,576000),(18,4,4,4,576000),(19,13,1,1,576000),(20,14,4,4,576000),(21,4,4,4,576000),(22,3,5,5,576000),(23,15,4,4,576000),(24,2,4,4,576000),(25,2,7,7,576000),(26,3,8,8,576000),(27,7,3,3,576000),(28,7,6,6,576000),(29,9,5,5,576000),(30,7,1,1,576000),(31,4,6,6,576000),(32,5,8,8,576000),(33,3,8,8,576000),(34,7,1,1,576000),(35,6,2,2,576000),(36,1,3,3,576000),(37,10,6,6,576000),(38,3,1,1,576000),(39,6,8,8,576000),(40,2,1,1,576000),(41,3,7,7,576000),(42,6,2,2,576000),(43,7,2,2,576000),(44,11,6,6,576000),(45,9,4,4,576000),(46,1,6,6,576000),(47,5,1,1,576000),(48,3,1,1,576000),(49,12,4,4,576000),(50,7,3,3,576000),(51,6,4,4,576000),(52,2,6,6,576000),(53,14,1,1,576000),(54,12,3,3,576000),(55,6,1,1,576000),(56,4,7,7,576000),(57,4,3,3,576000),(58,13,6,6,576000),(59,6,8,8,576000),(60,5,6,6,576000),(61,10,5,5,576000),(62,2,2,2,576000),(63,10,3,3,576000),(64,7,8,8,576000),(65,12,5,5,576000),(66,6,7,7,576000),(67,9,4,4,576000),(68,8,4,4,576000),(69,2,3,3,576000),(70,10,2,2,576000),(71,15,6,6,576000),(72,6,6,6,576000),(73,10,8,8,576000),(74,2,6,6,576000),(75,7,8,8,576000),(76,3,4,4,576000),(77,15,4,4,576000),(78,9,1,1,576000),(79,14,6,6,576000),(80,3,7,7,576000),(81,1,3,3,576000),(82,13,5,5,576000),(83,3,1,1,576000),(84,9,3,3,576000),(85,1,5,5,576000),(86,6,2,2,576000),(87,4,8,8,576000),(88,5,5,5,576000),(89,6,5,5,576000),(90,14,5,5,576000),(91,12,7,7,576000),(92,14,6,6,576000),(93,15,5,5,576000),(94,14,7,7,576000),(95,14,2,2,576000),(96,10,2,2,576000),(97,12,3,3,576000),(98,11,1,1,576000),(99,4,2,2,576000),(100,12,5,5,576000);
/*!40000 ALTER TABLE `puesto_trabajo_taller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `IDRESERVA` int NOT NULL AUTO_INCREMENT,
  `IDCLIENTE` int NOT NULL,
  `IDPUESTOTALLER` int NOT NULL,
  `IDEMPLEADO` int NOT NULL,
  `FECHA` datetime NOT NULL,
  `CANCELACION` datetime DEFAULT NULL,
  PRIMARY KEY (`IDRESERVA`),
  KEY `FK_RESERVA_TRABAJO` (`IDPUESTOTALLER`),
  KEY `FK_RESERVA_CLIENTE` (`IDCLIENTE`),
  KEY `FK_RESERVA_EMPLEADO` (`IDEMPLEADO`),
  CONSTRAINT `FK_RESERVA_CLIENTE` FOREIGN KEY (`IDCLIENTE`) REFERENCES `cliente` (`IDCLIENTE`),
  CONSTRAINT `FK_RESERVA_EMPLEADO` FOREIGN KEY (`IDEMPLEADO`) REFERENCES `empleado` (`IDEMPLEADO`),
  CONSTRAINT `FK_RESERVA_TRABAJO` FOREIGN KEY (`IDPUESTOTALLER`) REFERENCES `puesto_trabajo_taller` (`IDPUESTOTALLER`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,91,14,15,'2023-12-12 00:00:00',NULL),(2,24,11,43,'2023-09-05 00:00:00',NULL),(3,2,12,45,'2024-02-17 00:00:00',NULL),(4,89,74,61,'2024-11-09 00:00:00',NULL),(5,76,90,5,'2024-03-21 00:00:00',NULL),(6,51,88,11,'2023-09-06 00:00:00',NULL),(7,34,6,81,'2023-12-05 00:00:00',NULL),(8,88,20,74,'2023-08-14 00:00:00',NULL),(9,69,15,57,'2024-02-01 00:00:00',NULL),(10,25,65,82,'2024-07-31 00:00:00',NULL),(11,46,67,42,'2023-11-03 00:00:00',NULL),(12,100,16,59,'2024-08-19 00:00:00','2024-04-19 00:00:00'),(13,53,32,78,'2023-11-25 00:00:00',NULL),(14,11,76,31,'2024-02-26 00:00:00',NULL),(15,30,54,64,'2024-07-08 00:00:00',NULL),(16,9,81,74,'2024-08-17 00:00:00',NULL),(17,61,80,59,'2024-01-10 00:00:00',NULL),(18,54,70,69,'2023-10-27 00:00:00',NULL),(19,20,22,100,'2024-07-07 00:00:00',NULL),(20,69,41,62,'2024-12-27 00:00:00','2024-02-12 00:00:00'),(21,70,88,87,'2024-06-01 00:00:00',NULL),(22,14,23,14,'2024-07-07 00:00:00',NULL),(23,40,63,13,'2024-11-18 00:00:00',NULL),(24,75,60,61,'2024-09-10 00:00:00',NULL),(25,80,48,84,'2024-12-24 00:00:00',NULL),(26,42,1,29,'2024-04-30 00:00:00',NULL),(27,24,39,99,'2024-09-29 00:00:00','2024-08-26 00:00:00'),(28,45,46,7,'2023-11-30 00:00:00',NULL),(29,7,6,15,'2024-01-30 00:00:00','2024-08-26 00:00:00'),(30,77,60,25,'2024-10-13 00:00:00',NULL),(31,13,6,32,'2023-09-15 00:00:00',NULL),(32,80,8,21,'2024-06-14 00:00:00','2024-04-14 00:00:00'),(33,81,21,22,'2023-09-21 00:00:00',NULL),(34,4,1,51,'2024-12-13 00:00:00',NULL),(35,53,52,37,'2024-07-05 00:00:00',NULL),(36,53,89,89,'2024-12-27 00:00:00',NULL),(37,8,86,27,'2023-08-27 00:00:00',NULL),(38,78,59,85,'2024-08-28 00:00:00',NULL),(39,21,89,59,'2024-09-09 00:00:00',NULL),(40,22,53,83,'2024-12-06 00:00:00',NULL),(41,56,1,20,'2024-11-16 00:00:00',NULL),(42,25,47,28,'2023-09-04 00:00:00','2023-11-08 00:00:00'),(43,26,22,86,'2024-12-29 00:00:00',NULL),(44,47,28,65,'2024-04-26 00:00:00',NULL),(45,82,53,38,'2023-11-26 00:00:00',NULL),(46,92,68,95,'2024-04-12 00:00:00',NULL),(47,28,18,73,'2023-11-03 00:00:00',NULL),(48,34,32,50,'2024-12-16 00:00:00',NULL),(49,1,46,42,'2024-07-16 00:00:00',NULL),(50,35,12,50,'2024-11-11 00:00:00',NULL),(51,74,28,43,'2023-08-31 00:00:00',NULL),(52,71,60,57,'2024-08-24 00:00:00',NULL),(53,97,42,22,'2024-11-24 00:00:00',NULL),(54,66,64,96,'2023-12-03 00:00:00',NULL),(55,76,34,36,'2024-12-19 00:00:00',NULL),(56,71,37,93,'2024-12-24 00:00:00','2024-03-25 00:00:00'),(57,15,85,82,'2023-11-15 00:00:00',NULL),(58,71,8,39,'2023-08-08 00:00:00',NULL),(59,53,54,70,'2024-05-13 00:00:00',NULL),(60,48,23,92,'2023-09-12 00:00:00',NULL),(61,15,3,31,'2023-08-26 00:00:00',NULL),(62,64,41,48,'2024-05-31 00:00:00',NULL),(63,94,82,22,'2024-11-06 00:00:00',NULL),(64,20,33,69,'2024-09-30 00:00:00',NULL),(65,60,45,51,'2024-02-21 00:00:00',NULL),(66,62,91,41,'2024-03-06 00:00:00','2024-08-18 00:00:00'),(67,11,99,57,'2023-11-15 00:00:00',NULL),(68,29,99,27,'2023-10-30 00:00:00',NULL),(69,6,64,19,'2023-10-26 00:00:00',NULL),(70,94,81,39,'2024-12-12 00:00:00',NULL),(71,83,38,62,'2024-04-12 00:00:00',NULL),(72,25,39,63,'2024-09-29 00:00:00',NULL),(73,77,94,73,'2023-11-05 00:00:00',NULL),(74,75,20,36,'2024-11-13 00:00:00',NULL),(75,36,29,23,'2023-08-08 00:00:00','2024-07-26 00:00:00'),(76,73,82,89,'2024-02-14 00:00:00',NULL),(77,51,35,98,'2024-03-27 00:00:00',NULL),(78,72,7,73,'2024-10-11 00:00:00',NULL),(79,21,16,4,'2024-12-28 00:00:00',NULL),(80,83,65,77,'2024-06-20 00:00:00',NULL),(81,55,39,60,'2024-03-04 00:00:00',NULL),(82,62,87,97,'2023-09-18 00:00:00',NULL),(83,61,82,8,'2024-09-03 00:00:00',NULL),(84,29,35,27,'2024-10-17 00:00:00',NULL),(85,45,26,36,'2024-02-10 00:00:00',NULL),(86,66,51,46,'2024-09-04 00:00:00',NULL),(87,9,68,91,'2024-02-02 00:00:00',NULL),(88,81,47,39,'2024-04-07 00:00:00','2024-07-15 00:00:00'),(89,86,19,86,'2023-12-12 00:00:00',NULL),(90,9,66,26,'2024-12-04 00:00:00',NULL),(91,8,70,63,'2023-09-02 00:00:00',NULL),(92,98,29,64,'2024-10-08 00:00:00',NULL),(93,79,49,56,'2024-08-30 00:00:00','2024-07-10 00:00:00'),(94,55,97,92,'2024-02-02 00:00:00',NULL),(95,73,93,27,'2024-06-01 00:00:00',NULL),(96,91,75,70,'2023-12-03 00:00:00',NULL),(97,3,62,66,'2024-12-22 00:00:00',NULL),(98,31,81,100,'2024-05-21 00:00:00',NULL),(99,15,78,84,'2024-04-08 00:00:00',NULL),(100,15,46,27,'2023-11-16 00:00:00',NULL),(101,7,83,31,'2023-11-04 00:00:00',NULL),(102,20,100,20,'2024-12-25 00:00:00',NULL),(103,58,30,90,'2023-10-04 00:00:00',NULL),(104,77,4,27,'2023-12-02 00:00:00',NULL),(105,12,48,87,'2024-01-13 00:00:00',NULL),(106,19,90,42,'2024-03-11 00:00:00',NULL),(107,46,11,9,'2024-12-14 00:00:00',NULL),(108,82,15,27,'2023-08-16 00:00:00',NULL),(109,47,87,22,'2024-12-22 00:00:00',NULL),(110,60,13,71,'2024-06-23 00:00:00',NULL),(111,88,32,71,'2023-10-27 00:00:00',NULL),(112,82,48,98,'2024-01-01 00:00:00',NULL),(113,42,16,28,'2024-08-27 00:00:00',NULL),(114,3,84,2,'2024-05-14 00:00:00',NULL),(115,35,42,65,'2024-09-27 00:00:00',NULL),(116,92,85,24,'2023-08-25 00:00:00',NULL),(117,32,8,42,'2024-05-12 00:00:00',NULL),(118,93,32,49,'2024-12-20 00:00:00',NULL),(119,93,19,89,'2024-11-06 00:00:00',NULL),(120,85,85,10,'2023-12-08 00:00:00',NULL),(121,56,78,66,'2023-08-04 00:00:00',NULL),(122,72,99,95,'2024-11-16 00:00:00',NULL),(123,91,66,24,'2023-09-02 00:00:00',NULL),(124,84,15,80,'2024-11-10 00:00:00',NULL),(125,37,5,58,'2024-05-30 00:00:00',NULL),(126,9,92,69,'2023-09-09 00:00:00',NULL),(127,25,62,36,'2024-08-25 00:00:00',NULL),(128,18,87,87,'2023-09-23 00:00:00',NULL),(129,65,28,14,'2024-05-28 00:00:00',NULL),(130,36,45,34,'2024-05-22 00:00:00',NULL),(131,71,74,56,'2024-07-12 00:00:00',NULL),(132,71,42,99,'2024-04-06 00:00:00',NULL),(133,39,7,85,'2024-02-06 00:00:00',NULL),(134,96,4,89,'2024-11-22 00:00:00',NULL),(135,100,79,34,'2023-12-03 00:00:00','2024-09-25 00:00:00'),(136,7,49,79,'2023-08-09 00:00:00',NULL),(137,72,17,24,'2023-12-29 00:00:00',NULL),(138,71,83,92,'2023-08-25 00:00:00',NULL),(139,23,49,13,'2023-10-11 00:00:00',NULL),(140,38,76,86,'2024-04-17 00:00:00',NULL),(141,24,68,37,'2024-06-08 00:00:00',NULL),(142,56,40,85,'2024-07-31 00:00:00',NULL),(143,1,9,42,'2024-12-11 00:00:00',NULL),(144,14,64,10,'2023-12-04 00:00:00',NULL),(145,5,86,21,'2024-06-11 00:00:00',NULL),(146,16,8,67,'2024-10-08 00:00:00',NULL),(147,75,28,19,'2024-01-24 00:00:00',NULL),(148,56,22,45,'2024-02-01 00:00:00',NULL),(149,20,39,66,'2023-09-26 00:00:00',NULL),(150,84,47,16,'2023-08-24 00:00:00',NULL),(151,71,45,29,'2024-10-16 00:00:00',NULL),(152,55,49,69,'2024-09-07 00:00:00',NULL),(153,40,73,44,'2024-03-11 00:00:00',NULL),(154,79,4,41,'2023-12-13 00:00:00',NULL),(155,72,98,4,'2024-10-05 00:00:00',NULL),(156,73,53,79,'2023-09-19 00:00:00','2023-12-03 00:00:00'),(157,25,13,52,'2023-10-05 00:00:00',NULL),(158,41,70,75,'2024-06-14 00:00:00',NULL),(159,95,13,45,'2024-02-11 00:00:00','2024-11-03 00:00:00'),(160,32,92,64,'2023-10-02 00:00:00',NULL),(161,92,97,18,'2024-01-16 00:00:00','2023-09-15 00:00:00'),(162,19,44,63,'2024-02-18 00:00:00',NULL),(163,10,76,80,'2024-10-01 00:00:00',NULL),(164,24,24,81,'2024-09-16 00:00:00',NULL),(165,20,92,77,'2024-11-13 00:00:00',NULL),(166,1,6,59,'2024-08-02 00:00:00',NULL),(167,92,34,45,'2024-05-02 00:00:00',NULL),(168,63,8,44,'2024-03-28 00:00:00',NULL),(169,91,75,28,'2024-11-25 00:00:00',NULL),(170,9,72,38,'2024-03-12 00:00:00',NULL),(171,82,5,85,'2024-05-12 00:00:00',NULL),(172,9,36,60,'2024-11-02 00:00:00',NULL),(173,27,10,84,'2024-05-09 00:00:00',NULL),(174,77,69,30,'2023-08-24 00:00:00',NULL),(175,46,87,21,'2024-01-17 00:00:00',NULL),(176,4,47,58,'2024-10-30 00:00:00',NULL),(177,100,28,76,'2024-06-25 00:00:00',NULL),(178,83,68,38,'2023-12-23 00:00:00',NULL),(179,47,68,28,'2024-07-26 00:00:00',NULL),(180,13,64,47,'2023-10-17 00:00:00',NULL),(181,96,10,83,'2024-02-24 00:00:00',NULL),(182,68,62,13,'2024-01-30 00:00:00',NULL),(183,54,41,83,'2024-05-14 00:00:00',NULL),(184,1,24,26,'2024-11-08 00:00:00',NULL),(185,20,18,5,'2024-08-23 00:00:00',NULL),(186,60,31,8,'2023-11-28 00:00:00',NULL),(187,82,21,68,'2024-06-30 00:00:00',NULL),(188,89,72,5,'2024-05-23 00:00:00',NULL),(189,53,78,13,'2024-04-01 00:00:00',NULL),(190,15,20,82,'2024-06-08 00:00:00','2024-03-10 00:00:00'),(191,81,50,20,'2024-11-09 00:00:00',NULL),(192,68,38,38,'2023-11-28 00:00:00',NULL),(193,52,97,98,'2023-09-10 00:00:00',NULL),(194,93,14,83,'2024-07-26 00:00:00',NULL),(195,91,20,10,'2024-04-24 00:00:00',NULL),(196,17,81,38,'2024-05-04 00:00:00',NULL),(197,48,73,77,'2024-05-10 00:00:00',NULL),(198,74,36,21,'2024-04-21 00:00:00',NULL),(199,33,28,44,'2024-09-29 00:00:00',NULL),(200,4,74,10,'2024-04-20 00:00:00',NULL);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_reserva_trigger` BEFORE INSERT ON `reserva` FOR EACH ROW BEGIN
    DECLARE reserva_count INT;
    
    SELECT COUNT(*) INTO reserva_count
        FROM RESERVA
    WHERE IDCLIENTE = NEW.IDCLIENTE
        AND IDPUESTOTALLER = NEW.IDPUESTOTALLER
        AND FECHA = NEW.FECHA
        AND CANCELACION IS NULL;
        
    IF reserva_count > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El cliente ya tiene una reserva en la misma hora y taller.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_reserva_update` BEFORE UPDATE ON `reserva` FOR EACH ROW BEGIN
    IF NEW.CANCELACION IS NOT NULL AND NEW.CANCELACION >= NEW.FECHA THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La fecha de cancelación no puede ser posterior a la fecha de reserva';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_cancelacion_trigger` AFTER UPDATE ON `reserva` FOR EACH ROW BEGIN
    IF OLD.CANCELACION IS NULL AND NEW.CANCELACION IS NOT NULL THEN
        INSERT INTO LOG_CAMBIOS (tabla_afectada, accion, fecha, idcliente, usuario)
        VALUES ('RESERVA', 'CANCELACION', NOW(), NEW.IDCLIENTE, USER());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `reservasporfecha`
--

DROP TABLE IF EXISTS `reservasporfecha`;
/*!50001 DROP VIEW IF EXISTS `reservasporfecha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reservasporfecha` AS SELECT 
 1 AS `Fecha`,
 1 AS `TotalReservas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reservasportaller`
--

DROP TABLE IF EXISTS `reservasportaller`;
/*!50001 DROP VIEW IF EXISTS `reservasportaller`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reservasportaller` AS SELECT 
 1 AS `IDTALLER`,
 1 AS `TIPO_TRABAJO`,
 1 AS `TotalReservas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `taller`
--

DROP TABLE IF EXISTS `taller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taller` (
  `IDTALLER` int NOT NULL AUTO_INCREMENT,
  `IDDUENO` int NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `DIRECCION` varchar(255) NOT NULL,
  `TELEFONO` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDTALLER`),
  KEY `FK_DUENO_TALLER` (`IDDUENO`),
  CONSTRAINT `FK_DUENO_TALLER` FOREIGN KEY (`IDDUENO`) REFERENCES `dueno` (`IDDUENO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taller`
--

LOCK TABLES `taller` WRITE;
/*!40000 ALTER TABLE `taller` DISABLE KEYS */;
INSERT INTO `taller` VALUES (1,6,'Ambarella, Inc.','3 Hallows Drive','(392) 9716127'),(2,2,'First Trust Dynamic Europe Equity Income Fund','8471 Hoffman Plaza','(490) 9024823'),(3,1,'Kingtone Wirelessinfo Solution Holding Ltd','38 South Point','(194) 8073573'),(4,6,'Getty Realty Corporation','1954 Toban Way','(372) 7499826'),(5,14,'Penns Woods Bancorp, Inc.','63202 Lunder Center','(407) 2950052'),(6,11,'Stock Yards Bancorp, Inc.','5 Starling Trail','(869) 6150451'),(7,9,'Axsome Therapeutics, Inc.','1 Sutteridge Terrace','(642) 6937075'),(8,1,'Easterly Government Properties, Inc.','54 Golf Course Parkway','(937) 4866197'),(9,2,'CommerceHub, Inc.','159 Knutson Park','(997) 1033357'),(10,9,'Steel Partners Holdings LP','6826 Maple Wood Street','(582) 9326564'),(11,4,'Peapack-Gladstone Financial Corporation','495 Lien Lane','(299) 8180858'),(12,15,'PrivateBancorp, Inc.','56547 Pepper Wood Alley','(780) 2768457'),(13,12,'Adams Diversified Equity Fund, Inc.','26 Emmet Alley','(892) 8524554'),(14,7,'Hospitality Properties Trust','2 Jenifer Terrace','(952) 9652340'),(15,13,'Twilio Inc.','8 Commercial Place','(566) 5389883');
/*!40000 ALTER TABLE `taller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_trabajo`
--

DROP TABLE IF EXISTS `tipo_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_trabajo` (
  `IDTIPOTRABAJO` int NOT NULL AUTO_INCREMENT,
  `TIPO_TRABAJO` varchar(50) NOT NULL,
  `DURACIONPROM` int NOT NULL,
  PRIMARY KEY (`IDTIPOTRABAJO`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_trabajo`
--

LOCK TABLES `tipo_trabajo` WRITE;
/*!40000 ALTER TABLE `tipo_trabajo` DISABLE KEYS */;
INSERT INTO `tipo_trabajo` VALUES (1,'Alineación',600),(2,'Balanceo',300),(3,'Mecánica simple',14400),(4,'Mecánica pesada',28800),(5,'Motor',226800),(6,'Chasis competición',226800),(7,'Motor competición',288000),(8,'Programación ECU competición',115200);
/*!40000 ALTER TABLE `tipo_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyecto_reservas'
--

--
-- Dumping routines for database 'proyecto_reservas'
--
/*!50003 DROP FUNCTION IF EXISTS `cantidad_puestos_por_taller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `cantidad_puestos_por_taller`(puestotaller_id INT) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE puestos_count INT;
    
    SELECT COUNT(*) INTO puestos_count
    FROM PUESTO_TRABAJO_TALLER
    WHERE IDPUESTO = puestotaller_id;
    
    RETURN puestos_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `contar_reservas_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `contar_reservas_cliente`(cliente_id INT, fecha_inicio DATETIME, fecha_fin DATETIME) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE reservas_count INT;
    
    SELECT COUNT(*) INTO reservas_count
    FROM RESERVA
    WHERE IDCLIENTE = cliente_id
    AND FECHA >= fecha_inicio
    AND FECHA <= fecha_fin;
    
    RETURN reservas_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `trabajo_cancelado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `trabajo_cancelado`(taller_id INT) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE cancelacion_date DATETIME;
    DECLARE is_cancelada BOOLEAN;
    
    SELECT CANCELACION INTO cancelacion_date
        FROM RESERVA
        WHERE IDPUESTOTALLER = taller_id
        AND CANCELACION IS NOT NULL
        LIMIT 1;
    
    IF cancelacion_date IS NOT NULL THEN
        SET is_cancelada = TRUE;
    ELSE
        SET is_cancelada = FALSE;
    END IF;

    RETURN is_cancelada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_reserva_cancelada_por_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_reserva_cancelada_por_email`(
    IN por_email VARCHAR(100)
)
BEGIN
    DECLARE cliente_id INT;
    
    -- Obtener el ID del cliente usando el correo electrónico proporcionado
    SELECT IDCLIENTE INTO cliente_id
        FROM CLIENTE
    WHERE CORREO = por_email;
    
    -- Actualizar la reserva si el cliente existe y tenía una reserva cancelada
    IF cliente_id IS NOT NULL THEN
        UPDATE RESERVA
        SET CANCELACION = NULL,
            FECHA = NOW()
        WHERE IDCLIENTE = cliente_id
        AND CANCELACION IS NOT NULL;
        
        SELECT 'La reserva cancelada del cliente con correo electrónico ', por_email, ' ha sido actualizada exitosamente.';
    ELSE
        SELECT 'No se encontró ningún cliente con el correo electrónico ', por_email, '.';
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_tipo_reserva_por_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_tipo_reserva_por_email`(
    IN por_email VARCHAR(100),
    IN por_nuevo_trabajo VARCHAR(50)
)
BEGIN
    DECLARE cliente_id INT;
    DECLARE reserva_id INT;
    DECLARE nuevo_puesto_taller_id INT;
    
    -- Obtener el ID del cliente usando el correo electrónico proporcionado
    SELECT IDCLIENTE INTO cliente_id
    FROM CLIENTE
    WHERE CORREO = por_email;
    
    -- Si se encontró el cliente, obtener la última reserva hecha
    IF cliente_id IS NOT NULL THEN
        SELECT IDRESERVA INTO reserva_id
        FROM RESERVA
        WHERE IDCLIENTE = cliente_id
        ORDER BY FECHA DESC
        LIMIT 1;
        
        -- Si se encontró la reserva, actualizar el tipo de trabajo
        IF reserva_id IS NOT NULL THEN
            -- Obtener un IDPUESTOTALLER que corresponda al nuevo tipo de trabajo
            SELECT IDPUESTOTALLER INTO nuevo_puesto_taller_id
            FROM PUESTO_TRABAJO_TALLER
            WHERE IDTIPOTRABAJO = (SELECT IDTIPOTRABAJO FROM TIPO_TRABAJO WHERE TIPO_TRABAJO = por_nuevo_trabajo)
            LIMIT 1;
            
            IF nuevo_puesto_taller_id IS NOT NULL THEN
                UPDATE RESERVA
                SET IDPUESTOTALLER = nuevo_puesto_taller_id, FECHA = NOW()
                WHERE IDRESERVA = reserva_id;
                
                SELECT 'Se actualizó el tipo de reserva del cliente con correo electrónico ', por_email, ' a ', por_nuevo_trabajo, '.';
            ELSE
                SELECT 'No se encontró un puesto de trabajo para el tipo de trabajo especificado.';
            END IF;
        ELSE
            SELECT 'El cliente con correo electrónico ', por_email, ' no tiene reservas.';
        END IF;
    ELSE
        SELECT 'No se encontró ningún cliente con el correo electrónico ', por_email, '.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_empleado`(
    IN su_nombre VARCHAR(100),
    IN su_telefono VARCHAR(20),
    IN su_correo VARCHAR(100),
    IN su_dni VARCHAR(20),
    IN su_id_taller INT,
    IN su_id_tipotrabajo INT
)
BEGIN
    DECLARE taller_count INT;
    
    -- Verificar si el taller existe
    SELECT COUNT(*) INTO taller_count
    FROM TALLER
    WHERE IDTALLER = su_id_taller;
    
    -- Si el taller existe, insertar el empleado
    IF taller_count > 0 THEN
        INSERT INTO EMPLEADO (NOMBRE, TELEFONO, CORREO, DNI, IDTALLER, IDTIPOTRABAJO)
        VALUES (su_nombre, su_telefono, su_correo, su_dni, su_id_taller, su_id_tipotrabajo);
        
        SELECT 'Empleado creado exitosamente.';
    ELSE
        SELECT 'El taller especificado no existe. No se puede crear el empleado.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cancelacionesportipotrabajo`
--

/*!50001 DROP VIEW IF EXISTS `cancelacionesportipotrabajo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cancelacionesportipotrabajo` AS select `tipo_trabajo`.`TIPO_TRABAJO` AS `TIPO_TRABAJO`,count(`reserva`.`IDRESERVA`) AS `TotalCancelaciones` from ((`tipo_trabajo` join `puesto_trabajo_taller` on((`tipo_trabajo`.`IDTIPOTRABAJO` = `puesto_trabajo_taller`.`IDTIPOTRABAJO`))) left join `reserva` on((`puesto_trabajo_taller`.`IDPUESTOTALLER` = `reserva`.`IDPUESTOTALLER`))) where (`reserva`.`CANCELACION` is not null) group by `tipo_trabajo`.`TIPO_TRABAJO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `capacidadpuestos`
--

/*!50001 DROP VIEW IF EXISTS `capacidadpuestos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `capacidadpuestos` AS select `taller`.`IDTALLER` AS `IDTALLER`,`taller`.`NOMBRE` AS `nombre_taller`,`puesto_trabajo`.`TIPO_PUESTO` AS `TIPO_PUESTO`,`puesto_trabajo_taller`.`IDPUESTOTALLER` AS `IDPUESTOTALLER`,`puesto_trabajo_taller`.`CAPACIDAD` AS `capacidad_total`,count(`reserva`.`IDRESERVA`) AS `reservas_actuales`,(`puesto_trabajo_taller`.`CAPACIDAD` - coalesce(sum(`tipo_trabajo`.`DURACIONPROM`),0)) AS `capacidad_disponible` from ((((`taller` join `puesto_trabajo_taller` on((`taller`.`IDTALLER` = `puesto_trabajo_taller`.`IDTALLER`))) join `puesto_trabajo` on((`puesto_trabajo_taller`.`IDPUESTO` = `puesto_trabajo`.`IDPUESTO`))) join `tipo_trabajo` on((`puesto_trabajo_taller`.`IDTIPOTRABAJO` = `tipo_trabajo`.`IDTIPOTRABAJO`))) left join `reserva` on(((`puesto_trabajo_taller`.`IDPUESTOTALLER` = `reserva`.`IDPUESTOTALLER`) and (`reserva`.`CANCELACION` is null) and (`reserva`.`FECHA` >= curdate()) and (`reserva`.`FECHA` < (curdate() + interval 1 day))))) group by `taller`.`IDTALLER`,`taller`.`NOMBRE`,`puesto_trabajo`.`TIPO_PUESTO`,`puesto_trabajo_taller`.`IDPUESTOTALLER`,`tipo_trabajo`.`IDTIPOTRABAJO`,`puesto_trabajo_taller`.`CAPACIDAD` order by `taller`.`IDTALLER`,`puesto_trabajo`.`TIPO_PUESTO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reservasporfecha`
--

/*!50001 DROP VIEW IF EXISTS `reservasporfecha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reservasporfecha` AS select cast(`reserva`.`FECHA` as date) AS `Fecha`,count(0) AS `TotalReservas` from `reserva` group by cast(`reserva`.`FECHA` as date) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reservasportaller`
--

/*!50001 DROP VIEW IF EXISTS `reservasportaller`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reservasportaller` AS select `puesto_trabajo_taller`.`IDTALLER` AS `IDTALLER`,`tipo_trabajo`.`TIPO_TRABAJO` AS `TIPO_TRABAJO`,count(`reserva`.`IDRESERVA`) AS `TotalReservas` from ((`puesto_trabajo_taller` left join `reserva` on((`puesto_trabajo_taller`.`IDPUESTOTALLER` = `reserva`.`IDPUESTOTALLER`))) join `tipo_trabajo` on((`puesto_trabajo_taller`.`IDTIPOTRABAJO` = `tipo_trabajo`.`IDTIPOTRABAJO`))) group by `puesto_trabajo_taller`.`IDTALLER`,`tipo_trabajo`.`TIPO_TRABAJO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-23 21:28:59
