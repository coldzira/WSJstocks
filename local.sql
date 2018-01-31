-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: stocks
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `stocks`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `stocks` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `stocks`;

--
-- Table structure for table `stockinfo`
--

DROP TABLE IF EXISTS `stockinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockinfo` (
  `exchange` varchar(10) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '',
  `company` varchar(50) DEFAULT NULL,
  `volume` decimal(32,0) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `difference` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockinfo`
--

LOCK TABLES `stockinfo` WRITE;
/*!40000 ALTER TABLE `stockinfo` DISABLE KEYS */;
INSERT INTO `stockinfo` VALUES ('NYSE','ABEV','Ambev ADR',7640557,6.22,0.03),('NYSE','ABX','Barrick Gold',10944331,14.13,0.35),('NYSE','AEO','American Eagle Outfitters',4231867,15.68,-0.40),('NYSE','AKS','AK Steel Holding',14346013,4.98,0.11),('NYSE','APC','Anadarko Petroleum',4810207,48.99,0.90),('NYSE','APRN','Blue Apron Holdings Cl A',4461965,3.29,0.29),('NYSE','AUY','Yamana Gold',7672596,2.61,0.07),('NYSE','BABA','Alibaba Group Holding ADR',18753271,176.20,-0.88),('NYSE','BAC','Bank of America',87052540,28.05,-0.13),('NYSE','BBT','BB&T',11327890,49.08,-0.34),('NYSE','BHGE','Baker Hughes a GE',7227972,30.38,0.65),('NYSE','BP','BP ADR',4066080,39.97,-0.10),('NYSE','BSX','Boston Scientific',7151708,25.98,-0.30),('NYSE','BXMT','Blackstone Mortgage Trust Cl A',4575060,32.20,-0.52),('NYSE','C','Citigroup',11188649,75.00,-0.50),('NYSE','CHK','Chesapeake Energy',18367666,4.11,0.04),('NYSE','CLF','Cleveland-Cliffs',8792384,6.86,0.20),('NYSE','CTL','CenturyLink',7620163,14.20,-0.39),('NYSE','CVS','CVS Health',5761047,74.77,-1.83),('NYSE','CVX','Chevron',3997790,119.66,0.67),('NYSE','CX','Cemex ADR',6175754,7.46,-0.13),('NYSE','DAL','Delta Air Lines',5066477,52.65,-0.27),('NYSE','DIS','Walt Disney',5195050,105.28,0.46),('NYSE','DNR','Denbury Resources',12666326,1.88,0.14),('NYSE','ECA','Encana',5050379,12.29,0.45),('NYSE','EGO','Eldorado Gold',4131802,1.17,0.04),('NYSE','ESV','ENSCO',13507979,5.83,0.48),('NYSE','ETP','Energy Transfer Partners',5333551,16.72,0.11),('NYSE','F','Ford Motor',34393553,12.55,0.04),('NYSE','FCX','Freeport-McMoRan',8241056,14.10,0.18),('NYSE','FHN','First Horizon National',12093736,19.39,0.00),('NYSE','GE','General Electric',48416902,17.93,-0.36),('NYSE','GG','Goldcorp',5453936,12.72,0.08),('NYSE','GGB','Gerdau ADR',3947232,3.33,0.02),('NYSE','GM','General Motors',11676768,42.68,-0.41),('NYSE','HAL','Halliburton',10026339,43.53,1.75),('NYSE','HPE','Hewlett Packard Enterprise',9576494,14.20,0.25),('NYSE','HPQ','HP',3985344,21.33,-0.12),('NYSE','HTZ','Hertz Global Holdings',4838617,20.43,1.48),('NYSE','IBN','ICICI Bank ADR',4661991,9.38,-0.15),('NYSE','JCP','J.C. Penney',15168475,3.37,0.06),('NYSE','JNPR','Juniper Networks',4838458,28.09,0.33),('NYSE','JPM','JPMorgan Chase',11799789,103.90,-0.62),('NYSE','KEY','KeyCorp',8146774,18.96,-0.02),('NYSE','KGC','Kinross Gold',7082322,4.12,-0.04),('NYSE','KMI','Kinder Morgan',8393786,17.31,0.08),('NYSE','KO','Coca-Cola',5411355,45.70,-0.07),('NYSE','KR','Kroger',12380937,25.78,-0.08),('NYSE','LC','LendingClub',5221565,4.31,-0.06),('NYSE','M','Macy\'s',9121948,24.23,0.43),('NYSE','MGM','MGM Resorts International',5070031,34.06,-0.06),('NYSE','MRK','Merck&Co',6409674,55.72,0.45),('NYSE','MRO','Marathon Oil',11611503,15.01,0.17),('NYSE','MS','Morgan Stanley',5879557,51.54,-0.07),('NYSE','NBR','Nabors Industries',7491188,6.42,0.38),('NYSE','NE','Noble',5153307,4.49,0.31),('NYSE','NKE','Nike Cl B',4459852,60.20,-0.02),('NYSE','NLY','Annaly Capital Management',5106723,11.71,0.04),('NYSE','NOK','Nokia ADR',9428423,4.94,-0.07),('NYSE','NWL','Newell Brands',3966225,31.40,0.43),('NYSE','OAS','Oasis Petroleum',8701289,10.46,0.23),('NYSE','ORCL','Oracle',9922639,49.42,0.36),('NYSE','P','Pandora Media',8619485,4.82,-0.18),('NYSE','PBR','Petroleo Brasileiro ADR',10018871,9.94,0.22),('NYSE','PBRA','Petroleo Brasileiro ADR A',5179847,9.64,0.26),('NYSE','PFE','Pfizer',9614652,36.33,0.07),('NYSE','QD','Qudian ADR',9129942,14.07,0.47),('NYSE','QEP','QEP Resources',4579401,10.37,0.71),('NYSE','RAD','Rite Aid',19516951,1.92,-0.09),('NYSE','RF','Regions Financial',9953505,16.49,-0.10),('NYSE','RGC','Regal Entertainment Group Cl A',5747326,20.59,0.60),('NYSE','RIG','Transocean',12093783,10.84,0.69),('NYSE','RRC','Range Resources',4280858,18.58,0.56),('NYSE','S','Sprint',4721895,5.99,0.00),('NYSE','SAN','Banco Santander ADR',4973581,6.58,-0.12),('NYSE','SCHW','Charles Schwab',5263300,49.16,0.37),('NYSE','SLB','Schlumberger',7133239,65.02,2.17),('NYSE','SNAP','Snap',12087640,13.71,-0.07),('NYSE','SQ','Square Cl A',16635725,38.22,-1.00),('NYSE','SRC','Spirit Realty Capital',4753607,8.53,-0.01),('NYSE','STM','STMicroelectronics',4918678,22.05,-0.57),('NYSE','SWN','Southwestern Energy',11675541,6.39,0.03),('NYSE','T','AT&T',19437024,36.35,-0.03),('NYSE','TEVA','Teva Pharmaceutical Industries ADR',16769039,15.48,0.66),('NYSE','TGT','Target',4513918,59.92,0.02),('NYSE','TSM','Taiwan Semiconductor Manufacturing ADR',4748756,39.51,-0.09),('NYSE','TWTR','Twitter',8780544,20.76,0.18),('NYSE','V','VISA Cl A',4363827,110.64,-1.95),('NYSE','VALE','Vale ADR',17493434,10.87,0.17),('NYSE','VER','VEREIT',9500011,7.79,-0.01),('NYSE','VIPS','Vipshop Holdings ADR',4000816,8.51,0.28),('NYSE','VRX','Valeant Pharmaceuticals International',12515889,17.34,0.59),('NYSE','VZ','Verizon Communications',12508775,50.91,0.02),('NYSE','WFC','Wells Fargo',19721372,56.33,-0.14),('NYSE','WFT','Weatherford International',17075027,3.44,0.14),('NYSE','WLL','Whiting Petroleum',4465418,25.67,0.72),('NYSE','WMT','Wal-Mart Stores',4247016,97.34,0.11),('NYSE','WPX','WPX Energy',5392966,13.27,0.60),('NYSE','X','United States Steel',9316857,29.46,0.54),('NYSE','XOM','Exxon Mobil',8410249,83.59,0.30);
/*!40000 ALTER TABLE `stockinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-05  0:13:56
