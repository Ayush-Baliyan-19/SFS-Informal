
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usap_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usap_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usap_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usap_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usbas_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usbas_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usbas_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usbas_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usbt_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usbt_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usbt_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usbt_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usct_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usct_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usct_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT
 '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usct_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `use_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `use_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `use_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `use_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usem_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usem_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usem_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usem_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `ushss_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `ushss_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `ushss_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `ushss_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usict_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usict_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usict_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usict_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usar_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usar_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usar_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usar_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `uslls_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `uslls_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `uslls_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `uslls_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usmc_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usmc_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usmc_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usmc_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usms_dump_2024` (
  `enrollment_no` varchar(20) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `instructor_id` varchar(20) NOT NULL,
  `instructor_name` varchar(100) NOT NULL,
  `attribute_1` int(1) DEFAULT NULL,
  `attribute_2` int(1) DEFAULT NULL,
  `attribute_3` int(1) DEFAULT NULL,
  `attribute_4` int(1) DEFAULT NULL,
  `attribute_5` int(1) DEFAULT NULL,
  `attribute_6` int(1) DEFAULT NULL,
  `attribute_7` int(1) DEFAULT NULL,
  `attribute_8` int(1) DEFAULT NULL,
  `attribute_9` int(1) DEFAULT NULL,
  `attribute_10` int(1) DEFAULT NULL,
  `attribute_11` int(1) DEFAULT NULL,
  `attribute_12` int(1) DEFAULT NULL,
  `attribute_13` int(1) DEFAULT NULL,
  `attribute_14` int(1) DEFAULT NULL,
  `attribute_15` int(1) DEFAULT NULL,
  `timestamp` date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usms_feedback_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `instructor_id` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `total` int(10) DEFAULT '0',
  `at_1` varchar(200) DEFAULT '0',
  `at_2` varchar(200) DEFAULT '0',
  `at_3` varchar(200) DEFAULT '0',
  `at_4` varchar(200) DEFAULT '0',
  `at_5` varchar(200) DEFAULT '0',
  `at_6` varchar(200) DEFAULT '0',
  `at_7` varchar(200) DEFAULT '0',
  `at_8` varchar(200) DEFAULT '0',
  `at_9` varchar(200) DEFAULT '0',
  `at_10` varchar(200) DEFAULT '0',
  `at_11` varchar(200) DEFAULT '0',
  `at_12` varchar(200) DEFAULT '0',
  `at_13` varchar(200) DEFAULT '0',
  `at_14` varchar(200) DEFAULT '0',
  `at_15` varchar(200) DEFAULT '0',
  `no_of_students_evaluated` int(5) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usms_student_2024` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(4) NOT NULL,
  `password` varchar(600) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `s_1` int(11) DEFAULT '0',
  `s_2` int(11) DEFAULT '0',
  `s_3` int(11) DEFAULT '0',
  `s_4` int(11) DEFAULT '0',
  `s_5` int(11) DEFAULT '0',
  `s_6` int(11) DEFAULT '0',
  `s_7` int(11) DEFAULT '0',
  `s_8` int(11) DEFAULT '0',
  `s_9` int(11) DEFAULT '0',
  `s_10` int(11) DEFAULT '0',
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_no`)
);
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE IF NOT EXISTS `usms_subject_allocation_2024` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `batch_id` int(10) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(15) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `timestamp` date DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;


