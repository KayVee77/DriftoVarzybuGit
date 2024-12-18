-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: driftovarzybos
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `dalyvavimaslygose`
--

DROP TABLE IF EXISTS `dalyvavimaslygose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dalyvavimaslygose` (
  `DalyvavimoID` int NOT NULL AUTO_INCREMENT,
  `VairuotojoID` int DEFAULT NULL,
  `LygosID` int DEFAULT NULL,
  PRIMARY KEY (`DalyvavimoID`),
  KEY `VairuotojoID` (`VairuotojoID`),
  KEY `LygosID` (`LygosID`),
  CONSTRAINT `dalyvavimaslygose_ibfk_1` FOREIGN KEY (`VairuotojoID`) REFERENCES `vairuotojai` (`VairuotojoID`),
  CONSTRAINT `dalyvavimaslygose_ibfk_2` FOREIGN KEY (`LygosID`) REFERENCES `lygos` (`LygosID`)
) ENGINE=InnoDB AUTO_INCREMENT=1428 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dalyvavimaslygose`
--

LOCK TABLES `dalyvavimaslygose` WRITE;
/*!40000 ALTER TABLE `dalyvavimaslygose` DISABLE KEYS */;
INSERT INTO `dalyvavimaslygose` VALUES (1,128,1),(2,129,1),(3,130,1),(4,131,1),(5,132,1),(6,133,1),(7,134,1),(8,135,1),(9,136,1),(10,137,1),(11,138,1),(12,139,1),(13,140,1),(14,141,1),(15,142,1),(16,143,1),(17,144,1),(18,145,1),(19,146,1),(20,147,1),(21,148,1),(22,149,1),(23,150,1),(24,151,1),(25,152,1),(26,153,1),(27,154,1),(28,155,1),(29,156,1),(30,157,1),(31,158,1),(32,159,1),(33,160,1),(34,161,1),(35,162,1),(36,163,1),(37,164,1),(38,165,1),(39,166,1),(40,167,1),(41,168,1),(42,169,1),(43,170,1),(44,171,1),(45,172,1),(46,173,1),(47,174,1),(48,175,1),(49,176,1),(50,177,1),(51,178,1),(52,179,1),(53,180,1),(54,181,1),(55,182,1),(56,183,1),(57,184,1),(58,185,1),(59,186,1),(60,187,1),(61,188,1),(64,128,1),(65,129,1),(66,130,1),(67,131,1),(68,132,1),(69,133,1),(70,134,1),(71,135,1),(72,136,1),(73,137,1),(74,138,1),(75,139,1),(76,140,1),(77,141,1),(78,142,1),(79,143,1),(80,144,1),(81,145,1),(82,146,1),(83,147,1),(84,148,1),(85,149,1),(86,150,1),(87,151,1),(88,152,1),(89,153,1),(90,154,1),(91,155,1),(92,156,1),(93,157,1),(94,158,1),(95,159,1),(96,160,1),(97,161,1),(98,162,1),(99,163,1),(100,164,1),(101,165,1),(102,166,1),(103,167,1),(104,168,1),(105,169,1),(106,170,1),(107,171,1),(108,172,1),(109,173,1),(110,174,1),(111,175,1),(112,176,1),(113,177,1),(114,178,1),(115,179,1),(116,180,1),(117,181,1),(118,182,1),(119,183,1),(120,184,1),(121,185,1),(122,186,1),(123,187,1),(124,188,1),(125,189,1),(126,190,1),(127,191,1),(128,192,1),(129,193,1),(130,194,1),(131,195,1),(132,196,1),(133,197,1),(134,198,1),(135,199,1),(136,200,1),(137,201,1),(138,202,1),(139,203,1),(140,204,1),(141,205,1),(142,206,1),(143,207,1),(144,208,1),(145,209,1),(146,210,1),(147,211,1),(148,212,1),(149,213,1),(150,214,1),(151,215,1),(152,216,1),(153,217,1),(154,218,1),(155,219,1),(156,220,1),(284,221,1),(285,222,1),(286,223,1),(287,224,1),(288,225,1),(289,226,1),(290,227,1),(291,228,1),(292,229,1),(293,230,1),(294,231,1),(295,232,1),(296,233,1),(297,234,1),(298,235,1),(299,236,1),(300,237,1),(301,238,1),(302,239,1),(303,240,1),(304,241,1),(305,242,1),(306,243,1),(307,244,1),(308,245,1),(309,246,1),(437,247,1),(438,248,1),(439,249,1),(440,250,1),(441,251,1),(442,252,1),(443,253,1),(444,254,1),(445,255,1),(446,256,1),(447,257,1),(448,258,1),(449,259,1),(450,260,1),(451,261,1),(452,262,1),(453,263,1),(454,264,1),(455,265,1),(456,266,1),(457,267,1),(458,268,1),(459,269,1),(715,270,1),(716,271,1),(717,272,1),(718,273,1),(719,274,1),(720,275,1),(828,276,2),(829,277,2),(830,278,2),(831,279,2),(832,280,2),(833,281,2),(834,282,2),(835,283,2),(836,130,2),(837,284,2),(838,285,2),(839,286,2),(840,287,2),(841,128,2),(842,288,2),(843,289,2),(844,290,2),(845,291,2),(846,230,2),(847,292,2),(848,129,2),(849,293,2),(850,229,2),(851,294,2),(852,295,2),(853,296,2),(854,297,2),(855,192,2),(856,185,2),(857,298,2),(858,299,2),(859,300,2),(860,301,2),(861,302,2),(862,133,2),(863,303,2),(864,138,2),(865,154,2),(866,157,2),(867,243,2),(868,304,2),(869,198,2),(870,169,2),(871,305,2),(872,306,2),(873,131,2),(874,259,2),(875,307,2),(876,217,2),(877,308,2),(878,309,2),(879,284,2),(880,130,2),(881,276,2),(882,191,2),(883,299,2),(884,281,2),(885,307,2),(886,287,2),(887,278,2),(888,129,2),(889,280,2),(890,293,2),(891,229,2),(892,157,2),(893,283,2),(894,185,2),(895,310,2),(896,282,2),(897,128,2),(898,288,2),(899,294,2),(900,311,2),(901,192,2),(902,133,2),(903,138,2),(904,132,2),(905,305,2),(906,312,2),(907,302,2),(908,279,2),(909,226,2),(910,301,2),(911,173,2),(912,303,2),(913,300,2),(914,292,2),(915,154,2),(916,194,2),(917,313,2),(918,186,2),(919,211,2),(920,289,2),(921,215,2),(922,206,2),(923,198,2),(924,314,2),(925,290,2),(926,243,2),(927,291,2),(928,259,2),(929,169,2),(930,217,2),(931,189,2),(932,278,2),(933,277,2),(934,279,2),(935,292,2),(936,130,2),(937,295,2),(938,128,2),(939,315,2),(940,316,2),(941,294,2),(942,312,2),(943,198,2),(944,129,2),(945,317,2),(946,289,2),(947,185,2),(948,281,2),(949,287,2),(950,299,2),(951,303,2),(952,286,2),(953,282,2),(954,291,2),(955,284,2),(956,301,2),(957,296,2),(958,305,2),(959,293,2),(960,318,2),(961,319,2),(962,280,2),(963,320,2),(964,288,2),(965,321,2),(966,154,2),(967,283,2),(968,309,2),(969,297,2),(970,243,2),(971,302,2),(972,290,2),(973,304,2),(974,307,2),(975,322,2),(976,323,2),(977,324,2),(978,201,2),(979,169,2),(980,226,2),(981,217,2),(982,185,2),(983,281,2),(984,128,2),(985,282,2),(986,296,2),(987,325,2),(988,137,2),(989,301,2),(990,312,2),(991,326,2),(992,226,2),(993,291,2),(994,280,2),(995,130,2),(996,129,2),(997,290,2),(998,284,2),(999,287,2),(1000,278,2),(1001,294,2),(1002,276,2),(1003,131,2),(1004,299,2),(1005,305,2),(1006,279,2),(1007,243,2),(1008,295,2),(1009,327,2),(1010,309,2),(1011,302,2),(1012,300,2),(1013,297,2),(1014,289,2),(1015,292,2),(1016,293,2),(1017,133,2),(1018,227,2),(1019,328,2),(1020,303,2),(1021,186,2),(1022,147,2),(1023,307,2),(1024,288,2),(1025,175,2),(1026,154,2),(1027,329,2),(1028,198,2),(1029,262,2),(1030,157,2),(1031,151,2),(1032,152,2),(1033,180,2),(1034,330,2),(1035,308,2),(1036,206,2),(1037,217,2),(1038,331,2),(1039,298,2),(1040,189,2),(1041,259,2),(1042,313,2),(1043,246,2),(1044,173,2),(1045,332,2),(1046,333,2),(1047,215,2),(1048,276,2),(1049,291,2),(1050,330,2),(1051,133,2),(1052,185,2),(1053,299,2),(1054,324,2),(1055,312,2),(1056,280,2),(1057,334,2),(1058,128,2),(1059,278,2),(1060,305,2),(1061,303,2),(1062,294,2),(1063,129,2),(1064,301,2),(1065,281,2),(1066,335,2),(1067,279,2),(1068,286,2),(1069,157,2),(1070,285,2),(1071,296,2),(1072,198,2),(1073,287,2),(1074,316,2),(1075,130,2),(1076,292,2),(1077,317,2),(1078,230,2),(1079,288,2),(1080,293,2),(1081,295,2),(1082,192,2),(1083,131,2),(1084,282,2),(1085,336,2),(1086,151,2),(1087,322,2),(1088,311,2),(1089,186,2),(1090,154,2),(1091,137,2),(1092,302,2),(1093,321,2),(1094,327,2),(1095,173,2),(1096,297,2),(1097,307,2),(1098,243,2),(1099,289,2),(1100,337,2),(1101,338,2),(1102,147,2),(1103,300,2),(1104,169,2),(1105,175,2),(1106,226,2),(1107,323,2),(1108,283,2),(1109,217,2),(1110,180,2),(1111,259,2),(1112,211,2),(1113,290,2),(1114,284,2),(1115,331,2),(1116,309,2),(1117,333,2),(1118,208,1),(1119,164,1),(1120,171,1),(1121,141,1),(1122,339,1),(1123,340,1),(1124,221,1),(1125,145,1),(1126,341,1),(1127,342,1),(1128,228,1),(1129,174,1),(1130,343,1),(1131,204,1),(1132,175,1),(1133,220,1),(1134,344,1),(1135,163,1),(1136,345,1),(1137,346,1),(1138,148,1),(1139,347,1),(1140,213,1),(1141,348,1),(1142,235,1),(1143,165,1),(1144,212,1),(1145,260,1),(1146,238,1),(1147,203,1),(1148,183,1),(1149,349,1),(1150,155,1),(1151,350,1),(1152,207,1),(1153,263,1),(1154,200,1),(1155,351,1),(1156,251,1),(1157,352,1),(1158,353,1),(1159,354,1),(1160,355,1),(1161,184,1),(1162,215,1),(1163,262,1),(1164,209,1),(1165,169,1),(1166,356,1),(1167,190,1),(1168,221,1),(1169,163,1),(1170,155,1),(1171,343,1),(1172,357,1),(1173,358,1),(1174,204,1),(1175,228,1),(1176,161,1),(1177,213,1),(1178,186,1),(1179,145,1),(1180,359,1),(1181,220,1),(1182,148,1),(1183,360,1),(1184,171,1),(1185,150,1),(1186,165,1),(1187,164,1),(1188,175,1),(1189,225,1),(1190,361,1),(1191,170,1),(1192,362,1),(1193,348,1),(1194,263,1),(1195,134,1),(1196,346,1),(1197,363,1),(1198,141,1),(1199,166,1),(1200,364,1),(1201,365,1),(1202,366,1),(1203,367,1),(1204,344,1),(1205,347,1),(1206,341,1),(1207,260,1),(1208,238,1),(1209,351,1),(1210,207,1),(1211,174,1),(1212,255,1),(1213,183,1),(1214,342,1),(1215,368,1),(1216,369,1),(1217,153,1),(1218,339,1),(1219,235,1),(1220,370,1),(1221,371,1),(1222,372,1),(1223,232,1),(1224,373,1),(1225,201,1),(1226,266,1),(1227,212,1),(1228,180,1),(1229,374,1),(1230,375,1),(1231,184,1),(1232,262,1),(1233,169,1),(1234,203,1),(1235,376,1),(1236,377,1),(1237,209,1),(1238,195,1),(1239,378,1),(1240,379,1),(1241,380,1),(1242,179,1),(1243,353,1),(1244,355,1),(1245,246,1),(1246,381,1),(1247,382,1),(1248,221,1),(1249,383,1),(1250,141,1),(1251,343,1),(1252,225,1),(1253,233,1),(1254,362,1),(1255,156,1),(1256,163,1),(1257,228,1),(1258,342,1),(1259,145,1),(1260,165,1),(1261,339,1),(1262,176,1),(1263,164,1),(1264,171,1),(1265,344,1),(1266,235,1),(1267,155,1),(1268,238,1),(1269,341,1),(1270,166,1),(1271,373,1),(1272,148,1),(1273,231,1),(1274,384,1),(1275,213,1),(1276,348,1),(1277,385,1),(1278,386,1),(1279,136,1),(1280,150,1),(1281,248,1),(1282,387,1),(1283,378,1),(1284,212,1),(1285,174,1),(1286,388,1),(1287,234,1),(1288,389,1),(1289,220,1),(1290,245,1),(1291,390,1),(1292,391,1),(1293,183,1),(1294,232,1),(1295,252,1),(1296,392,1),(1297,393,1),(1298,394,1),(1299,179,1),(1300,246,1),(1301,169,1),(1302,262,1),(1303,355,1),(1304,370,1),(1305,395,1),(1306,188,1),(1307,396,1),(1308,397,1),(1309,376,1),(1310,144,1),(1311,398,1),(1312,399,1),(1313,215,1),(1314,279,2),(1315,280,2),(1316,133,2),(1317,139,2),(1318,301,2),(1319,290,2),(1320,129,2),(1321,150,2),(1322,174,2),(1323,287,2),(1324,291,2),(1325,296,2),(1326,293,2),(1327,282,2),(1328,231,2),(1329,288,2),(1330,156,2),(1331,305,2),(1332,243,2),(1333,344,2),(1334,185,2),(1335,292,2),(1336,370,2),(1337,373,2),(1338,389,2),(1339,154,2),(1340,308,2),(1341,169,2),(1342,342,2),(1343,295,2),(1344,300,2),(1345,307,2),(1346,400,2),(1347,130,2),(1348,317,2),(1349,246,2),(1350,378,2),(1351,183,2),(1352,332,2),(1353,301,2),(1354,243,2),(1355,130,2),(1356,139,2),(1357,174,2),(1358,299,2),(1359,282,2),(1360,296,2),(1361,151,2),(1362,198,2),(1363,211,2),(1364,150,2),(1365,331,2),(1366,303,2),(1367,307,2),(1368,138,2),(1369,293,2),(1370,133,2),(1371,294,2),(1372,389,2),(1373,129,2),(1374,401,2),(1375,279,2),(1376,332,2),(1377,317,2),(1378,305,2),(1379,259,2),(1380,295,2),(1381,201,2),(1382,154,2),(1383,280,2),(1384,339,2),(1385,173,2),(1386,402,2),(1387,280,2),(1388,130,2),(1389,139,2),(1390,298,2),(1391,279,2),(1392,301,2),(1393,151,2),(1394,133,2),(1395,154,2),(1396,138,2),(1397,129,2),(1398,185,2),(1399,282,2),(1400,230,2),(1401,403,2),(1402,290,2),(1403,305,2),(1404,288,2),(1405,404,2),(1406,243,2),(1407,224,2),(1408,150,2),(1409,186,2),(1410,173,2),(1411,339,2),(1412,295,2),(1413,373,2),(1414,308,2),(1415,296,2),(1416,405,2),(1417,313,2),(1418,378,2),(1419,406,2),(1420,174,2),(1421,371,2),(1422,259,2),(1423,198,2),(1424,289,2),(1425,286,2),(1426,169,2),(1427,293,2);
/*!40000 ALTER TABLE `dalyvavimaslygose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapai`
--

DROP TABLE IF EXISTS `etapai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etapai` (
  `EtapoID` int NOT NULL AUTO_INCREMENT,
  `Pavadinimas` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Aprasymas` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LygosID` int DEFAULT NULL,
  `Metai` int DEFAULT NULL,
  PRIMARY KEY (`EtapoID`),
  KEY `FK_Etapas_Lyga` (`LygosID`),
  CONSTRAINT `FK_Etapas_Lyga` FOREIGN KEY (`LygosID`) REFERENCES `lygos` (`LygosID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapai`
--

LOCK TABLES `etapai` WRITE;
/*!40000 ALTER TABLE `etapai` DISABLE KEYS */;
INSERT INTO `etapai` VALUES (1,'VI','2021 metu 6 etapas',1,2021),(2,'V','2021 metu 5 etapas',1,2021),(3,'IV','2021 metu 4 etapas',1,2021),(4,'III','2021 metu 3 etapas',1,2021),(5,'II','2021 metu 2 etapas',1,2021),(6,'I','2021 metu 1 etapas',1,2021),(7,'VI','2021 metu 6 etapas',2,2021),(8,'V','2021 metu 5 etapas',2,2021),(9,'IV','2021 metu 4 etapas',2,2021),(10,'III','2021 metu 3 etapas',2,2021),(11,'II','2021 metu 2 etapas',2,2021),(12,'I','2021 metu 1 etapas',2,2021),(13,'VI','2022 metu 6 etapas',1,2022),(14,'V','2022 metu 5 etapas',1,2022),(15,'IV','2022 metu 4 etapas',1,2022),(16,'III','2022 metu 3 etapas',1,2022),(17,'II','2022 metu 2 etapas',1,2022),(18,'I','2022 metu 1 etapas',1,2022),(19,'VI','2022 metu 6 etapas',2,2022),(20,'V','2022 metu 5 etapas',2,2022),(21,'IV','2022 metu 4 etapas',2,2022),(22,'III','2022 metu 3 etapas',2,2022),(23,'II','2022 metu 2 etapas',2,2022),(24,'I','2022 metu 1 etapas',2,2022);
/*!40000 ALTER TABLE `etapai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galutiniairezultatai`
--

DROP TABLE IF EXISTS `galutiniairezultatai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galutiniairezultatai` (
  `RezultatoID` int NOT NULL AUTO_INCREMENT,
  `VarzybuID` int DEFAULT NULL,
  `VairuotojoID` int DEFAULT NULL,
  `BendriTaskai` int DEFAULT NULL,
  `Pozicija` int DEFAULT NULL,
  `Etapo1Taskai` int DEFAULT NULL,
  `Etapo2Taskai` int DEFAULT NULL,
  `Etapo3Taskai` int DEFAULT NULL,
  `Etapo4Taskai` int DEFAULT NULL,
  `Etapo5Taskai` int DEFAULT NULL,
  `Etapo6Taskai` int DEFAULT NULL,
  PRIMARY KEY (`RezultatoID`),
  KEY `VarzybuID` (`VarzybuID`),
  KEY `VairuotojoID` (`VairuotojoID`),
  CONSTRAINT `galutiniairezultatai_ibfk_1` FOREIGN KEY (`VarzybuID`) REFERENCES `varzybos` (`VarzybuID`),
  CONSTRAINT `galutiniairezultatai_ibfk_2` FOREIGN KEY (`VairuotojoID`) REFERENCES `vairuotojai` (`VairuotojoID`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galutiniairezultatai`
