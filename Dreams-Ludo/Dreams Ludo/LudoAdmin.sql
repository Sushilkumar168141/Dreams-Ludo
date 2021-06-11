-- MySQL dump 10.15  Distrib 10.0.36-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: pcthinks_news
-- ------------------------------------------------------
-- Server version	10.0.36-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `user_role` enum('100','101','102') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` (`id`, `username`, `password`, `email`, `full_name`, `user_role`) VALUES (1,'admin','ac0e7d037817094e9e0b4441f9bae3209d67b02fa484917065f71b16109a1a78','support@leemug.com','Administrator','100');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` (`cid`, `category_name`, `category_image`) VALUES (1,'Business','3726-2018-03-28.png'),(2,'Technology','5180-2018-03-28.png'),(3,'Health','6810-2017-05-30.png'),(4,'Travel','0158-2017-05-30.png'),(5,'Sports','2908-2018-03-28.png'),(6,'Top News','7669-2018-03-28.png'),(7,'Entertainment','0731-2018-03-28.png'),(8,'World','5808-2018-03-28.png');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `nid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comments`
--

LOCK TABLES `tbl_comments` WRITE;
/*!40000 ALTER TABLE `tbl_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fcm_template`
--

DROP TABLE IF EXISTS `tbl_fcm_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fcm_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fcm_template`
--

LOCK TABLES `tbl_fcm_template` WRITE;
/*!40000 ALTER TABLE `tbl_fcm_template` DISABLE KEYS */;
INSERT INTO `tbl_fcm_template` (`id`, `message`, `image`, `link`) VALUES (1,'Android News App 3.0 has been released','',''),(2,'Hello world! This is Android News App, you can purchase it on Codecanyon officially.','','https://codecanyon.net/user/solodroid/portfolio');
/*!40000 ALTER TABLE `tbl_fcm_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fcm_token`
--

DROP TABLE IF EXISTS `tbl_fcm_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fcm_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fcm_token`
--

LOCK TABLES `tbl_fcm_token` WRITE;
/*!40000 ALTER TABLE `tbl_fcm_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_fcm_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_news`
--

DROP TABLE IF EXISTS `tbl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_news` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `news_description` text NOT NULL,
  `news_image` varchar(255) NOT NULL,
  `video_url` varchar(500) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  `content_type` varchar(45) NOT NULL,
  `size` varchar(255) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_news`
--

LOCK TABLES `tbl_news` WRITE;
/*!40000 ALTER TABLE `tbl_news` DISABLE KEYS */;
INSERT INTO `tbl_news` (`nid`, `cat_id`, `news_title`, `news_date`, `news_description`, `news_image`, `video_url`, `video_id`, `content_type`, `size`) VALUES (31,1,'एयर इंडिया का बड़ा ऐलान, दिल्ली से J-K का किराया 5000 रुपये फिक्स','2019-02-28 03:11:45','<p>भारत और पाकिस्तान के बीच तल्खी बढ़ती जा रही है. बुधवार को पाकिस्तान की हरकत को देखते हुए प्रधानमंत्री नरेंद्र मोदी की अगुवाई में हाईलेवल मीटिंग हुई. जिसके बाद तीनों सेनाओं को अलर्ट पर रखा गया है. सुरक्षा के मद्देनजर बुधवार दोपहर में कुछ देर के लिए पाकिस्तान सीमा से लगे 9 एयरपोर्ट पर विमानों की आवाजाही पर रोक लगा दी गई दी थी. लेकिन दोपहर 3 बजे के बाद स्थिति सामान्य हो गई और सभी एयरपोर्ट्स पर यात्रियों की आवाजाही फिर से शुरू हो गई.</p>\r\n\r\n<p>इस बीच एयर इंडिया ने बड़ा फैसला लिया है. सीमा पर तनाव को देखते हुए एयर इंडिया में दिल्ली से जम्मू-कश्मीर जाने वाले यात्रियों के लिए किराया 5000 रुपये निर्धारित कर दिया है. खासकर दिल्ली से श्रीनगर, लेह और जम्मू एयरपोर्ट जाने वाले यात्री बिना कोई अतिरिक्त चार्ज दिए केवल 5000 रुपये में कभी भी सफर कर सकते हैं. एक तरह 5000 रुपये किराया फिक्स कर दिया गया है.</p>\r\n\r\n<p>इसके अलावा विमान के जरिए दिल्ली से जम्मू-कश्मीर जाने वाले सेना के जवानों के लिए एयर इंडिया ने खास रियायत देने का भी ऐलान किया है. अगर कोई सैनिक या अर्धसैनिक बल मार्च के पहले हफ्ते में यात्रा की तारीख की परिवर्तन करता है, तो उनसे कोई अतिरिक्त शुल्क नहीं लिया जाएगा. यानी कोई जवान मार्च के पहले हफ्ते में दिल्ली से श्रीनगर, लेह और जम्मू के लिए विमान यात्रा की तारीख में बदलाव करते हैं तो उन्हें कोई अतिरिक्त चार्ज नहीं देना पड़ेगा.</p>\r\n\r\n<p>गौरतलब है कि भारतीय एयरपोर्ट्स पर बुधवार को वाणिज्यिक उड़ानों को रद्द किए जाने के बाद उन्हें दोबारा शुरू कर दिया गया है. भारत और पाकिस्तान की वायुसेना के तनाव के बाद श्रीनगर, जम्मू, लेह, अमृतसर और चंडीगढ़ सहित कई हवाईअड्डों को नागरिक परिचालन के लिए बंद कर दिया था. जिससे कुछ देर के लिए यात्रियों को काफी परेशानी उठानी पड़ी थी.</p>\r\n','1551323511_airindia750_1551285965_618x347.jpeg','','cda11up','Post',''),(32,8,'भारत-पाक के बीच तनातनी पर बोला अमेरिका: आगे किसी तरह की सैन्य कार्रवाई स्थिति को और बदतर कर देगा','2019-02-28 03:13:31','<p>भारत और पाकिस्तान के बीच बढ़ते तनाव से चिंतित अमेरिका ने बुधवार को परमाणु शक्ति संपन्न दोनों देशों से तनाव कम करने के लिये तुरंत कदम उठाने की अपील की. उसने आगाह किया कि आगे से किसी भी ओर से की गई सैन्य कार्रवाई से दोनों देशों के लिये जोखिम की आशंका अस्वीकार्य रूप से बहुत ज्यादा है. 14 फरवरी को जम्मू-कश्मीर के पुलवामा जिले में एक आतंकवादी हमले में सीआरपीएफ के 40 जवान शहीद हो गए थे. पाकिस्तान स्थित आतंकवादी संगठन जैश-ए-मोहम्मद ने इस हमले की जिम्मेदारी ली थी, जिसके बाद भारत और पाकिस्तान के बीच तनाव बढ़ गया था.&nbsp;</p>\r\n\r\n<p>व्हाइट हाउस के राष्ट्रीय सुरक्षा परिषद (एनएससी) के एक अधिकारी ने कहा, &quot;अमेरिका भारत और पाकिस्तान के बीच बढ़ते तनाव को लेकर चिंतित है और उसने दोनों पक्षों से तनाव कम करने के लिए तत्काल कदम उठाने का आह्वान किया है.&quot; नाम सार्वजनिक नहीं करने की शर्त पर एनएससी के अधिकारी ने बताया, &quot;आगे से किसी भी ओर से सैन्य कार्रवाई होने से दोनों देशों, उनके पडो़सियों और विश्व समुदाय के लिये जोखिम की आशंका अस्वीकार्य रूप से बहुत ज्यादा है.&quot;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n<p>अधिकारी पाकिस्तान के उस दावे पर एक सवाल का जवाब दे रहे थे जिसमें पाकिस्तान ने कहा था कि उसने अपने हवाई क्षेत्र में दो भारतीय लड़ाकू विमानों को मार गिराया और एक पायलट को गिरफ्तार कर लिया. अधिकारी ने कहा, &quot;अमेरिका के अधिकारियों ने पुलवामा हमले के बाद भारत के साथ मजबूत एकजुटता दिखाई है.&quot; अधिकारी ने दोनों देशों के राष्ट्रीय सुरक्षा सलाहकारों के बीच सीधे संवाद पर टिप्पणी करने से इनकार कर दिया.&nbsp;</p>\r\n','1551323604_nsrldc68_donald-trump-reuters_625x300_17_February_19.jpg','','cda11up','Post',''),(33,8,'भारत-पाक के बीच तनातनी पर बोला अमेरिका: आगे किसी तरह की सैन्य कार्रवाई स्थिति को और बदतर कर देगा','2019-02-28 03:13:31','<p>भारत और पाकिस्तान के बीच बढ़ते तनाव से चिंतित अमेरिका ने बुधवार को परमाणु शक्ति संपन्न दोनों देशों से तनाव कम करने के लिये तुरंत कदम उठाने की अपील की. उसने आगाह किया कि आगे से किसी भी ओर से की गई सैन्य कार्रवाई से दोनों देशों के लिये जोखिम की आशंका अस्वीकार्य रूप से बहुत ज्यादा है. 14 फरवरी को जम्मू-कश्मीर के पुलवामा जिले में एक आतंकवादी हमले में सीआरपीएफ के 40 जवान शहीद हो गए थे. पाकिस्तान स्थित आतंकवादी संगठन जैश-ए-मोहम्मद ने इस हमले की जिम्मेदारी ली थी, जिसके बाद भारत और पाकिस्तान के बीच तनाव बढ़ गया था.&nbsp;</p>\r\n\r\n<p>व्हाइट हाउस के राष्ट्रीय सुरक्षा परिषद (एनएससी) के एक अधिकारी ने कहा, &quot;अमेरिका भारत और पाकिस्तान के बीच बढ़ते तनाव को लेकर चिंतित है और उसने दोनों पक्षों से तनाव कम करने के लिए तत्काल कदम उठाने का आह्वान किया है.&quot; नाम सार्वजनिक नहीं करने की शर्त पर एनएससी के अधिकारी ने बताया, &quot;आगे से किसी भी ओर से सैन्य कार्रवाई होने से दोनों देशों, उनके पडो़सियों और विश्व समुदाय के लिये जोखिम की आशंका अस्वीकार्य रूप से बहुत ज्यादा है.&quot;&nbsp;&nbsp; &nbsp;</p>\r\n\r\n<p>अधिकारी पाकिस्तान के उस दावे पर एक सवाल का जवाब दे रहे थे जिसमें पाकिस्तान ने कहा था कि उसने अपने हवाई क्षेत्र में दो भारतीय लड़ाकू विमानों को मार गिराया और एक पायलट को गिरफ्तार कर लिया. अधिकारी ने कहा, &quot;अमेरिका के अधिकारियों ने पुलवामा हमले के बाद भारत के साथ मजबूत एकजुटता दिखाई है.&quot; अधिकारी ने दोनों देशों के राष्ट्रीय सुरक्षा सलाहकारों के बीच सीधे संवाद पर टिप्पणी करने से इनकार कर दिया.&nbsp;</p>\r\n','1551323606_nsrldc68_donald-trump-reuters_625x300_17_February_19.jpg','','cda11up','Post',''),(34,8,'भारत के साथ खड़े हुए अमेरिका, ब्रिटेन और फ्रांस, UN में जैश और सरगना मसूद अज़हर को लेकर दिया बड़ा प्रस्ताव','2019-02-28 03:15:04','<p>पुलवामा में हुए आतंकी हमले की जिम्मेदारी लेने वाले&nbsp;जैश-ए-मोहम्मद&nbsp;पर कार्रवाई को लेकर दुनिया के बड़े देश आगे आए हैं. इनमें संयुक्त राज्य अमेरिका, ब्रिटेन और फ्रांस ने बुधवार को प्रस्ताव दिया कि इस आतंकी संगठन को संयुक्त राष्ट्र की सुरक्षा परिषद ब्लैक लिस्ट करे. इसी संगठन ने पुलवामा में भारतीय अर्धसैनिक बल के काफिले पर हमला करने का दावा किया था. अमेरिका, ब्रिटेन और फ्रांस ने 15 सदस्यीय संयुक्त राष्ट्र सुरक्षा परिषद की प्रतिबंध समिति से मौलाना मसूद अजहर पर हर तरह के प्रतिबंध लगाने की मांग की है.त कहा है कि आतंकवादी संगठन जैश-ए-मोहम्मद के प्रमुख मसूद अजहर पर हथियार और वैश्विक यात्रा से जुड़े प्रतिबंध लगाने के साथ उसकी परिसंपत्ति भी फ्रीज की जाएं.&nbsp;</p>\r\n\r\n<p>बता दें कि 14 फरवरी को पुलवामा में हुए एक आत्&zwj;मघाती हमले में सीआरपीएफ के 40 जवान शहीद हो गए थे. हमले की जिम्&zwj;मेदारी पाकिस्&zwj;तान स्&zwj;थ&zwj;ित आतंकवादी संगठन जैश-ए-मोहम्&zwj;मद ने ली थी. भारत ने इसके अगले दिन ही सेना को खुली छूट देने की बात कही थी और पाकिस्&zwj;तान से &#39;मोस्&zwj;ट फेवरेट नेशन&#39; दर्जा वापस ले लिया था. इसके बाद घाटी में हुए सर्च ऑपरेशन में जैश के कई आतंकवादी मारे गए थें. 26 फरवरी की रात में वायु सेना ने अपने असैन्&zwj;य कार्रवाई में पाकिस्&zwj;तान के बालाकोट स्&zwj;थ&zwj;ित आतंकवादी संगठन जैश-ए-मोहम्&zwj;मद के कैंप को ध्&zwj;वस्&zwj;त कर दिया था. भारत के इस कार्रवाई का पूरी दुनिया ने समर्थन किया.</p>\r\n\r\n<p>उधर भारत की सर्जिकल स्ट्राइक 2 के बाद यहां सैन्य ठिकानों को निशाना बनाने की कोशिश कर रहे पाकिस्तानी जेट विमान को भारतीय वायुसेना के मार गिराए जाने (IAF Air Strike) के बाद एक भारतीय पायलट लापता हो गया. यह जानकारी बुधवार को भारत सरकार ने पाकिस्तान के उन दावों के बाद दी, जिनमें उसने &#39;अपने वायुक्षेत्र में रहकर नियंत्रण रेखा के पार हमले करने&#39; की बात कही थी. बालाकोट में आतंकवादी अड्डे को भारतीय वायुसेना द्वारा निशाना बनाए जाने के बाद से दोनों देशों के बीच तनाव इस वक्त चरम पर नज़र आ रहा है.लगभग उसी समय पाकिस्तान के प्रधानमंत्री इमरान खान (Imran Khan) ने भी भारत से बातचीत की बात कही.</p>\r\n\r\n<p>&nbsp;</p>\r\n','1551323684_h4qks20g_masood-azhar_625x300_16_February_19.jpg','','cda11up','Post',''),(35,6,'IAF ने ऐसे गिरा डाला पाकिस्तान का लड़ाकू विमान एफ-16: जानें- भारत के MiG-21 Bison के बारे में 8 बड़ी बातें','2019-02-28 03:15:58','<p><strong>&nbsp;</strong>पाकिस्तान वायुसेना के लड़ाकू विमान F-16 को गिरा देने वाला भारतीय वायु सेना का मिग -21 बाइसन फाइटर जेट वियतनाम युग के सोवियत जेट का एक अपग्रेड वर्जन है. पाकिस्तान का एफ-16 विमान अमेरिका द्वारा बनाया गया है. दो लड़ाकू विमानों में एक आम बात यह है कि दोनों को लगातार अपग्रेड किया गया है और दोनों देशों ने इनका युद्धक स्तर पर इस्तेमाल किया है. सीमा पर हुई दोनों देशों की हवाई झड़प में भारत ने एक मिग -21 बाइसन खो दिया. वहीं दूसरी ओर पाकिस्तान के एक लड़ाकू विमान को भी भारतीय वायुसेना ने गिरा दिया. इसके अलावा भारतीय वायुसेना का एक पायलट पाकिस्तान ने अपनी हिरासत में ले लिया. भारत ने पाकिस्तान से पायलट को सुरक्षित वापस लौटाने के लिए कहा है.</p>\r\n','1551323742_psbmif3g_mig-21_625x300_29_August_18.jpg','','cda11up','Post',''),(36,6,'पाक हिरासत में रखे गए भारतीय पायलट को लेकर कुमार विश्वास का ट्वीट, कही यह बात...','2019-02-28 03:16:25','<p>कवि कुमार विश्वास&nbsp;ने पाकिस्तान की हिरासत में रखे गए भारतीय पायलट को लेकर बुधवार को ट्वीट किया. उन्होंने&nbsp; पाकिस्तान पर तंज कसकते हुए कहा कि किसकी मजाल है कि जो छेड़े दिलेर को ? गर्दिश में घेर लेते हैं कुत्ते भी शेर को...! बता दें कि इससे पहले भी&nbsp;कुमार विश्वास&nbsp;पाकिस्तान को लेकर कई ट्वीट कर चुके हैं. अपने एक अन्य ट्वीट में कुमार ने पाकिस्तान आर्मी के अधिकारी की फोटो का इस्तेमाल करते हुए लिखा था कि&nbsp;ऐसा हो जाता है उस बच्चे का मुँह, जिसे उसका उधार खाया झूठा बाप ख़ुद अंदर दुबक कर बाहर भेजे कि जाओ बताकर आओ कि &ldquo;पापा घर पर नहीं है&rdquo;.</p>\r\n\r\n<p>लगभग उसी समय पाकिस्तान के प्रधानमंत्री इमरान खान (Imran Khan) ने भी भारत से बातचीत की बात कही. उन्होंने कहा कि हम पुलवामा पर बात करने के लिए तैयार हैं, और हमने पहले भी कहा था और अब भी कह रहे हैं कि आप हमें सबूत दें, हम उन पर कार्रवाई करेंगे. उन्होंने कहा कि हमारे लिए भी यह सही नहीं कि हमारी जमीन का इस्तेमाल आतंकवाद के लिए हो. उन्होंने कहा कि जंग हुई तो यह किसी के काबू में नहीं रहेगी.</p>\r\n','1551323800_kumar-vishwas_650x400_71507886134.jpg','','cda11up','Post',''),(37,6,'पाक हिरासत में रखे गए भारतीय पायलट को लेकर कुमार विश्वास का ट्वीट, कही यह बात...','2019-02-28 03:16:25','<p>कवि कुमार विश्वास&nbsp;ने पाकिस्तान की हिरासत में रखे गए भारतीय पायलट को लेकर बुधवार को ट्वीट किया. उन्होंने&nbsp; पाकिस्तान पर तंज कसकते हुए कहा कि किसकी मजाल है कि जो छेड़े दिलेर को ? गर्दिश में घेर लेते हैं कुत्ते भी शेर को...! बता दें कि इससे पहले भी&nbsp;कुमार विश्वास&nbsp;पाकिस्तान को लेकर कई ट्वीट कर चुके हैं. अपने एक अन्य ट्वीट में कुमार ने पाकिस्तान आर्मी के अधिकारी की फोटो का इस्तेमाल करते हुए लिखा था कि&nbsp;ऐसा हो जाता है उस बच्चे का मुँह, जिसे उसका उधार खाया झूठा बाप ख़ुद अंदर दुबक कर बाहर भेजे कि जाओ बताकर आओ कि &ldquo;पापा घर पर नहीं है&rdquo;.</p>\r\n\r\n<p>लगभग उसी समय पाकिस्तान के प्रधानमंत्री इमरान खान (Imran Khan) ने भी भारत से बातचीत की बात कही. उन्होंने कहा कि हम पुलवामा पर बात करने के लिए तैयार हैं, और हमने पहले भी कहा था और अब भी कह रहे हैं कि आप हमें सबूत दें, हम उन पर कार्रवाई करेंगे. उन्होंने कहा कि हमारे लिए भी यह सही नहीं कि हमारी जमीन का इस्तेमाल आतंकवाद के लिए हो. उन्होंने कहा कि जंग हुई तो यह किसी के काबू में नहीं रहेगी.</p>\r\n','1551323803_kumar-vishwas_650x400_71507886134.jpg','','cda11up','Post','');
/*!40000 ALTER TABLE `tbl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_news_gallery`
--

DROP TABLE IF EXISTS `tbl_news_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_news_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nid` int(11) NOT NULL,
  `image_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_news_gallery`
--

LOCK TABLES `tbl_news_gallery` WRITE;
/*!40000 ALTER TABLE `tbl_news_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_news_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_fcm_key` text NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `privacy_policy` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_settings`
--

LOCK TABLES `tbl_settings` WRITE;
/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */;
INSERT INTO `tbl_settings` (`id`, `app_fcm_key`, `api_key`, `privacy_policy`) VALUES (1,'AAAARbV0dBI:APA91bE4bimooFyCDcKKQJCL9NsWW88bJj62LyWubw5DUOJ4tN2OaVGX1ol7_cCdpXzpULNtJBS7d9sDumaLkN3MHOI6bjV23x2c7G1-RZj3POp6M_kAWDFQexIglD41oLcWOyg1KO9j','cda11v2OkqSI1rhQm37PBXKnpisMtlaDzoc4w0U6uNATgZRbJG','<p>This privacy policy includes all the details about the data collected in Android News App and how it&rsquo;s used.</p>\r\n\r\n<p>As a user we also do not like to give personal informations and we don&rsquo;t want to see our informations collected without knowing what will going to happen to those datas. Android News App has been alive with the support and trust of it&rsquo;s users. We want to keep the trust; you can find all the details about the data usage below.</p>\r\n\r\n<p>Android News App does collect anonymous usage data. This data does not include your original device identification numbers, your real personality or your personal data if it&rsquo;s not directly given by you in an open form.</p>\r\n\r\n<p>Android News App can not access to your real information and your purchases or any other action may not be restored without associating purchases with some information. This is why it is recommended to fill the registration form in the application. That form contains personal information which helps us contact the user easily, help quickly and solve possible licensing problems.</p>\r\n\r\n<p>Usage / interactions in the application are used to determine what stations is being listed at most and which functions attracts the most attention so we can improve those sections. This information also allows us to be able to serve better features like listing most popular stations according to a specific region.</p>\r\n\r\n<p>These datas may be used to serve additional services to 3rd parties like station statistics. NONE of these services will include sensitive information/personally identifying data if not permitted by you.</p>\r\n\r\n<p>In some cases Android News App may communicate directly with a 3rd party server to obtain latest data for display within the app (such as rss feeds, artist/song images and informations) . When this happens &ndash; we don&rsquo;t transmit any data about you or your usage to these 3rd parties except where explicitly stated. Please check these 3rd parties (where applicable) for their additional privacy policies.</p>\r\n\r\n<p><strong>Advertising Banner Privacy Policy</strong></p>\r\n\r\n<p>Android News App may display advertisements on various places in the application. This system may use and transmit basic regional/language information about you to the advertising banner system in order to provide you with relevant ads. In some cases, we may have agreements with sponsors and we may hide advertisements in that situation. Eventhough the advertisement may get hidden in that situation, we may provide similar informations to sponsors or 3rd parties.</p>\r\n\r\n<p><strong>3rd Party Content Privacy Policy</strong></p>\r\n\r\n<p>Android News App may display live web pages or images from 3rd party sources and in these cases you should read the privacy policies displayed by these websites. We use Google Image Search for some of the images related to now playing info.</p>\r\n\r\n<p><strong>Contact us</strong></p>\r\n\r\n<p>If you have any questions regarding privacy while using the Application, or have questions about our practices, please contact us via email at developer.solodroid@gmail.com</p>\r\n');
/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `imageName` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pcthinks_news'
--

--
-- Dumping routines for database 'pcthinks_news'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-28  8:48:42