--

LOCK TABLES `galutiniairezultatai` WRITE;
/*!40000 ALTER TABLE `galutiniairezultatai` DISABLE KEYS */;
INSERT INTO `galutiniairezultatai` VALUES (1,1,128,487,1,57,96,34,96,95,108),(2,1,129,422,2,58,68,108,58,32,96),(3,1,130,406,3,34,87,96,34,68,87),(4,1,132,384,4,31,33,87,59,107,69),(5,1,139,348,5,58,108,58,8,58,58),(6,1,137,365,6,75,33,33,108,57,59),(7,1,135,344,7,32,68,58,34,84,68),(8,1,163,317,8,57,58,77,86,32,9),(9,1,133,303,9,33,58,8,78,58,68),(10,1,141,283,10,58,58,33,77,58,283),(11,1,159,305,12,66,58,58,58,32,33),(12,1,145,280,13,106,33,32,7,68,34),(13,1,138,238,14,32,58,33,58,58,238),(14,1,151,236,16,96,33,33,8,32,33),(15,1,157,222,17,84,8,7,58,32,33),(16,1,191,214,18,32,58,59,33,33,214),(17,1,144,199,20,33,33,33,66,34,199),(18,1,185,191,22,33,58,69,31,0,191),(19,1,193,186,24,31,32,57,33,32,186),(20,1,155,178,26,31,8,8,68,31,33),(21,1,131,148,29,6,33,33,0,77,148),(22,1,186,146,31,31,57,58,0,0,146),(23,1,150,139,33,8,33,33,32,33,139),(24,1,154,137,35,56,8,8,32,33,137),(25,1,166,89,49,0,8,32,7,32,8),(26,1,174,93,50,6,8,32,8,31,8),(27,1,173,86,51,31,8,7,32,8,86),(28,1,158,79,53,31,7,0,8,33,79),(29,1,175,64,58,32,8,8,8,8,64),(30,1,213,59,61,7,33,7,8,5,59),(31,1,177,38,79,5,8,8,8,8,38),(32,1,170,15,101,0,7,0,0,8,15),(33,2,278,381,1,59,108,34,34,59,87),(34,2,130,374,2,33,69,68,58,87,60),(35,2,128,362,3,59,68,58,87,33,57),(36,2,281,358,5,34,33,59,97,68,67),(37,2,284,307,6,0,32,85,34,96,59),(38,2,280,334,7,59,32,58,58,58,68),(39,2,185,300,8,70,57,108,34,31,300),(40,2,129,296,10,58,58,32,58,58,32),(41,2,279,294,11,34,85,33,33,31,77),(42,2,299,292,12,69,33,58,33,68,31),(43,2,292,267,13,33,78,109,8,7,32),(44,2,291,255,14,97,32,34,59,0,33),(45,2,312,250,15,68,58,33,59,32,250),(46,2,286,240,17,34,33,57,59,58,240),(47,2,287,225,19,33,33,8,34,59,58),(48,2,294,247,20,58,58,33,33,33,32),(49,2,293,209,21,9,32,69,8,58,32),(50,2,296,198,23,33,32,32,69,31,198),(51,2,295,174,25,9,68,32,33,31,174),(52,2,283,146,27,8,8,8,56,67,146),(53,2,288,146,30,33,8,7,8,33,56),(54,2,289,143,31,9,57,7,8,6,56),(55,2,226,130,32,8,0,33,59,31,130),(56,2,307,123,35,9,6,32,8,68,0),(57,2,297,112,36,9,8,32,32,31,112),(58,2,198,114,38,33,58,7,8,5,4),(59,2,290,104,41,6,7,58,0,34,104),(60,2,243,61,53,9,7,7,33,0,5),(61,2,154,37,60,9,8,8,6,6,37),(62,2,217,14,76,8,0,6,0,0,14),(72,4,301,424,1,88,88,66,108,73,NULL),(73,4,280,399,2,65,112,106,24,92,NULL),(74,4,139,316,3,55,24,88,72,77,NULL),(75,4,130,302,4,61,58,92,90,1,NULL),(76,4,282,284,5,78,32,56,63,54,NULL),(77,4,133,278,6,54,55,62,26,81,NULL),(78,4,243,269,7,64,61,24,94,25,NULL),(79,4,129,264,8,54,63,57,25,64,NULL),(80,4,279,256,9,0,62,69,24,101,NULL),(81,4,293,209,12,103,24,0,27,55,NULL),(82,4,154,136,20,25,1,61,24,24,NULL),(83,4,295,123,22,26,24,24,24,24,NULL),(84,4,317,82,31,54,1,1,24,1,NULL);
/*!40000 ALTER TABLE `galutiniairezultatai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kvalifikacija`
--

DROP TABLE IF EXISTS `kvalifikacija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kvalifikacija` (
  `KvalifikacijosID` int NOT NULL AUTO_INCREMENT,
  `VarzybuID` int DEFAULT NULL,
  `VairuotojoID` int DEFAULT NULL,
  `Vaziavimas1` int DEFAULT NULL,
  `Vaziavimas2` int DEFAULT NULL,
  `GeriausiTaskai` int DEFAULT NULL,
  PRIMARY KEY (`KvalifikacijosID`),
  KEY `VarzybuID` (`VarzybuID`),
  KEY `VairuotojoID` (`VairuotojoID`),
  CONSTRAINT `kvalifikacija_ibfk_1` FOREIGN KEY (`VarzybuID`) REFERENCES `varzybos` (`VarzybuID`),
  CONSTRAINT `kvalifikacija_ibfk_2` FOREIGN KEY (`VairuotojoID`) REFERENCES `vairuotojai` (`VairuotojoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kvalifikacija`
--

LOCK TABLES `kvalifikacija` WRITE;
/*!40000 ALTER TABLE `kvalifikacija` DISABLE KEYS */;
/*!40000 ALTER TABLE `kvalifikacija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lygos`
--

DROP TABLE IF EXISTS `lygos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lygos` (
  `LygosID` int NOT NULL AUTO_INCREMENT,
  `Pavadinimas` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Aprasymas` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`LygosID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lygos`
--

LOCK TABLES `lygos` WRITE;
/*!40000 ALTER TABLE `lygos` DISABLE KEYS */;
INSERT INTO `lygos` VALUES (1,'STREET','Street lyga'),(2,'SEMI-PRO','Semi-pro lyga'),(3,'PRO','Pro lyga');
/*!40000 ALTER TABLE `lygos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metineiskaita`
--

DROP TABLE IF EXISTS `metineiskaita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metineiskaita` (
  `IskaitosID` int NOT NULL AUTO_INCREMENT,
  `SezonoID` int DEFAULT NULL,
  `VairuotojoID` int DEFAULT NULL,
  `BendriTaskai` int DEFAULT NULL,
  `Pozicija` int DEFAULT NULL,
  PRIMARY KEY (`IskaitosID`),
  KEY `SezonoID` (`SezonoID`),
  KEY `VairuotojoID` (`VairuotojoID`),
  CONSTRAINT `metineiskaita_ibfk_1` FOREIGN KEY (`SezonoID`) REFERENCES `sezonai` (`SezonoID`),
  CONSTRAINT `metineiskaita_ibfk_2` FOREIGN KEY (`VairuotojoID`) REFERENCES `vairuotojai` (`VairuotojoID`)
) ENGINE=InnoDB AUTO_INCREMENT=640 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metineiskaita`
--

LOCK TABLES `metineiskaita` WRITE;
/*!40000 ALTER TABLE `metineiskaita` DISABLE KEYS */;
INSERT INTO `metineiskaita` VALUES (1,1,128,453,1),(2,1,129,390,2),(3,1,130,372,3),(4,1,132,354,4),(5,1,139,340,5),(6,1,137,332,6),(7,1,135,312,7),(8,1,163,309,8),(9,1,133,295,9),(10,1,141,283,10),(11,1,134,274,11),(12,1,159,273,12),(13,1,145,273,13),(14,1,138,238,14),(15,1,140,232,15),(16,1,151,228,16),(17,1,157,215,17),(18,1,191,214,18),(19,1,136,213,19),(20,1,144,199,20),(21,1,149,197,21),(22,1,185,191,22),(23,1,148,186,23),(24,1,193,186,24),(25,1,162,178,25),(26,1,155,171,26),(27,1,221,166,27),(28,1,131,148,29),(29,1,165,147,30),(30,1,186,146,31),(31,1,198,145,32),(32,1,150,139,33),(33,1,147,137,34),(34,1,154,137,35),(35,1,156,137,36),(36,1,247,134,37),(37,1,143,134,38),(38,1,230,132,39),(39,1,146,132,40),(40,1,164,118,41),(41,1,226,105,42),(42,1,225,104,43),(43,1,153,97,44),(44,1,142,97,45),(45,1,190,95,46),(46,1,223,90,47),(47,1,178,90,48),(48,1,166,89,49),(49,1,174,87,50),(50,1,173,86,51),(51,1,211,85,52),(52,1,158,79,53),(53,1,161,78,54),(54,1,152,75,55),(55,1,205,69,56),(56,1,189,65,57),(57,1,175,64,58),(58,1,249,64,59),(59,1,255,63,60),(60,1,213,59,61),(61,1,238,52,62),(62,1,231,49,63),(63,1,199,48,64),(64,1,202,47,65),(65,1,248,47,66),(66,1,167,47,67),(67,1,245,46,68),(68,1,196,46,69),(69,1,241,46,70),(70,1,200,45,71),(71,1,228,41,72),(72,1,235,40,73),(73,1,229,40,74),(74,1,254,39,75),(75,1,195,38,77),(76,1,201,38,78),(77,1,177,38,79),(78,1,180,35,80),(79,1,270,31,81),(80,1,271,31,82),(81,1,168,30,83),(82,1,234,28,84),(83,1,169,27,85),(84,1,206,22,86),(85,1,236,22,87),(86,1,237,21,88),(87,1,262,21,89),(88,1,172,21,90),(89,1,216,20,91),(90,1,210,20,92),(91,1,203,20,93),(92,1,219,20,94),(93,1,260,19,95),(94,1,209,17,96),(95,1,184,17,97),(96,1,160,16,98),(97,1,252,16,99),(98,1,176,16,100),(99,1,170,15,101),(100,1,179,15,102),(101,1,251,14,103),(102,1,181,14,104),(103,1,256,13,106),(104,1,266,12,107),(105,1,208,10,108),(106,1,263,10,109),(107,1,250,8,110),(108,1,171,8,111),(109,1,220,8,112),(110,1,233,8,113),(111,1,253,8,114),(112,1,182,7,117),(113,1,259,7,118),(114,1,261,7,120),(115,1,204,6,121),(116,1,272,6,122),(117,1,183,6,123),(118,1,207,6,124),(119,1,273,5,125),(120,1,274,5,126),(121,1,275,5,127),(122,1,212,5,128),(123,1,264,5,129),(124,1,268,5,130),(125,1,269,0,131),(126,1,244,0,132),(127,1,267,0,133),(128,1,265,0,134),(129,1,246,0,135),(130,1,243,0,137),(131,1,215,0,138),(132,1,217,0,139),(133,1,188,0,140),(134,1,214,0,0),(135,1,197,31,20),(136,2,278,347,1),(137,2,130,341,2),(138,2,128,329,3),(139,2,276,328,4),(140,2,281,325,5),(141,2,284,307,6),(142,2,280,302,7),(143,2,185,300,8),(144,2,282,269,9),(145,2,129,265,10),(146,2,279,263,11),(147,2,299,261,12),(148,2,292,260,13),(149,2,291,255,14),(150,2,312,250,15),(151,2,309,246,16),(152,2,286,240,17),(153,2,305,224,18),(154,2,287,217,19),(155,2,294,216,20),(156,2,293,200,21),(157,2,277,200,22),(158,2,296,198,23),(159,2,301,176,24),(160,2,295,174,25),(161,2,324,171,26),(162,2,283,146,27),(163,2,303,140,28),(164,2,288,139,30),(165,2,289,138,31),(166,2,226,130,32),(167,2,133,125,33),(168,2,316,124,34),(169,2,307,123,35),(170,2,297,112,36),(171,2,300,111,37),(172,2,198,111,38),(173,2,310,109,39),(174,2,327,109,40),(175,2,290,104,41),(176,2,157,104,42),(177,2,330,102,43),(178,2,317,97,44),(179,2,285,92,45),(180,2,229,90,46),(181,2,132,89,47),(182,2,302,86,48),(183,2,137,84,49),(184,2,315,75,50),(185,2,191,68,51),(186,2,230,66,52),(187,2,243,61,53),(188,2,334,59,54),(189,2,298,44,55),(190,2,131,42,56),(191,2,311,42,57),(192,2,319,39,58),(193,2,138,38,59),(194,2,154,37,60),(195,2,335,34,61),(196,2,318,32,62),(197,2,320,32,63),(198,2,151,24,64),(199,2,175,23,65),(200,2,186,23,66),(201,2,211,20,67),(202,2,180,20,68),(203,2,304,19,69),(204,2,206,18,70),(205,2,321,17,71),(206,2,147,16,72),(207,2,322,16,73),(208,2,173,16,74),(209,2,328,14,75),(210,2,217,14,76),(211,2,152,14,77),(212,2,331,12,78),(213,2,336,9,79),(214,2,337,9,80),(215,2,169,8,81),(216,2,338,8,82),(217,2,323,8,83),(218,2,329,8,84),(219,2,262,8,85),(220,2,308,7,86),(221,2,259,7,87),(222,2,215,5,88),(223,2,332,5,89),(224,2,189,4,90),(225,2,201,0,91),(226,2,333,0,93),(227,2,246,0,94),(228,2,313,6,0),(450,5,301,424,1),(451,5,280,399,2),(452,5,139,316,3),(453,5,130,302,4),(454,5,282,284,5),(455,5,133,278,6),(456,5,243,269,7),(457,5,129,264,8),(458,5,279,256,9),(459,5,151,255,10),(460,5,150,212,11),(461,5,293,209,12),(462,5,185,204,13),(463,5,290,204,14),(464,5,288,168,15),(465,5,296,168,16),(466,5,174,160,17),(467,5,138,137,19),(468,5,154,136,20),(469,5,404,133,21),(470,5,295,123,22),(471,5,291,112,23),(472,5,173,112,24),(473,5,305,105,25),(474,5,308,103,26),(475,5,339,98,27),(476,5,298,97,28),(477,5,299,89,29),(478,5,287,88,30),(479,5,317,82,31),(480,5,211,81,32),(481,5,405,80,33),(482,5,198,80,34),(483,5,403,80,35),(484,5,331,79,36),(485,5,259,77,37),(486,5,332,73,38),(487,5,321,66,39),(488,5,303,56,40),(489,5,137,55,41),(490,5,373,51,42),(491,5,313,50,43),(492,5,169,50,44),(493,5,201,49,45),(494,5,378,26,46),(495,5,156,26,47),(496,5,186,26,48),(497,5,344,25,49),(498,5,283,24,50),(499,5,286,24,51),(500,5,224,24,52),(501,5,401,24,53),(502,5,292,24,54),(503,5,370,24,55),(504,5,342,24,56),(505,5,300,24,57),(506,5,371,2,58),(507,5,246,2,59),(508,5,164,1,61),(509,5,226,1,62),(510,5,400,1,65),(511,5,289,0,66),(512,5,215,0,67),(513,5,158,0,68),(514,5,183,0,69),(515,5,230,55,NULL),(516,5,231,54,NULL),(517,5,389,49,NULL),(518,5,294,25,NULL),(519,4,221,367,1),(520,4,225,348,2),(521,4,141,321,3),(522,4,343,292,4),(523,4,164,279,5),(524,4,339,274,6),(525,4,341,261,7),(526,4,145,257,8),(527,4,163,234,9),(528,4,383,216,10),(529,4,171,192,11),(530,4,342,188,12),(531,4,148,184,13),(532,4,165,183,14),(533,4,228,178,15),(534,4,155,176,16),(535,4,235,162,17),(536,4,208,158,18),(537,4,174,148,19),(538,4,161,140,20),(539,4,220,136,21),(540,4,204,135,22),(541,4,213,131,23),(542,4,344,118,25),(543,4,175,105,26),(544,4,238,99,27),(545,4,150,89,28),(546,4,166,84,30),(547,4,266,84,31),(548,4,183,82,32),(549,4,263,81,33),(550,4,160,80,34),(551,4,371,80,35),(552,4,348,74,36),(553,4,358,69,37),(554,4,233,69,38),(555,4,394,64,39),(556,4,156,61,40),(557,4,368,61,41),(558,4,186,57,42),(559,4,359,55,44),(560,4,346,50,45),(561,4,179,50,46),(562,4,136,49,47),(563,4,170,49,48),(564,4,207,39,49),(565,4,347,39,50),(566,4,260,37,51),(567,4,384,37,52),(568,4,373,28,53),(569,4,212,27,54),(570,4,395,26,55),(571,4,153,26,56),(572,4,203,26,57),(573,4,345,26,58),(574,4,360,24,59),(575,4,361,24,60),(576,4,134,24,61),(577,4,378,15,62),(578,4,351,14,63),(579,4,355,14,64),(580,4,252,13,65),(581,4,246,13,66),(582,4,131,12,67),(583,4,364,12,68),(584,4,365,12,69),(585,4,366,12,70),(586,4,255,12,71),(587,4,262,5,72),(588,4,169,4,73),(589,4,184,3,74),(590,4,188,3,75),(591,4,201,3,76),(592,4,234,2,77),(593,4,209,2,78),(594,4,168,2,79),(595,4,370,2,80),(596,4,144,1,82),(597,4,353,1,83),(598,4,215,1,84),(599,4,376,1,86),(600,4,180,1,87),(601,4,377,1,88),(602,4,195,1,89),(603,4,398,0,92),(604,4,190,0,93),(605,4,380,0,95),(606,4,381,0,96),(607,4,382,0,97),(608,4,356,0,98),(609,4,398,0,99),(610,4,362,86,NULL),(611,4,176,54,NULL),(612,4,245,26,NULL),(613,4,389,25,NULL),(614,4,231,24,NULL),(615,4,385,24,NULL),(616,4,386,24,NULL),(617,4,363,24,NULL),(618,4,377,24,NULL),(619,4,232,15,NULL),(620,4,367,12,NULL),(621,4,248,1,NULL),(622,4,251,1,NULL),(623,4,388,1,NULL),(624,4,354,1,NULL),(625,4,387,1,NULL),(626,4,391,1,NULL),(627,4,390,1,NULL),(628,4,352,1,NULL),(629,4,350,1,NULL),(630,4,200,1,NULL),(631,4,375,1,NULL),(632,4,379,1,NULL),(633,4,182,1,NULL),(634,4,369,1,NULL),(635,4,372,1,NULL),(636,4,374,1,NULL),(637,4,397,0,NULL),(638,4,396,0,NULL),(639,4,399,0,NULL);
/*!40000 ALTER TABLE `metineiskaita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizatoriai`
--

DROP TABLE IF EXISTS `organizatoriai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizatoriai` (
  `OrganizatoriausID` int NOT NULL AUTO_INCREMENT,
  `Pavadinimas` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Salis` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `EtapoID` int DEFAULT NULL,
  PRIMARY KEY (`OrganizatoriausID`),
  KEY `FK_organizatoriai_Etapas` (`EtapoID`),
  CONSTRAINT `FK_organizatoriai_Etapas` FOREIGN KEY (`EtapoID`) REFERENCES `etapai` (`EtapoID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizatoriai`
--

LOCK TABLES `organizatoriai` WRITE;
/*!40000 ALTER TABLE `organizatoriai` DISABLE KEYS */;
INSERT INTO `organizatoriai` VALUES (1,'Marijampolė','Lietuva',1),(2,'Klaipėda','Lietuva',1),(3,'Molėtai','Lietuva',1),(4,'Alytus','Lietuva',1),(5,'Kuršėnai','Lietuva',1),(6,'Klaipėda','Lietuva',1),(7,'Kačerginė','Lietuva',7),(8,'Klaipėda','Lietuva',8),(9,'Molėtai','Lietuva',9),(10,'Alytus','Lietuva',10),(11,'Kačerginė','Lietuva',11),(12,'Kuršėnai','Lietuva',12),(13,'Molėtai','Lietuva',13),(14,'Klaipėda','Lietuva',14),(15,'Kuršėnai','Lietuva',15),(16,'Alytus','Lietuva',16),(17,'Marijampolė','Lietuva',17),(18,'Kuršėnai','Lietuva',18),(19,'Molėtai','Lietuva',19),(20,'Bialystok','Lietuva',20),(21,'Kuršėnai','Lietuva',21),(22,'Alytus','Lietuva',22),(23,'Kačerginė','Lietuva',23);
/*!40000 ALTER TABLE `organizatoriai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poriniaivaziavimai`
--

DROP TABLE IF EXISTS `poriniaivaziavimai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poriniaivaziavimai` (
  `VaziavimoID` int NOT NULL AUTO_INCREMENT,
  `VarzybuID` int DEFAULT NULL,
  `EtapoID` int DEFAULT NULL,
  `PoraNumeris` int DEFAULT NULL,
  PRIMARY KEY (`VaziavimoID`),
  KEY `VarzybuID` (`VarzybuID`),
  KEY `EtapoID` (`EtapoID`),
  CONSTRAINT `poriniaivaziavimai_ibfk_1` FOREIGN KEY (`VarzybuID`) REFERENCES `varzybos` (`VarzybuID`),
  CONSTRAINT `poriniaivaziavimai_ibfk_2` FOREIGN KEY (`EtapoID`) REFERENCES `etapai` (`EtapoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poriniaivaziavimai`
--

LOCK TABLES `poriniaivaziavimai` WRITE;
/*!40000 ALTER TABLE `poriniaivaziavimai` DISABLE KEYS */;
/*!40000 ALTER TABLE `poriniaivaziavimai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poriniuvaziavimurezultatai`
--

DROP TABLE IF EXISTS `poriniuvaziavimurezultatai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poriniuvaziavimurezultatai` (
  `RezultatoID` int NOT NULL AUTO_INCREMENT,
  `PorosID` int DEFAULT NULL,
  `LaimetojasID` int DEFAULT NULL,
  PRIMARY KEY (`RezultatoID`),
  KEY `PorosID` (`PorosID`),
  KEY `LaimetojasID` (`LaimetojasID`),
  CONSTRAINT `poriniuvaziavimurezultatai_ibfk_1` FOREIGN KEY (`PorosID`) REFERENCES `poriniaivaziavimai` (`VaziavimoID`),
  CONSTRAINT `poriniuvaziavimurezultatai_ibfk_2` FOREIGN KEY (`LaimetojasID`) REFERENCES `vairuotojai` (`VairuotojoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poriniuvaziavimurezultatai`
--

LOCK TABLES `poriniuvaziavimurezultatai` WRITE;
/*!40000 ALTER TABLE `poriniuvaziavimurezultatai` DISABLE KEYS */;
/*!40000 ALTER TABLE `poriniuvaziavimurezultatai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sezonai`
--

DROP TABLE IF EXISTS `sezonai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sezonai` (
  `SezonoID` int NOT NULL AUTO_INCREMENT,
  `LygosID` int DEFAULT NULL,
  `Metai` int DEFAULT NULL,
  PRIMARY KEY (`SezonoID`),
  KEY `LygosID` (`LygosID`),
  CONSTRAINT `sezonai_ibfk_1` FOREIGN KEY (`LygosID`) REFERENCES `lygos` (`LygosID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sezonai`
--

LOCK TABLES `sezonai` WRITE;
/*!40000 ALTER TABLE `sezonai` DISABLE KEYS */;
INSERT INTO `sezonai` VALUES (1,1,2021),(2,2,2021),(3,3,2021),(4,1,2022),(5,2,2022),(6,3,2022),(7,1,2023),(8,2,2023),(9,3,2023);
/*!40000 ALTER TABLE `sezonai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tvarkarastis`
--

DROP TABLE IF EXISTS `tvarkarastis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tvarkarastis` (
  `TvarkarascioID` int NOT NULL AUTO_INCREMENT,
  `VarzybuID` int DEFAULT NULL,
  `Laikas` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Veiksmas` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`TvarkarascioID`),
  KEY `VarzybuID` (`VarzybuID`),
  CONSTRAINT `tvarkarastis_ibfk_1` FOREIGN KEY (`VarzybuID`) REFERENCES `varzybos` (`VarzybuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tvarkarastis`
--

LOCK TABLES `tvarkarastis` WRITE;
/*!40000 ALTER TABLE `tvarkarastis` DISABLE KEYS */;
/*!40000 ALTER TABLE `tvarkarastis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vairuotojai`
--

DROP TABLE IF EXISTS `vairuotojai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vairuotojai` (
  `VairuotojoID` int NOT NULL AUTO_INCREMENT,
  `Vardas` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Pavarde` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Salis` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`VairuotojoID`)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vairuotojai`
--

LOCK TABLES `vairuotojai` WRITE;
/*!40000 ALTER TABLE `vairuotojai` DISABLE KEYS */;
INSERT INTO `vairuotojai` VALUES (128,'Nerijus','Petrulis','Lietuva'),(129,'Augustinas','Jankevičius','Lietuva'),(130,'Žydrūnas','Vilčinskas','Lietuva'),(131,'Sandrius','Gančierius','Lietuva'),(132,'Eimantas','Subačius','Lietuva'),(133,'Ignas','Kringelis','Lietuva'),(134,'Edvinas','Rauktys','Lietuva'),(135,'Leonid','Kapustin','Lietuva'),(136,'Eimantas','Šukys','Lietuva'),(137,'Mantas','Kanapeckas','Lietuva'),(138,'Vilius','Laukys','Lietuva'),(139,'Eimantas','Kindurys','Lietuva'),(140,'Laurynas','Skrickis','Lietuva'),(141,'Žygimantas','Buožius','Lietuva'),(142,'Gediminas','Raila','Lietuva'),(143,'Kasparas','Liktaravičius','Lietuva'),(144,'Martynas','Deksnys','Lietuva'),(145,'Jonas','Jastrumskas','Lietuva'),(146,'Rokas','Micevičius','Lietuva'),(147,'Eugenijus','Simokaitis','Lietuva'),(148,'Arnas','Gailevičius','Lietuva'),(149,'Mantas','Maišimas','Lietuva'),(150,'Laurynas','Jurčiukonis','Lietuva'),(151,'Edvinas','Litvinskas','Lietuva'),(152,'Dainius','Dručiūnas','Lietuva'),(153,'Remigijus','Pavydis','Lietuva'),(154,'Marius','Kurpė','Lietuva'),(155,'Vytautas','Šimėnas','Lietuva'),(156,'Edvinas','Balčiūnas','Lietuva'),(157,'Jokūbas','Pauliukėnas','Lietuva'),(158,'Mantvydas','Puteikis','Lietuva'),(159,'Deividas','Stankevičius','Lietuva'),(160,'Povilas','Basevičius','Lietuva'),(161,'Giedrius','Venckevičius','Lietuva'),(162,'IRMANTAS','ČETRAUSKAS','Lietuva'),(163,'Povilas','Brazauskas','Lietuva'),(164,'Nedas','Burneikis','Lietuva'),(165,'Geraldas','Čelyševas','Lietuva'),(166,'Audrius','Vilkauskas','Lietuva'),(167,'Paulinas','Dzenkauskas','Lietuva'),(168,'Paulius','Vitonis','Lietuva'),(169,'Egidijus','Didžiulis','Lietuva'),(170,'Tadas','Karpavičius','Lietuva'),(171,'Arminas','Jakšta','Lietuva'),(172,'Lukas','Černiauskas','Lietuva'),(173,'Aidas','Kananavičius','Lietuva'),(174,'Aivaras','Maciulevičius','Lietuva'),(175,'Justinas','Žebarauskas','Lietuva'),(176,'Aivaras','Četrauskas','Lietuva'),(177,'Arnas','Skirpstūnas','Lietuva'),(178,'Daniel','Fedorovič','Lietuva'),(179,'Marijus','Mikelis','Lietuva'),(180,'Kristiana','Lapinskaitė','Lietuva'),(181,'Deimantas','Adomavičius','Lietuva'),(182,'Justinas','Muravskis','Lietuva'),(183,'Domantas','Skučas','Lietuva'),(184,'Kristupas','Stiklius','Lietuva'),(185,'Tautvydas','Gylys','Lietuva'),(186,'Jevgenij','Melichov','Lietuva'),(187,'Indrė','Senkutė Gedgaudienė','Lietuva'),(188,'Justas','Cemnolonskis','Lietuva'),(189,'Gytis','Pietuchas','Lietuva'),(190,'Edgar','Kochanovskij','Lietuva'),(191,'Paulius','Balzaris','Lietuva'),(192,'Indre','Senkute- Gedgaudiene','Lietuva'),(193,'Marius','Ališauskas','Lietuva'),(194,'Dainius','Dručiūnas Miškinis','Lietuva'),(195,'Mindaugas','Bekeris','Lietuva'),(196,'Matas','Gaučas','Lietuva'),(197,'Justas','Padleckas','Lietuva'),(198,'Linas','Čerauskas','Lietuva'),(199,'Paulius','Liatukas','Lietuva'),(200,'Marius','Buntinas','Lietuva'),(201,'Arvistas','Keras','Lietuva'),(202,'Julius','Juška','Lietuva'),(203,'Vitalijus','Daukšas','Lietuva'),(204,'Erikas','Jurkus','Lietuva'),(205,'Mindaugas','Petrauskas','Lietuva'),(206,'Bronius','Skudutis','Lietuva'),(207,'Juozas','Lukošius','Lietuva'),(208,'Paulius','Bernikas','Lietuva'),(209,'Ernestas','Sudaris','Lietuva'),(210,'Deimantas','Einingis','Lietuva'),(211,'Mindaugas','Sadauskas','Lietuva'),(212,'Mantas','Augustinas','Lietuva'),(213,'Dominykas','Nemura','Lietuva'),(214,'Mantas','Karpavičius','Lietuva'),(215,'Ivan','Savickij','Lietuva'),(216,'Vidmantas','Vaitkus','Lietuva'),(217,'Edgaras','Klepšys','Lietuva'),(218,'Donatas','Macevicius','Lietuva'),(219,'Edgar','Valiuk','Lietuva'),(220,'Sigitas','Mockus','Lietuva'),(221,'Simas','Valinskas','Lietuva'),(222,'Šarūnas','Dambrauskas','Lietuva'),(223,'Paulius','Kavaliauskas','Lietuva'),(224,'Leonid','Kasputin','Lietuva'),(225,'Edvinas','Savickas','Lietuva'),(226,'Paulius','Ramanovas','Lietuva'),(227,'Indrė','Senkutė-Gedgaudienė','Lietuva'),(228,'Tomas','Jankūnas','Lietuva'),(229,'Andrius','Vasiliauskas','Lietuva'),(230,'Tadas','Danielius','Lietuva'),(231,'Rapolas','Staškus','Lietuva'),(232,'Evaldas','Stoškus','Lietuva'),(233,'Edvinas','Paketuras','Lietuva'),(234,'Paulius','Šidlauskas','Lietuva'),(235,'Tomas','Stankevičius','Lietuva'),(236,'Vaidas','Gaidukevičius','Lietuva'),(237,'Vytautas','Žutautas','Lietuva'),(238,'Tomas','Kananavičius','Lietuva'),(239,'Andrius','Vilkauskas','Lietuva'),(240,'Aidas','Kanavičius','Lietuva'),(241,'Vilius','Pieža','Lietuva'),(242,'Arminas','Bačiulis','Lietuva'),(243,'Tomas','Malkauskas','Lietuva'),(244,'Edgaras','Doveika','Lietuva'),(245,'Andrej','Dmitrov','Lietuva'),(246,'Mindaugas','Grigas','Lietuva'),(247,'Lukas','Butkus','Lietuva'),(248,'Aivaras','Jonikavičius','Lietuva'),(249,'Tomas','Zubė','Lietuva'),(250,'Arnoldas','Čiukna','Lietuva'),(251,'Aldas','Eglynas','Lietuva'),(252,'Deividas','Mištautas','Lietuva'),(253,'Mantas','Žiulpys','Lietuva'),(254,'Tadas','Dambrauskas','Lietuva'),(255,'Deividas','Jovaiša','Lietuva'),(256,'Karolis','Jurgaitis','Lietuva'),(257,'Giedrius','V. Venckevičius','Lietuva'),(258,'Aivaras','Žuromskas','Lietuva'),(259,'Laimonas','Laukys','Lietuva'),(260,'Arnas','Mikuckis','Lietuva'),(261,'Vitas','Žukauskas','Lietuva'),(262,'Tomas','Markūnas','Lietuva'),(263,'Gustas','Tamošiūnas','Lietuva'),(264,'Lukas','Šakalys','Lietuva'),(265,'Kasparas','Plučas','Lietuva'),(266,'Aleksandras','Podagėlis','Lietuva'),(267,'Karolis','Ališauskis','Lietuva'),(268,'Dainius','Snetkovas','Lietuva'),(269,'Aurimas','Juchnevičius','Lietuva'),(270,'Jonas','Jurjonas','Lietuva'),(271,'Artiom','Blinov','Lietuva'),(272,'Alexander','Zakharov','Lietuva'),(273,'Laimonas','Palekas','Lietuva'),(274,'Balys','Karazija','Lietuva'),(275,'Skirmantas','Ruginis','Lietuva'),(276,'Kęstutis','Petronis','Lietuva'),(277,'Laurynas','Anoška','Lietuva'),(278,'Salvijus','Budrys','Lietuva'),(279,'Ignas','Klimavičius','Lietuva'),(280,'Aleksandras','Ivanovas','Lietuva'),(281,'Paulius','Laurinkus','Lietuva'),(282,'Andrius','Lapinskas','Lietuva'),(283,'Stasys','Šliumpa','Lietuva'),(284,'Simonas','Ivanovas','Lietuva'),(285,'Justinas','Pečiukonis','Lietuva'),(286,'Donatas','Stundžia','Lietuva'),(287,'Edgaras','Kilbovskis','Lietuva'),(288,'Lukas','Banevičius','Lietuva'),(289,'Stanislovas','Kristutis','Lietuva'),(290,'Arūnas','Paulavičius','Lietuva'),(291,'Karolis','Kolosovas','Lietuva'),(292,'Tomas','Liutkevičius','Lietuva'),(293,'Rimvydas','Narauskas','Lietuva'),(294,'Julius','Mockevičius','Lietuva'),(295,'Natas','Čižikovas','Lietuva'),(296,'Robertas','Šalkauskas','Lietuva'),(297,'Andrius','Mikulskis','Lietuva'),(298,'Paulius','Petrauskas','Lietuva'),(299,'Vytautas','Čaplikas','Lietuva'),(300,'Vaidas','Šmoilovas','Lietuva'),(301,'Oskaras','Juodis','Lietuva'),(302,'Andrius','Giraitis','Lietuva'),(303,'Tadas','Gvozdas','Lietuva'),(304,'Paulius','Karklelis','Lietuva'),(305,'Andrius','Poška','Lietuva'),(306,'Dainius','Miškinis (Dručiūnas)','Lietuva'),(307,'Deimantė','Radzevičiūtė','Lietuva'),(308,'Paulius','Petraitis','Lietuva'),(309,'Paulius','Kubilius','Lietuva'),(310,'Igor','Martynov','Lietuva'),(311,'Kęstutis','Telmentas','Lietuva'),(312,'Deividas','Taraskevičius','Lietuva'),(313,'Edgaras','Petravičius','Lietuva'),(314,'Toms','Jankovskis','Lietuva'),(315,'Marius','Vasiliauskas','Lietuva'),(316,'Norbertas','Daunoravičius','Lietuva'),(317,'Benediktas','Januška','Lietuva'),(318,'Evaldas','Šiliauskas','Lietuva'),(319,'Laimutis','Sadeckas','Lietuva'),(320,'Laurynas','Rudinskis','Lietuva'),(321,'Ignas','Tamulevičius','Lietuva'),(322,'Rytis','Bužavas','Lietuva'),(323,'Egidijus','Vasiliauskas','Lietuva'),(324,'Yakub','Tarasevich','Lietuva'),(325,'Yakub','DK Tarasevich','Lietuva'),(326,'Donatas','Stundža','Lietuva'),(327,'Imantas','Majauskas','Lietuva'),(328,'Marius','Kurnickas','Lietuva'),(329,'Marius','Mažvila','Lietuva'),(330,'Edgaras','Liutkevičius','Lietuva'),(331,'Sandra','Janušauskaitė','Lietuva'),(332,'Andrius','Stepulevičius','Lietuva'),(333,'Milvydas','Baukys','Lietuva'),(334,'Arnas','Dyburis','Lietuva'),(335,'Arturs','Fedins','Lietuva'),(336,'Gediminas','Žigutis','Lietuva'),(337,'Andrėj','Osadčij','Lietuva'),(338,'Robertas','Rapkauskas','Lietuva'),(339,'Indrė','Senkutė','Lietuva'),(340,'Edvinas','Saviskas','Lietuva'),(341,'Tautvydas','Šalčius','Lietuva'),(342,'Mindaugas','Trinkūnas','Lietuva'),(343,'Andrius','Juškevičius','Lietuva'),(344,'Gustas','Valainis','Lietuva'),(345,'Marius','Urbonas','Lietuva'),(346,'Vitas','Žalandauskas','Lietuva'),(347,'Tomas','Zinkevičius','Lietuva'),(348,'Dainius','Bikuntas','Lietuva'),(349,'Julius','Damšas','Lietuva'),(350,'Marijus','Žilinskis','Lietuva'),(351,'Justas','Mizgeris','Lietuva'),(352,'Lukas','Skripkauskas','Lietuva'),(353,'Ramūnas','Jonutis','Lietuva'),(354,'Denis','Akimov','Lietuva'),(355,'Elvinas','Jaruševičius','Lietuva'),(356,'Marius','Eidintas','Lietuva'),(357,'Vytautas','Punys','Lietuva'),(358,'Rustams','Dzurabajevs','Lietuva'),(359,'Martins','Jānis Lapkovskis','Lietuva'),(360,'Ronalds','Saltens','Lietuva'),(361,'Kirils','Malinovskis','Lietuva'),(362,'Dovydas','Mikštas','Lietuva'),(363,'Justinas','Leškys','Lietuva'),(364,'Silvestr','Krievinš','Lietuva'),(365,'Emīls','Segliņš','Lietuva'),(366,'Romans','Stepanovs','Lietuva'),(367,'Renatas','Laumakis','Lietuva'),(368,'Eglė','Gaižutytė','Lietuva'),(369,'Kirils','Voitenko','Lietuva'),(370,'Domantas','Baltrušaitis','Lietuva'),(371,'Elvinas','Stulpinas','Lietuva'),(372,'Kornelijus','Šapkinas','Lietuva'),(373,'Dainius','Miškinis','Lietuva'),(374,'Nojus','Šunokas','Lietuva'),(375,'Armandas','Stankus','Lietuva'),(376,'Augustinas','Čipkus','Lietuva'),(377,'Rasmuntas','Antanavicius','Lietuva'),(378,'Modestas','Jarutis','Lietuva'),(379,'Jokūbas','Nečiūnas','Lietuva'),(380,'Daniels','Baumanis','Lietuva'),(381,'Faustas','Anilionis','Lietuva'),(382,'Jurijs','Ivanovs','Lietuva'),(383,'Vykintas','Punys','Lietuva'),(384,'Igoris','Bogačiovas','Lietuva'),(385,'Arminas','Jauniškis','Lietuva'),(386,'Lukas','Giedraitis','Lietuva'),(387,'Gintaras','Grigorjevas','Lietuva'),(388,'Dalius','Mirklys','Lietuva'),(389,'Julius','Damašas','Lietuva'),(390,'Linas','Navickas','Lietuva'),(391,'Gintaras','Pociūnas','Lietuva'),(392,'Tomas','Zinkevičus','Lietuva'),(393,'Jomas','Zokaitis','Lietuva'),(394,'Nerijus','Kilčiauskas','Lietuva'),(395,'Roman','Agafonov','Lietuva'),(396,'Saulius','Patejunas','Lietuva'),(397,'Robert','Jagelo','Lietuva'),(398,'Artiomas','Safovalas','Lietuva'),(399,'Titas','Ščeponas','Lietuva'),(400,'Elvinas','Naruševičius','Lietuva'),(401,'Aurimas','Janeika','Lietuva'),(402,'Kamila','Pałka-Bujkowska','Lietuva'),(403,'Edvinas','Pocius','Lietuva'),(404,'Tomas','Butavičius','Lietuva'),(405,'Norbertas','Daunaravičius','Lietuva'),(406,'Benediktas','Januškas','Lietuva');
/*!40000 ALTER TABLE `vairuotojai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `varzybos`
--

DROP TABLE IF EXISTS `varzybos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `varzybos` (
  `VarzybuID` int NOT NULL AUTO_INCREMENT,
  `SezonoID` int DEFAULT NULL,
  `OrganizatoriausID` int DEFAULT NULL,
  `Pavadinimas` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Vieta` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`VarzybuID`),
  KEY `SezonoID` (`SezonoID`),
  KEY `OrganizatoriausID` (`OrganizatoriausID`),
  CONSTRAINT `varzybos_ibfk_1` FOREIGN KEY (`SezonoID`) REFERENCES `sezonai` (`SezonoID`),
  CONSTRAINT `varzybos_ibfk_2` FOREIGN KEY (`OrganizatoriausID`) REFERENCES `organizatoriai` (`OrganizatoriausID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varzybos`
--

LOCK TABLES `varzybos` WRITE;
/*!40000 ALTER TABLE `varzybos` DISABLE KEYS */;
INSERT INTO `varzybos` VALUES (1,1,1,'Lietuvos Driftas Street','2021-10-02','Lietuva'),(2,2,8,'Lietuvos Driftas Semi-Pro','2021-09-18','Lietuva'),(3,4,13,'Lietuvos Driftas Street','2022-09-17','Lietuva'),(4,5,19,'Lietuvos Driftas SEMI-PRO','2022-09-17','Lietuva');
/*!40000 ALTER TABLE `varzybos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-17 19:18:11
