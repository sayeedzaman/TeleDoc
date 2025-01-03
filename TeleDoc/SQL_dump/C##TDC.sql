/*
 Navicat Premium Data Transfer

 Source Server         : TeleDOC_Project
 Source Server Type    : Oracle
 Source Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 Source Host           : localhost:1521
 Source Schema         : C##TDC

 Target Server Type    : Oracle
 Target Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 File Encoding         : 65001

 Date: 31/08/2022 11:29:58
*/


-- ----------------------------
-- Table structure for APPOINTMENTS
-- ----------------------------
DROP TABLE "C##TDC"."APPOINTMENTS";
CREATE TABLE "C##TDC"."APPOINTMENTS" (
  "APPOINTMENT_ID" NUMBER(10,0) VISIBLE NOT NULL,
  "APPOINT_DATE" NVARCHAR2(12) VISIBLE,
  "PAYMENT_STATUS" VARCHAR2(10 BYTE) VISIBLE,
  "PATIENT_ID" NUMBER(10,0) VISIBLE NOT NULL,
  "DOCTOR_ID" NUMBER(10,0) VISIBLE NOT NULL,
  "APPOINTMENT_STATUS" VARCHAR2(10 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of APPOINTMENTS
-- ----------------------------
INSERT INTO "C##TDC"."APPOINTMENTS" VALUES ('8', '29-08-2022', 'UNPAID', '100000000', '1544', 'WAITING');
INSERT INTO "C##TDC"."APPOINTMENTS" VALUES ('9', '30-08-2022', 'UNPAID', '100000000', '1544', 'WAITING');
INSERT INTO "C##TDC"."APPOINTMENTS" VALUES ('3', '28-08-2022', 'UNPAID', '100001202', '2001', 'WAITING');
INSERT INTO "C##TDC"."APPOINTMENTS" VALUES ('1', '28-08-2022', 'UNPAID', '100001009', '2001', 'ACCEPTED');
INSERT INTO "C##TDC"."APPOINTMENTS" VALUES ('2', '28-08-2022', 'PAID', '100001002', '2001', 'ACCEPTED');
INSERT INTO "C##TDC"."APPOINTMENTS" VALUES ('4', '29-08-2022', 'UNPAID', '100001222', '2001', 'WAITING');
INSERT INTO "C##TDC"."APPOINTMENTS" VALUES ('5', '29-08-2022', 'PAID', '100001272', '2001', 'ACCEPTED');
INSERT INTO "C##TDC"."APPOINTMENTS" VALUES ('6', '29-08-2022', 'UNPAID', '100001072', '2001', 'WAITING');
INSERT INTO "C##TDC"."APPOINTMENTS" VALUES ('7', '29-08-2022', 'UNPAID', '100001022', '2001', 'WAITING');

-- ----------------------------
-- Table structure for DELETED_DOCTORS
-- ----------------------------
DROP TABLE "C##TDC"."DELETED_DOCTORS";
CREATE TABLE "C##TDC"."DELETED_DOCTORS" (
  "USER_ID" NUMBER(8,0) VISIBLE NOT NULL,
  "DOCTOR_NAME" VARCHAR2(255 BYTE) VISIBLE,
  "EMAIL" VARCHAR2(255 BYTE) VISIBLE,
  "QUALIFICATION" VARCHAR2(255 BYTE) VISIBLE,
  "RATING" NUMBER(6,2) VISIBLE,
  "DEPARTMENT_ID" NUMBER(10,0) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of DELETED_DOCTORS
-- ----------------------------
INSERT INTO "C##TDC"."DELETED_DOCTORS" VALUES ('1006', 'Abe Hikari', 'abehikari@yahoo.com', 'MBBS', '4.54', '17');

-- ----------------------------
-- Table structure for DELETED_PATIENTS
-- ----------------------------
DROP TABLE "C##TDC"."DELETED_PATIENTS";
CREATE TABLE "C##TDC"."DELETED_PATIENTS" (
  "USER_ID" NUMBER(10,0) VISIBLE NOT NULL,
  "PATIENT_NAME" VARCHAR2(255 BYTE) VISIBLE,
  "DATE_OF_BIRTH" VARCHAR2(500 BYTE) VISIBLE,
  "PHONE_NUMBER" VARCHAR2(15 BYTE) VISIBLE,
  "GENDER" VARCHAR2(255 BYTE) VISIBLE,
  "LOCATION" VARCHAR2(255 BYTE) VISIBLE,
  "EMAIL" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of DELETED_PATIENTS
-- ----------------------------
INSERT INTO "C##TDC"."DELETED_PATIENTS" VALUES ('100000991', 'Harada Mitsuki', '1989-02-09', '1855225016', 'F', 'DHAKA', 'harada1@icloud.com');

-- ----------------------------
-- Table structure for DEPARTMENTS
-- ----------------------------
DROP TABLE "C##TDC"."DEPARTMENTS";
CREATE TABLE "C##TDC"."DEPARTMENTS" (
  "DEPARTMENT_ID" NUMBER(8,0) VISIBLE NOT NULL,
  "DEPARTMENT_NAME" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of DEPARTMENTS
-- ----------------------------
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('18', 'RADIOTHERAPY AND ONCOLOGY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('1', 'MEDICINE');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('3', 'ENT');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('4', 'ANATOMY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('5', 'BIOCHEMISTRY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('6', 'PHYSIOLOGY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('7', 'CARDIOLOGY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('8', 'PHARMACOLOGY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('9', 'MICROBIOLOGY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('10', 'PATHOLOGY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('11', 'GYNAECOLOGY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('12', 'DERMATOLOGY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('13', 'OPHTHALMOLOGY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('14', 'PAEDIATRICS');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('15', 'FORENSIC MEDICINE');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('16', 'COMMUNITY MEDICINE');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('19', 'NEUROLOGY');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('17', 'OBSTETRICS');
INSERT INTO "C##TDC"."DEPARTMENTS" VALUES ('2', 'SURGERY');

-- ----------------------------
-- Table structure for DIAGNOSIS
-- ----------------------------
DROP TABLE "C##TDC"."DIAGNOSIS";
CREATE TABLE "C##TDC"."DIAGNOSIS" (
  "DISEASE_ID" NUMBER(10,0) VISIBLE NOT NULL,
  "DISEASE_NAME" VARCHAR2(50 BYTE) VISIBLE,
  "COMMON_SYMPTOMS" VARCHAR2(1000 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of DIAGNOSIS
-- ----------------------------
INSERT INTO "C##TDC"."DIAGNOSIS" VALUES ('1', 'DANGUE', 'Fever, Pain in joints of bones, May lead to death in severe cases,PAIN IN HAND');
INSERT INTO "C##TDC"."DIAGNOSIS" VALUES ('2', 'COVID19', 'Fever, Cough, May lead to death in severe cases');
INSERT INTO "C##TDC"."DIAGNOSIS" VALUES ('4', 'Hyperthyroidism', 'nervousness, anxiety and irritability.
mood swings.
difficulty sleeping.
persistent tiredness and weakness.
sensitivity to heat.
swelling in your neck from an enlarged thyroid gland (goitre)
an irregular and/or unusually fast heart rate (palpitations)
twitching or trembling.');
INSERT INTO "C##TDC"."DIAGNOSIS" VALUES ('3', 'Anemia', 'Anemia is a condition in which you lack enough healthy red blood cells to carry adequate oxygen to your bodys tissues');

-- ----------------------------
-- Table structure for DOCTORS
-- ----------------------------
DROP TABLE "C##TDC"."DOCTORS";
CREATE TABLE "C##TDC"."DOCTORS" (
  "USER_ID" NUMBER(8,0) VISIBLE NOT NULL,
  "DOCTOR_NAME" VARCHAR2(255 BYTE) VISIBLE,
  "EMAIL" VARCHAR2(255 BYTE) VISIBLE,
  "QUALIFICATION" VARCHAR2(255 BYTE) VISIBLE,
  "RATING" NUMBER(6,2) VISIBLE,
  "DEPARTMENT_ID" NUMBER(10,0) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of DOCTORS
-- ----------------------------
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1543', 'Okamoto Misaki', 'misaokam@gmail.com', 'MBBS', '3.68', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1544', 'Manuel Martin', 'manumartin@outlook.com', 'MBBS', '2.11', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1545', 'Lu Zhennan', 'zhennanlu@outlook.com', 'MBBS', '3.82', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1546', 'Fujita Ayato', 'fayato1020@hotmail.com', 'MBBS', '2.95', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1547', 'Lok Wai San', 'wslok@mail.com', 'MBBS', '2.59', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1548', 'Huang Jialun', 'jihuang03@yahoo.com', 'MBBS', '3.27', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1549', 'Yan Xiaoming', 'xiaomingyan6@gmail.com', 'MBBS', '2.27', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1550', 'Dong Zitao', 'dongzitao@icloud.com', 'MBBS', '4.54', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1551', 'Imai Rena', 'imairena@icloud.com', 'MBBS', '3.85', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1552', 'Zhou Xiaoming', 'zhouxiaoming7@mail.com', 'MBBS', '2.28', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1553', 'Barbara Burns', 'barbaraburns@outlook.com', 'MBBS', '4.83', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1554', 'Tanaka Nanami', 'nanami53@outlook.com', 'MBBS', '2.83', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1555', 'Yamamoto Akina', 'akinayamamoto74@hotmail.com', 'MBBS', '4.41', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1556', 'Chiang Chiu Wai', 'cwch1@yahoo.com', 'MBBS', '3.86', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1557', 'Sakurai Kazuma', 'skazuma1027@mail.com', 'MBBS', '2.44', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1558', 'Cheng Tak Wah', 'chetakwah@yahoo.com', 'MBBS', '2.44', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1559', 'Xue Lu', 'xue610@gmail.com', 'MBBS', '3.26', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1560', 'Nakajima Kenta', 'nake@hotmail.com', 'MBBS', '3.3', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1561', 'Tian Zhiyuan', 'zhiyuan107@icloud.com', 'MBBS', '3.65', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1562', 'William Gonzalez', 'gonzalezw@yahoo.com', 'MBBS', '2.7', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1563', 'Jiang Zhiyuan', 'jiang1022@outlook.com', 'MBBS', '3.5', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1564', 'Virginia Stone', 'stone48@hotmail.com', 'MBBS', '3.44', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1565', 'Mo Sai Wing', 'swmo@outlook.com', 'MBBS', '3.48', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1566', 'Yao Ziyi', 'yaoziyi504@mail.com', 'MBBS', '4.8', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1567', 'Eleanor Perez', 'eleanor1117@hotmail.com', 'MBBS', '3.01', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1568', 'Barry Meyer', 'meyerbarry@hotmail.com', 'MBBS', '2.44', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1569', 'Wong Sze Yu', 'syw2@outlook.com', 'MBBS', '3.48', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1570', 'Francisco Wright', 'wrfran@icloud.com', 'MBBS', '4.53', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1571', 'Watanabe Yuna', 'watanabeyun@icloud.com', 'MBBS', '2.91', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1572', 'Tong Wai Yee', 'waiyeet@yahoo.com', 'MBBS', '3.61', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1573', 'Lok Kwok Wing', 'lokkw@outlook.com', 'MBBS', '3.92', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1574', 'Hou Rui', 'ruihou16@yahoo.com', 'MBBS', '2.8', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1575', 'Louise Watson', 'watsonl1@gmail.com', 'MBBS', '3.45', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1576', 'Ng Chung Yin', 'chungyinng@gmail.com', 'MBBS', '2.58', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1577', 'Lok Sze Kwan', 'skl1206@gmail.com', 'MBBS', '3.54', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1578', 'Hsuan Yu Ling', 'hsuan1@icloud.com', 'MBBS', '4.8', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1579', 'Rose Garcia', 'garciarose409@mail.com', 'MBBS', '2.35', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1580', 'Chu Wing Suen', 'chuws3@yahoo.com', 'MBBS', '4.63', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1581', 'Kojima Rena', 'kojir@mail.com', 'MBBS', '3.13', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1582', 'Choi Kar Yan', 'karyanch@mail.com', 'MBBS', '4.48', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1583', 'Yeung Wing Kuen', 'wingkuen723@mail.com', 'MBBS', '3.67', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1584', 'Hashimoto Daisuke', 'hashimoto327@hotmail.com', 'MBBS', '2.64', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1585', 'Yin Anqi', 'anqiyin@outlook.com', 'MBBS', '3.41', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1586', 'James Bell', 'belljames1116@mail.com', 'MBBS', '3.86', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1587', 'Zeng Ziyi', 'zezi514@outlook.com', 'MBBS', '4.38', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1588', 'Zeng Shihan', 'shihanzeng@gmail.com', 'MBBS', '2.22', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1589', 'Che Yun Fat', 'cheyu@gmail.com', 'MBBS', '4.22', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1590', 'Hirano Hina', 'hinahirano@icloud.com', 'MBBS', '3.95', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1591', 'Lam Wai San', 'lamws@outlook.com', 'MBBS', '3.78', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1592', 'Saito Hazuki', 'hazusaito@gmail.com', 'MBBS', '3.78', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1593', 'Chung Wing Fat', 'wingfatchung8@gmail.com', 'MBBS', '3.86', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1594', 'Goto Airi', 'aigoto2005@icloud.com', 'MBBS', '2.11', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1595', 'Au Lai Yan', 'lyau1979@outlook.com', 'MBBS', '3.42', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1596', 'Yau Chung Yin', 'cyya@mail.com', 'MBBS', '3.12', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1597', 'Shen Lan', 'shl6@icloud.com', 'MBBS', '2.13', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1598', 'Liao Tsz Ching', 'tcliao@outlook.com', 'MBBS', '4.07', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1599', 'Heung Suk Yee', 'sukyeeh1977@yahoo.com', 'MBBS', '3.86', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1600', 'Ma Ho Yin', 'mahoyin425@outlook.com', 'MBBS', '4.33', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1601', 'Tang Ho Yin', 'tanghy@hotmail.com', 'MBBS', '2.14', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1602', 'Victor Freeman', 'freemanvic713@gmail.com', 'MBBS', '4.45', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1603', 'Kwan Ming', 'kwanming311@outlook.com', 'MBBS', '3.48', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1604', 'Jeffrey Roberts', 'roberts9@icloud.com', 'MBBS', '2.14', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1605', 'Brenda Fernandez', 'brendfernandez@icloud.com', 'MBBS', '2.91', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1606', 'Duan Ziyi', 'ziyiduan@gmail.com', 'MBBS', '3.48', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1607', 'Tang Xiuying', 'xitan8@gmail.com', 'MBBS', '4.13', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1608', 'Sit Chi Ming', 'cmsit@icloud.com', 'MBBS', '3.94', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1609', 'Fukuda Takuya', 'fukut713@outlook.com', 'MBBS', '3.44', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1610', 'Koo On Na', 'onna2@icloud.com', 'MBBS', '4.76', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1611', 'Jesus Payne', 'jepa@gmail.com', 'MBBS', '2.63', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1612', 'Wu Shihan', 'wushihan@icloud.com', 'MBBS', '3.89', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1613', 'Chow Wing Fat', 'winchow@yahoo.com', 'MBBS', '3.38', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1614', 'Frances Freeman', 'ffran@icloud.com', 'MBBS', '3.32', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1615', 'Choi Ming', 'ming01@gmail.com', 'MBBS', '2.17', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1616', 'Nakamura Mitsuki', 'mitsukin@icloud.com', 'MBBS', '4.35', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1617', 'Stephen Ross', 'ross3@mail.com', 'MBBS', '4.33', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1618', 'Tang Yuning', 'ytang15@hotmail.com', 'MBBS', '3.17', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1619', 'Takeda Momoka', 'takeda1@icloud.com', 'MBBS', '3.87', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1620', 'Yamada Ren', 'yamadar@gmail.com', 'MBBS', '4.24', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1621', 'Brenda Collins', 'collinsbrend609@gmail.com', 'MBBS', '2.44', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1622', 'Sun Zhiyuan', 'suzhiyuan16@gmail.com', 'MBBS', '2.87', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1623', 'Jia Ziyi', 'jiaz@icloud.com', 'MBBS', '2.63', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1624', 'Jacob Porter', 'jacobpor1024@outlook.com', 'MBBS', '3.48', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1625', 'Yuen Hok Yau', 'hyy430@icloud.com', 'MBBS', '3.7', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1626', 'Ono Minato', 'omin@hotmail.com', 'MBBS', '4.68', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1627', 'Fred Taylor', 'tayfr506@icloud.com', 'MBBS', '2.53', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1628', 'Nicole Jordan', 'nicojorda@mail.com', 'MBBS', '3.07', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1629', 'Meng Ling Ling', 'linglingmeng82@mail.com', 'MBBS', '3.56', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1630', 'Daniel Payne', 'paynedaniel@gmail.com', 'MBBS', '4.78', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1631', 'Meng Ka Ming', 'mekaming6@outlook.com', 'MBBS', '3.44', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1632', 'Han Ziyi', 'hzi@outlook.com', 'MBBS', '4.52', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1633', 'Shimizu Rena', 'reshim@mail.com', 'MBBS', '4.74', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1634', 'Yokoyama Yamato', 'yokoyamay11@mail.com', 'MBBS', '2.97', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1635', 'Christina Patterson', 'pac@outlook.com', 'MBBS', '3.46', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1636', 'Randy Ellis', 'ranellis3@outlook.com', 'MBBS', '4.27', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1637', 'Yue Ming', 'mingyue@gmail.com', 'MBBS', '2.63', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1638', 'Yung Wing Kuen', 'wingkuenyun3@gmail.com', 'MBBS', '4.3', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1639', 'Saito Itsuki', 'isai1@gmail.com', 'MBBS', '2.5', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1640', 'Todd Castro', 'toddca@icloud.com', 'MBBS', '2.23', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1641', 'Han Suk Yee', 'sukyeh@gmail.com', 'MBBS', '2.32', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1642', 'Nakayama Takuya', 'nakayama903@gmail.com', 'MBBS', '4.37', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1643', 'Xie Yuning', 'yuning9@gmail.com', 'MBBS', '4.24', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1644', 'Mario Kim', 'marioki@yahoo.com', 'MBBS', '4.47', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1645', 'Han Zhiyuan', 'hanzhiy@gmail.com', 'MBBS', '2.78', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1646', 'Fu Jialun', 'jialunfu814@icloud.com', 'MBBS', '3.02', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1647', 'Jerry Wood', 'woodjerry@mail.com', 'MBBS', '3.34', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1648', 'Gu Rui', 'rui1013@gmail.com', 'MBBS', '3.5', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1649', 'Tong Ka Fai', 'kafai10@hotmail.com', 'MBBS', '3.96', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1650', 'Sugiyama Ayato', 'ayatsugi@gmail.com', 'MBBS', '3.47', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1651', 'Yip Yun Fat', 'yunfat64@outlook.com', 'MBBS', '3.1', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1652', 'Takahashi Hikari', 'takahashih@yahoo.com', 'MBBS', '2.94', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1653', 'Yamazaki Hikaru', 'hikaryama@icloud.com', 'MBBS', '4.82', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1654', 'Chang Lu', 'luch@icloud.com', 'MBBS', '4.87', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1655', 'Lui Wai Lam', 'wllu919@mail.com', 'MBBS', '3.59', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1656', 'Martha Gomez', 'gomm1977@icloud.com', 'MBBS', '2.97', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1657', 'Koo Wai Han', 'koowh1998@gmail.com', 'MBBS', '2.55', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1658', 'Zhou Xiuying', 'xz412@icloud.com', 'MBBS', '3.06', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1659', 'Carolyn Roberts', 'carroberts@mail.com', 'MBBS', '3.02', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1660', 'Luo Xiuying', 'xl73@outlook.com', 'MBBS', '4.64', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1661', 'Daniel Robinson', 'darobinson@icloud.com', 'MBBS', '4.06', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1662', 'Nakano Ren', 'nren10@hotmail.com', 'MBBS', '3.15', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1663', 'Yung Lik Sun', 'liksunyun63@mail.com', 'MBBS', '4.28', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1664', 'Sugiyama Kenta', 'sugikenta1955@yahoo.com', 'MBBS', '4.08', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1665', 'Murata Yuto', 'muratay903@gmail.com', 'MBBS', '2.53', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1666', 'Yau Fat', 'yafat@icloud.com', 'MBBS', '2.7', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1667', 'Paul Allen', 'allenpa86@icloud.com', 'MBBS', '2.52', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1668', 'Fong Ka Ming', 'fongkaming@outlook.com', 'MBBS', '4.53', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1669', 'Ho Kwok Yin', 'ho60@mail.com', 'MBBS', '3.98', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1670', 'Mui Chiu Wai', 'chiuwaim1979@icloud.com', 'MBBS', '2.59', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1671', 'Kathleen Kennedy', 'kekathleen8@icloud.com', 'MBBS', '4.37', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1672', 'Debra Brown', 'dbrown@gmail.com', 'MBBS', '2.26', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1673', 'Fan Zhennan', 'fazhennan@yahoo.com', 'MBBS', '3.79', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1674', 'Yin Chi Ming', 'chiming1997@yahoo.com', 'MBBS', '3.76', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1675', 'Liao Jiehong', 'liao93@gmail.com', 'MBBS', '3.01', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1676', 'Alfred Freeman', 'alfredfre@gmail.com', 'MBBS', '2.9', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1677', 'Hsuan Kwok Yin', 'hkwokyin@gmail.com', 'MBBS', '2.58', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1001', 'Liao Kwok Kuen', 'kwokkuen89@mail.com', 'MBBS', '3.22', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1002', 'Kwan Ka Fai', 'kafaikw@outlook.com', 'MBBS', '4.36', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1003', 'Yuen Kwok Yin', 'kwokyiny@yahoo.com', 'MBBS', '3', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1004', 'Ishikawa Akina', 'aishik@gmail.com', 'MBBS', '4.01', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1005', 'Todd Murphy', 'tm1@gmail.com', 'MBBS', '2.74', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1007', 'Ma Ziyi', 'ziyi2020@outlook.com', 'MBBS', '3.79', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1008', 'Dawn Reed', 'redawn@icloud.com', 'MBBS', '2.34', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1009', 'Xia Zitao', 'zxi5@gmail.com', 'MBBS', '4.29', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1010', 'Tsang Chi Ming', 'tscm@gmail.com', 'MBBS', '2.91', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1011', 'Tan Zhennan', 'tan615@icloud.com', 'MBBS', '2.85', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1012', 'Yin Cho Yee', 'yinchoyee@hotmail.com', 'MBBS', '3.3', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1013', 'Xiong Zhennan', 'xiongzhennan8@icloud.com', 'MBBS', '2.18', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1014', 'Che On Na', 'che9@icloud.com', 'MBBS', '2.92', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1015', 'Yuen Chun Yu', 'chunyuyu@gmail.com', 'MBBS', '3.15', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1016', 'Peter Bryant', 'brypeter@outlook.com', 'MBBS', '3.91', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1017', 'Dong Xiaoming', 'dongx@mail.com', 'MBBS', '3', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1018', 'Fu Zhiyuan', 'zhiyuanfu10@hotmail.com', 'MBBS', '4.22', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1019', 'Ng Ting Fung', 'tingfungng707@icloud.com', 'MBBS', '2.68', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1020', 'Sasaki Daichi', 'daichisasak@outlook.com', 'MBBS', '4.69', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1021', 'Nakamura Sara', 'saranakamura@outlook.com', 'MBBS', '3.45', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1022', 'Su Zhennan', 'su97@gmail.com', 'MBBS', '2.43', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1023', 'Ren Zitao', 'zitaor@gmail.com', 'MBBS', '4.64', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1024', 'Jonathan Wagner', 'jonathan5@yahoo.com', 'MBBS', '4.24', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1025', 'Zeng Zhiyuan', 'zengz4@mail.com', 'MBBS', '3.53', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1026', 'Shi Zhennan', 'shizh@mail.com', 'MBBS', '3.14', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1027', 'Ng Chieh Lun', 'ncl6@icloud.com', 'MBBS', '4.66', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1028', 'Sit Ming', 'mingsit40@yahoo.com', 'MBBS', '4.09', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1029', 'Ruth Cooper', 'cru@yahoo.com', 'MBBS', '4.09', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1030', 'Lu Xiuying', 'xiuyinglu10@gmail.com', 'MBBS', '4.22', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1031', 'Hashimoto Rena', 'renaha@gmail.com', 'MBBS', '4.17', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1032', 'Chiang Fat', 'fatc117@gmail.com', 'MBBS', '4.52', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1033', 'Ku Sai Wing', 'saiwing129@gmail.com', 'MBBS', '3.03', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1034', 'Ti Ka Fai', 'tkafai2009@hotmail.com', 'MBBS', '4.64', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1035', 'Fong Wai Yee', 'fong803@icloud.com', 'MBBS', '4.52', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1036', 'Hsuan Suk Yee', 'hsuansukyee@icloud.com', 'MBBS', '4.74', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1037', 'Gerald Wagner', 'gerald7@outlook.com', 'MBBS', '4.44', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1038', 'Ying Ting Fung', 'tingfungying@hotmail.com', 'MBBS', '4.54', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1039', 'Cai Zhiyuan', 'caz1@icloud.com', 'MBBS', '3.2', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1040', 'Jennifer Nguyen', 'nguyenjennifer@mail.com', 'MBBS', '3.82', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1041', 'Wu Ka Fai', 'wu10@icloud.com', 'MBBS', '3.37', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1042', 'Hui Wai Yee', 'wyhui@mail.com', 'MBBS', '2.75', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1043', 'Sakurai Ayato', 'sakuraiayato@hotmail.com', 'MBBS', '4.73', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1044', 'Xiao Anqi', 'xiaoanqi@gmail.com', 'MBBS', '4.31', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1045', 'Henry Wood', 'wood1@outlook.com', 'MBBS', '3.15', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1046', 'Han Cho Yee', 'cyhan1@gmail.com', 'MBBS', '3.72', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1047', 'Ding Lan', 'dl91@gmail.com', 'MBBS', '4.39', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1048', 'Janice Vasquez', 'janicvasquez@gmail.com', 'MBBS', '2.36', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1049', 'Yung Wing Fat', 'yung45@yahoo.com', 'MBBS', '4.28', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1050', 'Iwasaki Hazuki', 'iwh@outlook.com', 'MBBS', '4.36', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1051', 'Lu Ziyi', 'luziyi128@gmail.com', 'MBBS', '4.51', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1052', 'Uchida Itsuki', 'uchidit@yahoo.com', 'MBBS', '3.13', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1053', 'Masuda Ayato', 'ayato10@yahoo.com', 'MBBS', '4.29', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1054', 'Zhao Zitao', 'zhao727@icloud.com', 'MBBS', '3.46', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1055', 'Okamoto Sakura', 'okamotosakur@yahoo.com', 'MBBS', '3.08', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1056', 'Wei Yuning', 'wei424@gmail.com', 'MBBS', '3.97', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1057', 'Cai Zitao', 'czitao@outlook.com', 'MBBS', '3.63', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1058', 'Meng Kar Yan', 'mengky@outlook.com', 'MBBS', '3.95', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1059', 'Wong Wing Fat', 'wingfatwon@icloud.com', 'MBBS', '3.58', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1060', 'Arai Mitsuki', 'mitsuki822@gmail.com', 'MBBS', '3.81', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1061', 'Sakurai Sakura', 'sakuras7@mail.com', 'MBBS', '2.35', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1062', 'Chen Rui', 'ruchen802@icloud.com', 'MBBS', '2.48', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1063', 'Hayashi Tsubasa', 'tsubasahaya09@outlook.com', 'MBBS', '2.23', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1064', 'Ma Chiu Wai', 'mchiuwai8@yahoo.com', 'MBBS', '2.44', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1065', 'Ding Zhennan', 'zhennding510@gmail.com', 'MBBS', '3.92', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1066', 'Chang Fat', 'fatch@gmail.com', 'MBBS', '3.15', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1067', 'Matsumoto Airi', 'airim@mail.com', 'MBBS', '4.61', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1068', 'Susan Rodriguez', 'rodriguezsusan1207@hotmail.com', 'MBBS', '3.02', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1069', 'Ishikawa Miu', 'ishmiu@hotmail.com', 'MBBS', '3.51', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1070', 'Luis Hawkins', 'hawkluis9@gmail.com', 'MBBS', '2.15', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1071', 'Sato Daisuke', 'sad527@gmail.com', 'MBBS', '2.72', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1072', 'Dai Tak Wah', 'takwahdai7@yahoo.com', 'MBBS', '2.65', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1073', 'Tam Tsz Ching', 'tszchingt@gmail.com', 'MBBS', '4.09', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1074', 'Chiang Tsz Hin', 'tszhinc@gmail.com', 'MBBS', '4.29', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1075', 'Wong Tsz Hin', 'tszhin6@hotmail.com', 'MBBS', '4.08', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1076', 'Dai Yuning', 'dyuning@outlook.com', 'MBBS', '4.5', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1077', 'Judy Holmes', 'holmes1940@outlook.com', 'MBBS', '3.53', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1078', 'Howard Hill', 'hillhoward07@gmail.com', 'MBBS', '4.87', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1079', 'Sugiyama Daichi', 'dsug1215@icloud.com', 'MBBS', '4.42', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1080', 'Kwok Wing Fat', 'kwok7@gmail.com', 'MBBS', '2.76', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1081', 'Joshua Kelley', 'kelleyjoshu@hotmail.com', 'MBBS', '3.92', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1082', 'Nishimura Ayano', 'nayano@icloud.com', 'MBBS', '4.21', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1083', 'Robin Cook', 'cookro308@gmail.com', 'MBBS', '4.81', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1084', 'Edith Hunter', 'hunteredith1980@gmail.com', 'MBBS', '4.65', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1085', 'Tsang Tin Lok', 'tltsan@outlook.com', 'MBBS', '4.21', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1086', 'Yamazaki Miu', 'miuyamazaki@icloud.com', 'MBBS', '3.7', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1087', 'Kwong Cho Yee', 'kcho@gmail.com', 'MBBS', '2.55', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1088', 'Taniguchi Airi', 'airitanig@icloud.com', 'MBBS', '4.73', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1089', 'Xue Zitao', 'xzitao@mail.com', 'MBBS', '4.75', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1090', 'Tsang Sai Wing', 'tsangsaiwing10@gmail.com', 'MBBS', '3.2', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1091', 'Song Xiaoming', 'songxia43@mail.com', 'MBBS', '2.11', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1092', 'Liao Jialun', 'jialunliao@gmail.com', 'MBBS', '4.58', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1093', 'Gu Shihan', 'shigu@hotmail.com', 'MBBS', '3.76', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1094', 'Wanda Clark', 'clarkwanda@outlook.com', 'MBBS', '4.26', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1095', 'Lai Siu Wai', 'siuwai00@gmail.com', 'MBBS', '4.26', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1096', 'Kelly Russell', 'kellyrussell5@icloud.com', 'MBBS', '4.01', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1097', 'Chen Shihan', 'shihan42@yahoo.com', 'MBBS', '3.18', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1098', 'Paula Crawford', 'paulac@gmail.com', 'MBBS', '4.53', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1099', 'Nancy Wilson', 'nancywilson@gmail.com', 'MBBS', '3.77', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1100', 'Matsumoto Itsuki', 'itsukimatsumoto72@icloud.com', 'MBBS', '3.11', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1101', 'Shing Ka Man', 'shingkam@icloud.com', 'MBBS', '3.66', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1102', 'Tanaka Itsuki', 'itan@mail.com', 'MBBS', '3.86', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1103', 'Wang Zhiyuan', 'zhiwa@gmail.com', 'MBBS', '4.72', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1104', 'Irene Morris', 'mirene514@outlook.com', 'MBBS', '3.99', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1105', 'Yamaguchi Hazuki', 'yamaguchihazu@icloud.com', 'MBBS', '2.67', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1106', 'Jiang Zhennan', 'zhj@mail.com', 'MBBS', '2.92', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1107', 'Qian Yuning', 'yuningq@hotmail.com', 'MBBS', '4.34', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1108', 'Yin Zitao', 'yin1971@outlook.com', 'MBBS', '2.33', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1109', 'Liu Jiehong', 'jiehongl120@gmail.com', 'MBBS', '2.25', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1110', 'Hara Daisuke', 'daisuke709@outlook.com', 'MBBS', '4.77', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1111', 'Sakamoto Yota', 'syota78@outlook.com', 'MBBS', '2.49', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1112', 'Chiang Hiu Tung', 'hiutungchiang1218@outlook.com', 'MBBS', '4.13', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1113', 'Kevin Murray', 'kevimurray03@mail.com', 'MBBS', '4.47', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1114', 'Kam Ling Ling', 'kamlingling@hotmail.com', 'MBBS', '4.06', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1115', 'Matsui Takuya', 'takuyamatsui3@gmail.com', 'MBBS', '2.22', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1116', 'Chen Ziyi', 'ziyichen@gmail.com', 'MBBS', '4.65', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1117', 'Keith Robertson', 'rkeith@gmail.com', 'MBBS', '3.91', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1118', 'Tian Lu', 'tianlu@gmail.com', 'MBBS', '3.42', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1119', 'Tony Wood', 'wt1@hotmail.com', 'MBBS', '3.5', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1120', 'Wong Cho Yee', 'cywong7@outlook.com', 'MBBS', '4.13', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1121', 'Sano Ryota', 'sanoryo@outlook.com', 'MBBS', '2.42', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1122', 'Mario Alexander', 'male219@outlook.com', 'MBBS', '2.8', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1123', 'Kwan On Kay', 'kwaok108@icloud.com', 'MBBS', '2.65', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1124', 'Guo Zitao', 'guozitao724@gmail.com', 'MBBS', '3.85', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1125', 'Qiu Jiehong', 'qiujie@outlook.com', 'MBBS', '3.91', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1126', 'Takeuchi Shino', 'st5@hotmail.com', 'MBBS', '3.28', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1127', 'Zhu Xiuying', 'xiuyingzhu@icloud.com', 'MBBS', '3.13', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1128', 'Arai Ryota', 'arr@outlook.com', 'MBBS', '2.58', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1129', 'Xiang Xiaoming', 'xxi@gmail.com', 'MBBS', '2.51', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1130', 'Luo Yunxi', 'yunxiluo@icloud.com', 'MBBS', '2.66', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1131', 'Yan Anqi', 'yananqi530@outlook.com', 'MBBS', '3.87', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1132', 'William Young', 'youngwilliam3@icloud.com', 'MBBS', '3.6', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1133', 'Lam On Kay', 'lamok@icloud.com', 'MBBS', '4.26', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1134', 'Xu Lu', 'xulu@hotmail.com', 'MBBS', '3.08', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1135', 'Kato Misaki', 'katomis10@gmail.com', 'MBBS', '3.88', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1136', 'Xu Anqi', 'xa929@outlook.com', 'MBBS', '2.55', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1137', 'Stanley Rice', 'stanlrice@outlook.com', 'MBBS', '3.93', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1138', 'Takeuchi Akina', 'taka@icloud.com', 'MBBS', '3.39', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1139', 'Sato Ikki', 'sikki@icloud.com', 'MBBS', '4.17', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1140', 'Gong Jialun', 'goj@outlook.com', 'MBBS', '3.35', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1141', 'Imai Mitsuki', 'immitsuki@gmail.com', 'MBBS', '2.25', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1142', 'Danielle Barnes', 'danielleba419@outlook.com', 'MBBS', '2.67', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1143', 'Murakami Rena', 'renamurak@icloud.com', 'MBBS', '4.77', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1144', 'Antonio Rodriguez', 'rodriguez112@gmail.com', 'MBBS', '2.94', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1145', 'Lo Kwok Yin', 'kyl64@gmail.com', 'MBBS', '2.8', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1146', 'Tsui Chun Yu', 'chtsu@gmail.com', 'MBBS', '3', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1147', 'Steve Woods', 'wstev@yahoo.com', 'MBBS', '3.63', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1148', 'Ku Wai Man', 'kuwaiman@gmail.com', 'MBBS', '4.09', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1149', 'Joanne Ramos', 'ramojoa@outlook.com', 'MBBS', '4.22', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1150', 'Okamoto Ryota', 'rokamoto@outlook.com', 'MBBS', '4.76', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1151', 'Kikuchi Ryota', 'kryota3@gmail.com', 'MBBS', '3', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1152', 'Chiang On Kay', 'onkaychian@gmail.com', 'MBBS', '2.27', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1153', 'Wong Ching Wan', 'chingwanwo@hotmail.com', 'MBBS', '4.75', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1154', 'Qin Xiaoming', 'xiqin@outlook.com', 'MBBS', '2.94', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1155', 'Monica Mason', 'monica2@icloud.com', 'MBBS', '2.47', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1156', 'Tam Sai Wing', 'swta@gmail.com', 'MBBS', '3.75', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1157', 'Li Yuning', 'liy@gmail.com', 'MBBS', '4.35', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1158', 'Cynthia Hicks', 'hicks1989@gmail.com', 'MBBS', '2.74', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1159', 'Leslie Simmons', 'lesliesimmons@gmail.com', 'MBBS', '3.11', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1160', 'Alfred Mendoza', 'mendoza9@gmail.com', 'MBBS', '4.4', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1161', 'Ueda Hina', 'ueh@outlook.com', 'MBBS', '4.88', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1162', 'Xu Xiaoming', 'xux@gmail.com', 'MBBS', '2.53', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1163', 'Lo Suk Yee', 'sukyee6@gmail.com', 'MBBS', '4.16', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1164', 'Barry Washington', 'washington5@icloud.com', 'MBBS', '2.88', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1165', 'Arthur Moore', 'moorearth8@icloud.com', 'MBBS', '3.81', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1166', 'Mok Ming', 'mingmo@icloud.com', 'MBBS', '2.42', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1167', 'Nakagawa Momoka', 'momokanak10@hotmail.com', 'MBBS', '4.18', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1168', 'Leung Yun Fat', 'leyf@gmail.com', 'MBBS', '4.79', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1169', 'Wan Wai Han', 'waihan13@yahoo.com', 'MBBS', '4.71', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1170', 'Li Rui', 'ruili@outlook.com', 'MBBS', '3.8', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1171', 'Matsuda Ikki', 'ikkmats84@outlook.com', 'MBBS', '4.37', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1172', 'Yam Hiu Tung', 'yam9@mail.com', 'MBBS', '4.72', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1173', 'Evelyn Palmer', 'palmeevelyn@icloud.com', 'MBBS', '3.67', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1174', 'Luo Rui', 'luorui1@yahoo.com', 'MBBS', '3.36', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1175', 'Tang Zhiyuan', 'zt1979@hotmail.com', 'MBBS', '3.65', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1176', 'Tina Grant', 'tinag@gmail.com', 'MBBS', '4.24', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1177', 'Iwasaki Ayato', 'iwasakiayato305@gmail.com', 'MBBS', '4.63', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1178', 'Sarah Nichols', 'nichosara@icloud.com', 'MBBS', '2.6', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1179', 'Kong Sau Man', 'smkong@gmail.com', 'MBBS', '4.23', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1180', 'Fujii Sakura', 'sakufujii@mail.com', 'MBBS', '4.59', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1181', 'Yamada Takuya', 'takuyayamada6@outlook.com', 'MBBS', '3.2', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1182', 'Rose Tucker', 'rtuck@icloud.com', 'MBBS', '2.66', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1183', 'Tang Cho Yee', 'tcy@gmail.com', 'MBBS', '2.62', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1184', 'Man Yu Ling', 'yulman4@gmail.com', 'MBBS', '2.77', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1185', 'Susan Wright', 'susanwrigh@outlook.com', 'MBBS', '4.18', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1186', 'Tammy Vasquez', 'tvasquez619@outlook.com', 'MBBS', '2.52', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1187', 'Suzuki Yuito', 'suzuki13@hotmail.com', 'MBBS', '3.38', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1188', 'Phyllis Ramirez', 'phyllis109@outlook.com', 'MBBS', '4.43', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1189', 'Takagi Hikaru', 'hikarutakagi@mail.com', 'MBBS', '4.37', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1190', 'Ding Lu', 'lu913@yahoo.com', 'MBBS', '3.69', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1191', 'Mark Ortiz', 'ortizm@outlook.com', 'MBBS', '2.53', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1192', 'Takahashi Riku', 'triku@outlook.com', 'MBBS', '3.79', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1193', 'Cui Rui', 'curui415@outlook.com', 'MBBS', '3.59', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1194', 'Martin Tran', 'tranmarti@outlook.com', 'MBBS', '2.86', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1195', 'Inoue Kaito', 'kaito831@outlook.com', 'MBBS', '2.73', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1196', 'Mori Daisuke', 'daisuke525@hotmail.com', 'MBBS', '2.14', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1197', 'Alexander Evans', 'evansalexander70@hotmail.com', 'MBBS', '4.57', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1198', 'Lois Romero', 'romelois@mail.com', 'MBBS', '4.43', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1199', 'Gu Xiuying', 'gux1108@hotmail.com', 'MBBS', '4.85', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1200', 'Wei Zhennan', 'wezhennan3@icloud.com', 'MBBS', '2.37', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1201', 'Xue Xiuying', 'xiuxue@gmail.com', 'MBBS', '3.59', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1202', 'Randall Holmes', 'holmesrandall09@gmail.com', 'MBBS', '2.35', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1203', 'Mak Wai San', 'makwaisan3@gmail.com', 'MBBS', '2.3', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1204', 'Yam Siu Wai', 'yamsw@icloud.com', 'MBBS', '4.69', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1205', 'Jerry Silva', 'jersi713@gmail.com', 'MBBS', '2.85', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1206', 'Chiang Ching Wan', 'chiang1995@yahoo.com', 'MBBS', '2.48', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1207', 'Joanne Wright', 'wjoanne9@mail.com', 'MBBS', '2.68', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1208', 'Miyazaki Hazuki', 'mhaz5@outlook.com', 'MBBS', '4.45', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1209', 'Choi Wing Sze', 'cwingsze@icloud.com', 'MBBS', '2.87', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1210', 'Wendy Martinez', 'mawendy@gmail.com', 'MBBS', '3.76', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1211', 'Uchida Minato', 'minato501@outlook.com', 'MBBS', '3.92', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1212', 'Joyce Alexander', 'joyceale@hotmail.com', 'MBBS', '3.43', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1213', 'Lo On Kay', 'look706@gmail.com', 'MBBS', '2.37', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1214', 'Jiang Xiaoming', 'xiaojiang@icloud.com', 'MBBS', '2.19', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1215', 'Cheng Ka Man', 'cheng3@icloud.com', 'MBBS', '4', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1216', 'Harada Kenta', 'kentaharada1949@icloud.com', 'MBBS', '3.46', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1217', 'Ma Wai Han', 'wama7@mail.com', 'MBBS', '3.63', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1218', 'Tao Chun Yu', 'taocy@mail.com', 'MBBS', '4.52', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1219', 'Kwong Chiu Wai', 'kcw@icloud.com', 'MBBS', '3.91', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1220', 'Kwong Wing Suen', 'wingsuen05@icloud.com', 'MBBS', '2.97', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1221', 'Deborah Edwards', 'edwards1@outlook.com', 'MBBS', '2.24', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1222', 'Shi Jiehong', 'jiehong47@yahoo.com', 'MBBS', '4.2', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1223', 'Ku Suk Yee', 'syku@icloud.com', 'MBBS', '3.14', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1224', 'Ando Ryota', 'andoryota@mail.com', 'MBBS', '2.51', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1225', 'Xue Lan', 'xl829@icloud.com', 'MBBS', '4.53', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1226', 'Yamada Ikki', 'yamadikki1128@yahoo.com', 'MBBS', '2.88', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1227', 'Ueda Daichi', 'daichiue3@icloud.com', 'MBBS', '3.82', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1228', 'Chen Yuning', 'yuningchen6@outlook.com', 'MBBS', '4.15', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1229', 'Nakamura Eita', 'nakaeit73@outlook.com', 'MBBS', '3.96', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1230', 'Yamashita Aoi', 'aoiya@outlook.com', 'MBBS', '4.52', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1231', 'Taniguchi Hazuki', 'hat@gmail.com', 'MBBS', '4.41', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1232', 'Lai Wing Kuen', 'laiwi1959@yahoo.com', 'MBBS', '3.32', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1233', 'Loui Wai Yee', 'louiwaiyee@yahoo.com', 'MBBS', '4.06', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1234', 'Brandon Perry', 'bper@outlook.com', 'MBBS', '2.46', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1235', 'Zeng Xiaoming', 'xiaoming702@gmail.com', 'MBBS', '4.57', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1236', 'Ando Sara', 'ando5@gmail.com', 'MBBS', '3.38', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1237', 'Chung Ling Ling', 'chung41@gmail.com', 'MBBS', '3.6', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1238', 'Ota Yuito', 'otyuito@yahoo.com', 'MBBS', '2.85', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1239', 'Han Siu Wai', 'siuwai12@gmail.com', 'MBBS', '3.66', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1240', 'Gerald Phillips', 'phillips53@gmail.com', 'MBBS', '3.25', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1241', 'Kato Aoshi', 'aoshk@outlook.com', 'MBBS', '3.23', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1242', 'Yau Hok Yau', 'hokyauyau@mail.com', 'MBBS', '2.54', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1243', 'Carmen Medina', 'medinacarmen@mail.com', 'MBBS', '4.59', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1244', 'Saito Ikki', 'ikki4@icloud.com', 'MBBS', '2.37', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1245', 'Cheng Wing Sze', 'cws@outlook.com', 'MBBS', '4.29', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1246', 'Noguchi Misaki', 'misanoguchi@yahoo.com', 'MBBS', '4.42', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1247', 'Tiffany Graham', 'graham87@icloud.com', 'MBBS', '3.69', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1248', 'Meng On Kay', 'meonkay@outlook.com', 'MBBS', '2.23', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1249', 'Man Fu Shing', 'manfushing20@gmail.com', 'MBBS', '2.54', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1250', 'Yamazaki Akina', 'yamazakina1115@icloud.com', 'MBBS', '2.98', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1251', 'Ono Itsuki', 'onitsuki@outlook.com', 'MBBS', '4.04', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1252', 'Pak Ka Keung', 'pakkakeung@gmail.com', 'MBBS', '2.24', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1253', 'Chin Lai Yan', 'laiyanchin923@outlook.com', 'MBBS', '4.36', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1254', 'Juan Romero', 'romero1022@hotmail.com', 'MBBS', '2.91', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1255', 'Joel Gonzalez', 'joegonz@icloud.com', 'MBBS', '3.46', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1256', 'James Hill', 'james1992@yahoo.com', 'MBBS', '3.84', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1257', 'Wei Yunxi', 'ywei@mail.com', 'MBBS', '3.14', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1258', 'Heung Sze Kwan', 'skheung68@yahoo.com', 'MBBS', '3.27', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1259', 'Murakami Nanami', 'murakamin56@gmail.com', 'MBBS', '2.61', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1260', 'Ruth Howard', 'ruthhowa228@icloud.com', 'MBBS', '2.38', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1261', 'Diane Wallace', 'wad@mail.com', 'MBBS', '3.82', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1262', 'Miura Hana', 'miurah@gmail.com', 'MBBS', '4.19', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1263', 'Kong Suk Yee', 'sykong123@gmail.com', 'MBBS', '2.6', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1264', 'Qin Jiehong', 'qinjieh46@mail.com', 'MBBS', '3.81', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1265', 'Chiang Ka Ming', 'ckm@mail.com', 'MBBS', '2.4', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1266', 'Kondo Seiko', 'kondo40@gmail.com', 'MBBS', '4.71', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1267', 'Pak Chun Yu', 'pakchu@gmail.com', 'MBBS', '3.89', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1268', 'Sato Daichi', 'dsat@icloud.com', 'MBBS', '3.51', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1269', 'Donald Gordon', 'gordondonal@mail.com', 'MBBS', '3.12', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1270', 'Mok On Na', 'onna914@yahoo.com', 'MBBS', '3.55', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1271', 'Otsuka Kenta', 'otsukkent8@mail.com', 'MBBS', '3.5', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1272', 'Yuen Tin Wing', 'yuentw@outlook.com', 'MBBS', '4.64', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1273', 'Martin Reynolds', 'rmart411@icloud.com', 'MBBS', '3.19', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1274', 'Endo Yamato', 'yamato2@gmail.com', 'MBBS', '3.62', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1275', 'Sit Hui Mei', 'huimeisit7@mail.com', 'MBBS', '3.98', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1276', 'Hsuan Ka Ming', 'hsuankaming109@gmail.com', 'MBBS', '2.2', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1277', 'Li Jiehong', 'jieli8@gmail.com', 'MBBS', '3.94', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1278', 'Hui Fu Shing', 'huifushing42@outlook.com', 'MBBS', '2.82', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1279', 'Cheung Lik Sun', 'lscheu@gmail.com', 'MBBS', '4.36', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1280', 'Lillian Harrison', 'lillianharrison@icloud.com', 'MBBS', '2.85', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1281', 'Samuel Romero', 'samuelrome@icloud.com', 'MBBS', '4.63', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1282', 'Ishii Shino', 'shinoishii210@hotmail.com', 'MBBS', '2.67', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1283', 'Cynthia Wilson', 'cynthiawilso@outlook.com', 'MBBS', '3.57', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1284', 'Keith Owens', 'owenskei@gmail.com', 'MBBS', '2.63', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1285', 'Su Zitao', 'zsu9@mail.com', 'MBBS', '2.3', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1286', 'Fu Ting Fung', 'fu2000@gmail.com', 'MBBS', '3.11', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1287', 'Ichikawa Mai', 'mai202@yahoo.com', 'MBBS', '4.8', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1288', 'Janet Carter', 'cajanet@yahoo.com', 'MBBS', '2.79', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1289', 'Chen Anqi', 'chenanqi@outlook.com', 'MBBS', '2.21', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1290', 'Edwin Hughes', 'edwhug@gmail.com', 'MBBS', '3.29', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1291', 'Bobby Munoz', 'munozbob@yahoo.com', 'MBBS', '2.7', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1292', 'Lin Jiehong', 'linj52@hotmail.com', 'MBBS', '2.18', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1293', 'Eva Payne', 'pe2@outlook.com', 'MBBS', '4.25', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1294', 'Fujii Misaki', 'fmisak@outlook.com', 'MBBS', '4.72', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1295', 'Choi Kwok Kuen', 'kwokkuenc428@outlook.com', 'MBBS', '2.83', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1296', 'Hu Jiehong', 'jiehonghu89@outlook.com', 'MBBS', '2.33', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1297', 'Fujita Tsubasa', 'futs97@outlook.com', 'MBBS', '3.47', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1298', 'Lois Hamilton', 'loihami5@outlook.com', 'MBBS', '2.31', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1299', 'Shimada Hina', 'shina@icloud.com', 'MBBS', '3.48', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1300', 'Wu Hui Mei', 'wu1940@yahoo.com', 'MBBS', '4.11', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1301', 'To Chung Yin', 'to5@gmail.com', 'MBBS', '3.94', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1302', 'Harold Morris', 'haroldmorri6@hotmail.com', 'MBBS', '4.44', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1303', 'Miu Tin Wing', 'twmiu@outlook.com', 'MBBS', '3.31', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1304', 'Ku Wing Sze', 'wsku@outlook.com', 'MBBS', '3.77', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1305', 'Esther Tran', 'et1003@gmail.com', 'MBBS', '2.13', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1306', 'Anthony Clark', 'claranthony901@yahoo.com', 'MBBS', '3.81', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1307', 'Yuan Xiuying', 'xiuyingyuan@icloud.com', 'MBBS', '4.52', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1308', 'Lu Jiehong', 'lujiehong822@outlook.com', 'MBBS', '3.38', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1309', 'Joe Griffin', 'griffinjoe@gmail.com', 'MBBS', '2.78', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1310', 'Fukuda Ren', 'ren96@hotmail.com', 'MBBS', '2.2', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1311', 'Mario Gomez', 'marigomez@icloud.com', 'MBBS', '4.83', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1312', 'Fan Xiuying', 'fanxiuyi@gmail.com', 'MBBS', '2.77', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1313', 'Ono Rin', 'ono83@gmail.com', 'MBBS', '4.79', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1314', 'Dong Xiuying', 'xiuying61@mail.com', 'MBBS', '2.12', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1315', 'Hu Zitao', 'huz@gmail.com', 'MBBS', '3.4', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1316', 'Wan Ming Sze', 'mswan4@outlook.com', 'MBBS', '3.11', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1317', 'Fan Kwok Kuen', 'kwokkuen2020@gmail.com', 'MBBS', '3.25', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1318', 'Qiu Ziyi', 'qziyi@gmail.com', 'MBBS', '3.15', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1319', 'Fan Ziyi', 'ziyi6@gmail.com', 'MBBS', '3.62', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1320', 'Harada Akina', 'harada78@hotmail.com', 'MBBS', '3.98', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1321', 'Shi Lan', 'shilan@icloud.com', 'MBBS', '2.16', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1322', 'Lam Sai Wing', 'swlam@gmail.com', 'MBBS', '3.12', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1323', 'Dawn Cole', 'dawncol@gmail.com', 'MBBS', '3.08', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1324', 'Ku Tsz Hin', 'thku1226@gmail.com', 'MBBS', '2.13', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1325', 'Sakurai Ren', 'sakren2@mail.com', 'MBBS', '3.31', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1326', 'Ito Eita', 'itoe1114@outlook.com', 'MBBS', '4.07', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1327', 'Frank Munoz', 'munozfran1023@gmail.com', 'MBBS', '4.48', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1328', 'Arimura Kazuma', 'kazumaarimura@mail.com', 'MBBS', '2.2', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1329', 'Jane Romero', 'jr42@outlook.com', 'MBBS', '2.88', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1330', 'Man Tsz Ching', 'mtszching@icloud.com', 'MBBS', '4.82', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1331', 'Chris Ramirez', 'chrisra@outlook.com', 'MBBS', '2.23', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1332', 'Tang Rui', 'taru1@outlook.com', 'MBBS', '3.78', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1333', 'Kono Hina', 'kono5@icloud.com', 'MBBS', '2.74', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1334', 'Virginia Silva', 'siv@hotmail.com', 'MBBS', '2.25', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1335', 'Fong Wing Sze', 'fongwingsze2008@icloud.com', 'MBBS', '2.6', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1336', 'Inoue Mitsuki', 'mitsukii17@yahoo.com', 'MBBS', '2.66', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1337', 'Yamamoto Yuto', 'yutyama@mail.com', 'MBBS', '3.75', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1338', 'Kong Lai Yan', 'konglaiyan@yahoo.com', 'MBBS', '4.12', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1339', 'Lok Wai Yee', 'waiyeelok4@outlook.com', 'MBBS', '4.22', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1340', 'Kwok Wai Lam', 'kwokwl@icloud.com', 'MBBS', '3.88', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1341', 'Matsui Kazuma', 'kazumatsui8@outlook.com', 'MBBS', '2.3', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1342', 'Theresa Chavez', 'theresa1986@outlook.com', 'MBBS', '3.98', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1343', 'Yuen Chiu Wai', 'yuencw@gmail.com', 'MBBS', '3.45', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1344', 'Yang Zhiyuan', 'zhiyuanyan@icloud.com', 'MBBS', '2.17', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1345', 'Bobby Garcia', 'garcibob@mail.com', 'MBBS', '3.19', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1346', 'Ma Anqi', 'ma2@icloud.com', 'MBBS', '2.23', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1347', 'Jerry Graham', 'jerry6@mail.com', 'MBBS', '3.34', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1348', 'Lui Wing Kuen', 'wklui@icloud.com', 'MBBS', '4.24', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1349', 'Qiu Yuning', 'qiuy@icloud.com', 'MBBS', '2.29', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1350', 'Frank Miller', 'millerfrank8@icloud.com', 'MBBS', '2.46', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1351', 'Hao Anqi', 'ah302@gmail.com', 'MBBS', '2.39', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1352', 'Kimura Ryota', 'ryota530@hotmail.com', 'MBBS', '4.53', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1353', 'Shi Xiuying', 'shi1982@gmail.com', 'MBBS', '4.08', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1354', 'Shibata Hikaru', 'shibatahikar102@yahoo.com', 'MBBS', '3.17', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1355', 'Yang Rui', 'ruyan@outlook.com', 'MBBS', '2.85', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1356', 'Zhang Zhennan', 'zhangzhennan@outlook.com', 'MBBS', '3.39', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1357', 'Choi Ting Fung', 'tingfungch48@outlook.com', 'MBBS', '3.37', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1358', 'Ma Chi Ming', 'macm1@hotmail.com', 'MBBS', '2.93', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1359', 'Shannon Taylor', 'tayshann@hotmail.com', 'MBBS', '3.47', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1360', 'Shi Shihan', 'shishih@icloud.com', 'MBBS', '4.76', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1361', 'He Jialun', 'jialunhe1@icloud.com', 'MBBS', '3.67', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1362', 'Tang Anqi', 'tang1954@icloud.com', 'MBBS', '4.18', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1363', 'Yau Wai Man', 'yau6@icloud.com', 'MBBS', '4.36', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1364', 'Maruyama Yuito', 'yuitom75@hotmail.com', 'MBBS', '4.74', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1365', 'Tang Yunxi', 'tangyunxi@gmail.com', 'MBBS', '4.7', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1366', 'Zhu Zhennan', 'zhennzhu226@gmail.com', 'MBBS', '2.33', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1367', 'Louise Boyd', 'louise1@outlook.com', 'MBBS', '2.93', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1368', 'Yamada Mai', 'mayama1954@gmail.com', 'MBBS', '4.51', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1369', 'Yau Sze Yu', 'yausy@mail.com', 'MBBS', '3.27', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1370', 'Wong Ho Yin', 'wohoyin@gmail.com', 'MBBS', '3.61', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1371', 'Tong Hiu Tung', 'tonght@hotmail.com', 'MBBS', '3.41', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1372', 'Virginia Moore', 'virginia4@icloud.com', 'MBBS', '3.41', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1373', 'Masuda Nanami', 'nanamimasud@yahoo.com', 'MBBS', '3.49', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1374', 'Yokoyama Aoshi', 'yokoyamaaoshi@outlook.com', 'MBBS', '4.88', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1375', 'Cui Zhiyuan', 'cuizhiyuan@outlook.com', 'MBBS', '2.8', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1376', 'Yeow Wing Fat', 'wingfaty610@outlook.com', 'MBBS', '3.33', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1377', 'Mildred Smith', 'milsmith711@gmail.com', 'MBBS', '2.56', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1378', 'Han Wing Fat', 'hwf@gmail.com', 'MBBS', '2.73', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1379', 'Jin Zhennan', 'jinzhen@gmail.com', 'MBBS', '4.09', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1380', 'Lori Mcdonald', 'mcdonaldlori@gmail.com', 'MBBS', '4.32', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1381', 'Han Rui', 'ruihan5@mail.com', 'MBBS', '3.86', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1382', 'Ng Kar Yan', 'karyan920@hotmail.com', 'MBBS', '4.62', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1383', 'Lo Hok Yau', 'lohy@outlook.com', 'MBBS', '2.28', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1384', 'Kondo Ayano', 'ayano52@gmail.com', 'MBBS', '3.39', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1385', 'Ku Siu Wai', 'kusiuwai63@gmail.com', 'MBBS', '2.66', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1386', 'Ann Walker', 'walkeran10@gmail.com', 'MBBS', '2.39', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1387', 'Nathan Foster', 'foster8@icloud.com', 'MBBS', '2.69', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1388', 'Sakamoto Momoka', 'momokasaka@icloud.com', 'MBBS', '4.83', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1389', 'Hao Zitao', 'haozitao@icloud.com', 'MBBS', '3.58', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1390', 'Che Hok Yau', 'hych@icloud.com', 'MBBS', '2.5', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1391', 'He Anqi', 'heanqi@mail.com', 'MBBS', '4.63', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1392', 'Helen Lee', 'helenle@icloud.com', 'MBBS', '2.43', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1393', 'Yan Lan', 'ylan@outlook.com', 'MBBS', '4.04', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1394', 'Hirano Momoka', 'momokahirano@icloud.com', 'MBBS', '2.34', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1395', 'Wang Yuning', 'yuniwa93@yahoo.com', 'MBBS', '4.78', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1396', 'Kikuchi Shino', 'kikshino@gmail.com', 'MBBS', '3.48', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1397', 'Ishida Ryota', 'ryotaishi127@gmail.com', 'MBBS', '3.39', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1398', 'Lei Lan', 'leil@outlook.com', 'MBBS', '4.76', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1399', 'Maruyama Misaki', 'maruyama1955@icloud.com', 'MBBS', '3.16', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1400', 'Chiang Ka Fai', 'chkaf5@outlook.com', 'MBBS', '4.48', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1401', 'Cao Shihan', 'cashihan@outlook.com', 'MBBS', '4.38', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1402', 'Cho On Na', 'onnac214@gmail.com', 'MBBS', '4.35', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1403', 'Saito Hikaru', 'hsai512@icloud.com', 'MBBS', '3.95', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1404', 'Shi Lu', 'shilu@icloud.com', 'MBBS', '3.84', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1405', 'Shimizu Tsubasa', 'tsubasashimizu5@icloud.com', 'MBBS', '4.3', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1406', 'Ito Shino', 'shinoi@mail.com', 'MBBS', '4.71', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1407', 'Song Rui', 'ruiso@gmail.com', 'MBBS', '3.17', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1408', 'Steve Moore', 'steve425@gmail.com', 'MBBS', '2.34', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1409', 'Miu Sum Wing', 'sumwingm@icloud.com', 'MBBS', '3.34', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1410', 'Fong Ka Man', 'fongkm@gmail.com', 'MBBS', '3.34', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1411', 'Jacob Sullivan', 'jacosullivan10@gmail.com', 'MBBS', '3.73', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1412', 'Inoue Hikaru', 'hikaruinoue@icloud.com', 'MBBS', '3.16', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1413', 'Joseph Griffin', 'josegr10@gmail.com', 'MBBS', '4', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1414', 'Julia King', 'julkin@outlook.com', 'MBBS', '3.53', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1415', 'Kobayashi Itsuki', 'kobayashii@mail.com', 'MBBS', '2.3', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1416', 'Jiang Jiehong', 'jijiang47@icloud.com', 'MBBS', '4.01', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1417', 'Andrew Johnson', 'johnsandrew@yahoo.com', 'MBBS', '3.8', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1418', 'Shing Ka Keung', 'shingkakeung@mail.com', 'MBBS', '4.22', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1419', 'Kong On Na', 'onnako8@icloud.com', 'MBBS', '2.41', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1420', 'Craig Porter', 'craigpo@gmail.com', 'MBBS', '3.7', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1421', 'Victor Warren', 'victowarren8@outlook.com', 'MBBS', '2.41', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1422', 'Shing Chiu Wai', 'chiuwaishin6@outlook.com', 'MBBS', '2.1', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1423', 'Ku Cho Yee', 'kcy@gmail.com', 'MBBS', '2.16', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1424', 'Henry Gutierrez', 'henrygutierrez@yahoo.com', 'MBBS', '4.86', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1425', 'Cheng Shihan', 'shicheng@gmail.com', 'MBBS', '2.15', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1426', 'Tian Ziyi', 'tian317@yahoo.com', 'MBBS', '4.2', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1427', 'Sakai Riku', 'rikus@yahoo.com', 'MBBS', '4.71', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1428', 'Jerry Payne', 'jerry86@gmail.com', 'MBBS', '2.58', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1429', 'Takada Sakura', 'takadasakura11@icloud.com', 'MBBS', '4.49', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1430', 'Hung Ming Sze', 'mingszehu@hotmail.com', 'MBBS', '3.02', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1431', 'Debbie Robinson', 'robinsondebbie@icloud.com', 'MBBS', '3.31', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1432', 'Amanda Robinson', 'amanda1993@icloud.com', 'MBBS', '4.71', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1433', 'Sylvia Walker', 'ws7@gmail.com', 'MBBS', '4.04', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1434', 'Lam Kwok Wing', 'kwokwinglam309@gmail.com', 'MBBS', '2.46', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1435', 'Leung Ho Yin', 'leung1998@mail.com', 'MBBS', '4.11', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1436', 'Lo Chi Yuen', 'lochiyuen6@yahoo.com', 'MBBS', '4.4', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1437', 'Cheung Ho Yin', 'cho10@gmail.com', 'MBBS', '2.77', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1438', 'Josephine Dixon', 'dixon515@icloud.com', 'MBBS', '2.54', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1439', 'Ku Fat', 'fatku@icloud.com', 'MBBS', '2.4', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1440', 'Wada Seiko', 'seikwada3@hotmail.com', 'MBBS', '3.17', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1441', 'Tse Chi Ming', 'tsech94@icloud.com', 'MBBS', '3.38', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1442', 'Chan Kwok Kuen', 'chankk116@outlook.com', 'MBBS', '3.69', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1443', 'Mak Tin Wing', 'tinwingm@outlook.com', 'MBBS', '4.43', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1444', 'Meng Anqi', 'menganqi209@gmail.com', 'MBBS', '4.17', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1445', 'Lui Chiu Wai', 'chiuwlui@icloud.com', 'MBBS', '4.65', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1446', 'Du Yunxi', 'yunxidu49@icloud.com', 'MBBS', '2.25', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1447', 'Nakamori Momoe', 'nakamorimomoe@icloud.com', 'MBBS', '2.67', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1448', 'Sheh Wai Han', 'sheh929@outlook.com', 'MBBS', '4.21', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1449', 'Miura Riku', 'rikum@icloud.com', 'MBBS', '2.38', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1450', 'Albert Kelly', 'alberk5@gmail.com', 'MBBS', '2.8', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1451', 'Sheh Kwok Ming', 'kwokmingsheh@outlook.com', 'MBBS', '3.42', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1452', 'Ueda Rena', 'ueda1023@outlook.com', 'MBBS', '3.04', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1453', 'Ando Rena', 'rena@icloud.com', 'MBBS', '4.68', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1454', 'Wong On Na', 'wonon@outlook.com', 'MBBS', '2.5', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1455', 'Maeda Kenta', 'kenta5@icloud.com', 'MBBS', '4.03', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1456', 'Tian Xiaoming', 'tian79@gmail.com', 'MBBS', '3.5', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1457', 'Ho Tin Wing', 'hotinwing@gmail.com', 'MBBS', '3.29', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1458', 'Ishii Hazuki', 'ishiihazu@outlook.com', 'MBBS', '4.81', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1459', 'Maeda Hikari', 'hikamaeda1219@gmail.com', 'MBBS', '3.98', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1460', 'Patrick Rodriguez', 'patr@gmail.com', 'MBBS', '2.5', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1461', 'Uchida Mai', 'maiuchida@outlook.com', 'MBBS', '3.52', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1462', 'He Ziyi', 'he1954@outlook.com', 'MBBS', '3.92', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1463', 'Luo Jialun', 'luo904@icloud.com', 'MBBS', '3.73', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1464', 'Wan Wai Yee', 'waiyee59@gmail.com', 'MBBS', '4.02', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1465', 'Goto Hikari', 'gotohi@icloud.com', 'MBBS', '3.95', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1466', 'Mui Chun Yu', 'muicy@yahoo.com', 'MBBS', '2.78', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1467', 'Henry Robertson', 'robhenry@gmail.com', 'MBBS', '3.87', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1468', 'Meng Lik Sun', 'lsm1121@hotmail.com', 'MBBS', '2.91', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1469', 'Miyazaki Itsuki', 'mitsuki06@gmail.com', 'MBBS', '3.2', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1470', 'Hara Ayano', 'hay1018@icloud.com', 'MBBS', '4.34', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1471', 'Sakurai Miu', 'miu4@outlook.com', 'MBBS', '3.25', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1472', 'Jiang Xiuying', 'jiangx8@gmail.com', 'MBBS', '4.64', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1473', 'Fong Hok Yau', 'hyf810@icloud.com', 'MBBS', '2.86', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1474', 'Imai Ayano', 'imaia@gmail.com', 'MBBS', '4.03', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1475', 'To Wai Man', 'to3@gmail.com', 'MBBS', '2.51', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1476', 'Han Wai Yee', 'wyh10@icloud.com', 'MBBS', '2.93', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1477', 'Miyazaki Riku', 'miyazaki50@gmail.com', 'MBBS', '4.33', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1478', 'Su Yunxi', 'su1223@icloud.com', 'MBBS', '4.36', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1479', 'Shao Zhiyuan', 'zhiyuansha@outlook.com', 'MBBS', '4.06', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1480', 'Kinoshita Aoshi', 'aoshikinoshita@yahoo.com', 'MBBS', '4.71', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1481', 'Carmen Gordon', 'cg4@outlook.com', 'MBBS', '2.5', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1482', 'Harada Itsuki', 'itsukih@mail.com', 'MBBS', '3.4', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1483', 'Fang Shihan', 'fangshihan@hotmail.com', 'MBBS', '4.11', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1484', 'Liu Lu', 'lliu1@yahoo.com', 'MBBS', '4.73', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1485', 'Phillip Ryan', 'phillr2003@outlook.com', 'MBBS', '3.21', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1486', 'Yau Kwok Ming', 'yaukm@gmail.com', 'MBBS', '2.65', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1487', 'So Sum Wing', 'sosw4@icloud.com', 'MBBS', '2.42', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1488', 'Feng Xiuying', 'xf2@hotmail.com', 'MBBS', '4.32', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1489', 'Ishii Seiko', 'seikoi@gmail.com', 'MBBS', '4.41', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1490', 'Matsuda Yuna', 'yunam@outlook.com', 'MBBS', '3.18', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1491', 'Shao Lu', 'lushao@gmail.com', 'MBBS', '4.37', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1492', 'Sakamoto Hazuki', 'sakamotohazuk@icloud.com', 'MBBS', '2.66', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1493', 'Ma Zhennan', 'mzh608@hotmail.com', 'MBBS', '2.25', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1494', 'Jacob Hunt', 'huntjacob5@icloud.com', 'MBBS', '3.64', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1495', 'Sasaki Mitsuki', 'sasakmitsuki@icloud.com', 'MBBS', '3.05', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1496', 'Mo Fu Shing', 'mo1954@yahoo.com', 'MBBS', '3.24', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1497', 'Christopher Vargas', 'christopherv@outlook.com', 'MBBS', '4.58', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1498', 'Hara Kenta', 'kenta10@gmail.com', 'MBBS', '4.59', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1499', 'Fujita Mai', 'mai222@icloud.com', 'MBBS', '3.07', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1500', 'Aoki Nanami', 'aoki116@hotmail.com', 'MBBS', '2.68', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1501', 'Wang Zitao', 'wangzitao@gmail.com', 'MBBS', '3.92', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1502', 'Takeuchi Kenta', 'takeuke@outlook.com', 'MBBS', '2.8', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1503', 'Sugiyama Momoka', 'sugiyama825@gmail.com', 'MBBS', '4.35', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1504', 'Kikuchi Riku', 'riku4@yahoo.com', 'MBBS', '4.51', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1505', 'Takahashi Momoka', 'takahashimomok@icloud.com', 'MBBS', '3.72', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1506', 'Tanaka Minato', 'minato2@icloud.com', 'MBBS', '3.67', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1507', 'Rachel Cox', 'cox212@outlook.com', 'MBBS', '3.99', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1508', 'Duan Shihan', 'duanshihan05@gmail.com', 'MBBS', '4.54', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1509', 'Kinoshita Yuto', 'kinoshitayu5@icloud.com', 'MBBS', '4.36', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1510', 'Mo Xiaoming', 'moxiaom@outlook.com', 'MBBS', '3.18', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1511', 'Shing Siu Wai', 'swsh@mail.com', 'MBBS', '4.02', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1512', 'Xue Zhiyuan', 'zxue1@yahoo.com', 'MBBS', '2.96', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1513', 'Ralph Foster', 'ralphfo1102@gmail.com', 'MBBS', '3.41', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1514', 'Allen Cox', 'cal3@gmail.com', 'MBBS', '3.2', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1515', 'Matsumoto Miu', 'mium@gmail.com', 'MBBS', '3.93', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1516', 'Endo Daichi', 'endodaichi@outlook.com', 'MBBS', '3.92', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1517', 'Goto Minato', 'gotominat@yahoo.com', 'MBBS', '2.33', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1518', 'Meng Tak Wah', 'mtakwah@icloud.com', 'MBBS', '4.09', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1519', 'Mao Jiehong', 'jiehm@gmail.com', 'MBBS', '3.25', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1520', 'Jiang Anqi', 'jianga1@icloud.com', 'MBBS', '3.44', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1521', 'Goto Ayato', 'gotoayato2@gmail.com', 'MBBS', '3.33', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1522', 'Carmen Robinson', 'carmen1004@hotmail.com', 'MBBS', '4.01', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1523', 'Randall Ramirez', 'ramrandall@hotmail.com', 'MBBS', '3.19', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1524', 'Fong Yun Fat', 'fonyunfat1229@gmail.com', 'MBBS', '3.46', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1525', 'Sakurai Sara', 'saras60@icloud.com', 'MBBS', '3.6', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1526', 'Taniguchi Itsuki', 'taniguchi322@mail.com', 'MBBS', '3.99', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1527', 'Carrie Davis', 'carrie10@yahoo.com', 'MBBS', '4.49', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1528', 'Loui Sau Man', 'loui9@yahoo.com', 'MBBS', '3.27', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1529', 'Jiang Ziyi', 'ziyijiang@yahoo.com', 'MBBS', '3.57', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1530', 'Scott Campbell', 'cscott@gmail.com', 'MBBS', '2.74', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1531', 'Suzuki Kasumi', 'ksuzuki@mail.com', 'MBBS', '2.78', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1532', 'Donald Foster', 'fosdonald@yahoo.com', 'MBBS', '2.95', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1533', 'Suzuki Ren', 'rensuz@gmail.com', 'MBBS', '3.49', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1534', 'Choi Ka Man', 'kaman1980@hotmail.com', 'MBBS', '2.4', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1535', 'Yeung Hiu Tung', 'yeunghiutung@icloud.com', 'MBBS', '3.35', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1536', 'Takeuchi Sara', 'takeuchisar1976@mail.com', 'MBBS', '4.45', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1537', 'Mo Lu', 'mo419@yahoo.com', 'MBBS', '2.3', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1538', 'Ando Hana', 'hanaand@outlook.com', 'MBBS', '3.13', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1539', 'Goto Mitsuki', 'gotomitsuki130@outlook.com', 'MBBS', '3.1', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1540', 'Ishikawa Riku', 'rikui@gmail.com', 'MBBS', '2.6', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1541', 'Kondo Ayato', 'kondoa@icloud.com', 'MBBS', '4.32', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1542', 'Nishimura Seiko', 'nishimura4@outlook.com', 'MBBS', '3.06', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2202', 'MD. SAYEED', 'sayeedzaman@gmail.com', 'FCPS', '5', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2203', 'MD. ZAMAN', 'ssdgg@gmail.com', 'MD RESIDENCY', '5', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2204', 'MD. FAISAL ZAMAN', 'fzdgg@gmail.com', 'MD RESIDENCY', '5', '19');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1678', 'Connie Alexander', 'ca44@outlook.com', 'MBBS', '4.01', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1679', 'Lu Anqi', 'luanq@gmail.com', 'MBBS', '4.12', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1680', 'Siu Ka Fai', 'siukafai@icloud.com', 'MBBS', '3.39', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1681', 'Hazel Hunter', 'hahunter65@gmail.com', 'MBBS', '2.27', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1682', 'Harry Harrison', 'hh308@gmail.com', 'MBBS', '2.19', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1683', 'Ruth Evans', 'ruthev101@gmail.com', 'MBBS', '4.68', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1684', 'Ruth Rose', 'ruth6@icloud.com', 'MBBS', '3.65', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1685', 'Long Rui', 'rulong@outlook.com', 'MBBS', '2.71', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1686', 'Frances Gibson', 'gf90@icloud.com', 'MBBS', '2.45', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1687', 'Jose Soto', 'jso10@gmail.com', 'MBBS', '3.12', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1688', 'Yao Lu', 'yaolu4@mail.com', 'MBBS', '3.47', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1689', 'Bradley Rogers', 'bradleyrogers2@gmail.com', 'MBBS', '4.03', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1690', 'Wong Hui Mei', 'huimeiwong115@mail.com', 'MBBS', '3.83', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1691', 'Ishida Aoshi', 'aoishida@icloud.com', 'MBBS', '4.48', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1692', 'Hu Jialun', 'jialun203@hotmail.com', 'MBBS', '3.47', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1693', 'To Wai Han', 'towh@yahoo.com', 'MBBS', '4.11', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1694', 'Martin Payne', 'martinpa2@mail.com', 'MBBS', '2.67', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1695', 'Melissa Castillo', 'melissacastillo96@gmail.com', 'MBBS', '2.63', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1696', 'Julia Chavez', 'cjulia80@gmail.com', 'MBBS', '4.07', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1697', 'Maeda Ren', 'mren1@icloud.com', 'MBBS', '3.33', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1698', 'Matsui Akina', 'matsuiakina@mail.com', 'MBBS', '4.57', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1699', 'To Lai Yan', 'lyto1991@outlook.com', 'MBBS', '3.05', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1700', 'He Zhiyuan', 'hzhiyuan@icloud.com', 'MBBS', '3.64', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1701', 'Wada Eita', 'eitawada@mail.com', 'MBBS', '3.5', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1702', 'Cao Lan', 'lan6@hotmail.com', 'MBBS', '4.84', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1703', 'Norma Salazar', 'salazar807@outlook.com', 'MBBS', '3.53', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1704', 'Zou Xiaoming', 'zoxia@icloud.com', 'MBBS', '2.4', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1705', 'Takahashi Yuna', 'takahashiyuna10@outlook.com', 'MBBS', '3.04', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1706', 'Peng Jiehong', 'jiehong1@gmail.com', 'MBBS', '2.2', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1707', 'Tanaka Daisuke', 'tanakadaisu@gmail.com', 'MBBS', '3.68', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1708', 'Xiang Jiehong', 'xjiehong@outlook.com', 'MBBS', '3.41', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1709', 'Julie Guzman', 'guzmaj@outlook.com', 'MBBS', '3.72', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1710', 'Okamoto Hina', 'hinaokam1@hotmail.com', 'MBBS', '3.44', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1711', 'Ono Ayano', 'ayao@icloud.com', 'MBBS', '2.26', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1712', 'Wang Anqi', 'wananqi@hotmail.com', 'MBBS', '2.15', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1713', 'Steve Jimenez', 'jsteve10@gmail.com', 'MBBS', '2.99', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1714', 'Qiu Anqi', 'qa1965@gmail.com', 'MBBS', '3.03', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1715', 'Liang Jialun', 'ljialun@mail.com', 'MBBS', '4.67', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1716', 'Luo Zitao', 'zluo86@gmail.com', 'MBBS', '3.68', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1717', 'Tao Suk Yee', 'taosy807@gmail.com', 'MBBS', '2.34', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1718', 'Liang Ziyi', 'liangz@yahoo.com', 'MBBS', '2.86', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1719', 'Fujii Mitsuki', 'mitsukifuj@gmail.com', 'MBBS', '3.6', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1720', 'Mak Yun Fat', 'makyf@mail.com', 'MBBS', '4.02', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1721', 'Tan Jialun', 'tanjialun4@mail.com', 'MBBS', '3.16', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1722', 'Dai Xiuying', 'xiuyida@icloud.com', 'MBBS', '3.68', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1723', 'Chow Lik Sun', 'liksunc90@gmail.com', 'MBBS', '2.79', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1724', 'Yang Shihan', 'yangs@mail.com', 'MBBS', '2.93', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1725', 'Ng Sai Wing', 'swn6@gmail.com', 'MBBS', '4.79', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1726', 'Deng Jialun', 'jialund@gmail.com', 'MBBS', '4.59', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1727', 'Wong Tak Wah', 'takwahw@gmail.com', 'MBBS', '4.21', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1728', 'Dale Morris', 'morris1@icloud.com', 'MBBS', '4.58', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1729', 'Deng Lu', 'ludeng7@icloud.com', 'MBBS', '4.22', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1730', 'Jin Lan', 'jinlan7@icloud.com', 'MBBS', '3.07', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1731', 'Anne Hill', 'annh715@gmail.com', 'MBBS', '4.77', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1732', 'Lui Yun Fat', 'luiyf@outlook.com', 'MBBS', '4.42', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1733', 'Jeff Hicks', 'jeffhicks3@icloud.com', 'MBBS', '4.73', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1734', 'Hsuan Ling Ling', 'llh02@gmail.com', 'MBBS', '3.1', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1735', 'Randy Cox', 'randyco@gmail.com', 'MBBS', '4.25', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1736', 'Sugiyama Miu', 'sugim@gmail.com', 'MBBS', '2.89', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1737', 'Ono Ikki', 'ikkiono65@gmail.com', 'MBBS', '4.2', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1738', 'Wong Wai Man', 'wonwm@outlook.com', 'MBBS', '3.06', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1739', 'Gu Jialun', 'jialungu@yahoo.com', 'MBBS', '2.57', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1740', 'Cho Ka Fai', 'chokf@yahoo.com', 'MBBS', '4.75', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1741', 'Shen Xiaoming', 'shen11@outlook.com', 'MBBS', '4.84', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1742', 'Yokoyama Hina', 'hinyokoyama@hotmail.com', 'MBBS', '4.82', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1743', 'Jonathan Gomez', 'gomez20@icloud.com', 'MBBS', '2.64', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1744', 'Fan Sze Yu', 'syfa@outlook.com', 'MBBS', '2.76', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1745', 'Maria Sullivan', 'maria78@hotmail.com', 'MBBS', '2.99', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1746', 'Tang Shihan', 'shihatang@yahoo.com', 'MBBS', '2.99', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1747', 'Ng Ming', 'ngmin@mail.com', 'MBBS', '2.53', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1748', 'Maeda Misaki', 'maeda64@icloud.com', 'MBBS', '3.49', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1749', 'Joshua Freeman', 'freemjoshua4@gmail.com', 'MBBS', '4.89', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1750', 'Wong Chiu Wai', 'wongchiuwai@gmail.com', 'MBBS', '3.94', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1751', 'Tao Ho Yin', 'hytao@mail.com', 'MBBS', '4.15', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1752', 'Willie Hicks', 'hicks6@gmail.com', 'MBBS', '4.07', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1753', 'John Ward', 'wj212@icloud.com', 'MBBS', '4.77', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1754', 'Yeung Ka Keung', 'yeungkk@hotmail.com', 'MBBS', '2.95', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1755', 'Ellen Nichols', 'nellen@outlook.com', 'MBBS', '3.57', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1756', 'Yeow Ho Yin', 'yeowhoyin1@yahoo.com', 'MBBS', '3.15', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1757', 'Ito Momoka', 'itom304@outlook.com', 'MBBS', '4.53', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1758', 'Otsuka Yuto', 'oyut@outlook.com', 'MBBS', '2.19', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1759', 'Dale Gordon', 'dalegordon4@gmail.com', 'MBBS', '3.03', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1760', 'Dong Yunxi', 'doyunx@icloud.com', 'MBBS', '4.33', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1761', 'Tao Chung Yin', 'tcy08@gmail.com', 'MBBS', '4.26', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1762', 'Matsui Tsubasa', 'tsubamats@gmail.com', 'MBBS', '2.12', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1763', 'Nakamori Hana', 'nakhan@hotmail.com', 'MBBS', '2.6', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1764', 'Choi Lik Sun', 'chliksun75@hotmail.com', 'MBBS', '2.45', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1765', 'Koon Ming', 'mingkoo3@mail.com', 'MBBS', '3.97', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1766', 'Ye Lan', 'lye@gmail.com', 'MBBS', '3.77', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1767', 'Cui Lan', 'clan@mail.com', 'MBBS', '4.46', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1768', 'Xiang Jialun', 'jialxia@yahoo.com', 'MBBS', '3.81', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1769', 'Lee Wing Fat', 'lewf@outlook.com', 'MBBS', '4.77', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1770', 'Benjamin Foster', 'foben7@yahoo.com', 'MBBS', '4.01', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1771', 'Murakami Akina', 'murakamiakin@icloud.com', 'MBBS', '2.26', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1772', 'Aoki Mio', 'mioaoki1986@outlook.com', 'MBBS', '4.4', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1773', 'Chic Chun Yu', 'ccy@icloud.com', 'MBBS', '3.37', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1774', 'Xia Lan', 'xiala531@outlook.com', 'MBBS', '3.24', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1775', 'Wang Jiehong', 'wjieho9@mail.com', 'MBBS', '3.1', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1776', 'Lau Kar Yan', 'karyan1019@gmail.com', 'MBBS', '4.17', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1777', 'Tao Rui', 'rtao@outlook.com', 'MBBS', '2.8', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1778', 'Kam Hok Yau', 'kahy@mail.com', 'MBBS', '2.27', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1779', 'Xu Yuning', 'yxu@gmail.com', 'MBBS', '2.2', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1780', 'Dai Ho Yin', 'hoyind@icloud.com', 'MBBS', '4.54', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1781', 'Kam Wai Man', 'waiman516@gmail.com', 'MBBS', '3.92', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1782', 'Shimada Kaito', 'kaitoshimada@outlook.com', 'MBBS', '4.3', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1783', 'Lee Munoz', 'lee4@gmail.com', 'MBBS', '3.08', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1784', 'Okamoto Daisuke', 'okd@icloud.com', 'MBBS', '3.32', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1785', 'Guo Jiehong', 'gjiehong@hotmail.com', 'MBBS', '4.09', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1786', 'Maeda Eita', 'eima1118@icloud.com', 'MBBS', '3.5', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1787', 'Patricia Hughes', 'patriciahug@outlook.com', 'MBBS', '2.95', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1788', 'Ng Cho Yee', 'ncy@gmail.com', 'MBBS', '3.66', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1789', 'Gary Wagner', 'wagnerg@yahoo.com', 'MBBS', '4.71', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1790', 'Yuen Wing Fat', 'winy7@icloud.com', 'MBBS', '3.84', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1791', 'Lam Ka Ling', 'kalingl@gmail.com', 'MBBS', '3.23', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1792', 'Lo Ming', 'lom2@icloud.com', 'MBBS', '2.91', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1793', 'Joshua Rogers', 'joshuarogers2@outlook.com', 'MBBS', '3.48', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1794', 'Lee Ching Wan', 'cwlee1968@icloud.com', 'MBBS', '3.71', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1795', 'Mao Yunxi', 'yunxmao502@gmail.com', 'MBBS', '2.66', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1796', 'Man Wai Yee', 'mwy@outlook.com', 'MBBS', '4.01', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1797', 'Herbert Bryant', 'herbert2@icloud.com', 'MBBS', '2.37', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1798', 'Michelle Murphy', 'murphy86@gmail.com', 'MBBS', '3.66', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1799', 'Frances Cole', 'cofrances@gmail.com', 'MBBS', '3.69', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1800', 'Christina Mendoza', 'mchri@outlook.com', 'MBBS', '3.29', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1801', 'Ishii Tsubasa', 'itsubasa@icloud.com', 'MBBS', '4.11', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1802', 'Ishikawa Nanami', 'ishikna3@outlook.com', 'MBBS', '3.85', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1803', 'Shing Fu Shing', 'shinfs@gmail.com', 'MBBS', '2.25', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1804', 'Sakai Kasumi', 'ksak75@gmail.com', 'MBBS', '4.41', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1805', 'Peggy Gomez', 'pegomez85@gmail.com', 'MBBS', '4.19', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1806', 'Danielle Silva', 'silvadanie11@gmail.com', 'MBBS', '3.7', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1807', 'Gladys Harrison', 'glhar@outlook.com', 'MBBS', '3.79', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1808', 'Kwong Kwok Wing', 'kwkw40@hotmail.com', 'MBBS', '4.33', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1809', 'Jean Kim', 'jek@outlook.com', 'MBBS', '4.36', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1810', 'Timothy Payne', 'timopa@gmail.com', 'MBBS', '3.26', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1811', 'Ogawa Hina', 'ogawhina@yahoo.com', 'MBBS', '4.28', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1812', 'Tracy Ruiz', 'tracy1103@gmail.com', 'MBBS', '2.8', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1813', 'Nomura Yuna', 'ynomur224@icloud.com', 'MBBS', '4.09', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1814', 'Yamamoto Eita', 'eitayamamoto@hotmail.com', 'MBBS', '3.71', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1815', 'Nakagawa Hikari', 'nakagawahikari9@yahoo.com', 'MBBS', '3.36', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1816', 'Ando Kenta', 'ake@yahoo.com', 'MBBS', '2.62', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1817', 'Xiong Yunxi', 'xiongy@icloud.com', 'MBBS', '3.75', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1818', 'Chiang Sze Kwan', 'csz@outlook.com', 'MBBS', '4.83', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1819', 'Rose Martinez', 'rosemartinez@gmail.com', 'MBBS', '4.35', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1820', 'Richard Hernandez', 'richard4@outlook.com', 'MBBS', '4.08', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1821', 'Sakurai Yuito', 'yuitosakurai4@icloud.com', 'MBBS', '4', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1822', 'Fu Zhennan', 'fzhennan10@hotmail.com', 'MBBS', '3.53', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1823', 'Hsuan Fat', 'fath123@mail.com', 'MBBS', '2.37', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1824', 'Sano Kenta', 'sanokenta57@outlook.com', 'MBBS', '4.03', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1825', 'Gu Zhiyuan', 'zhiyuang@gmail.com', 'MBBS', '4.08', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1826', 'Xie Lan', 'laxie7@icloud.com', 'MBBS', '3.21', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1827', 'Tang Jiehong', 'tang74@icloud.com', 'MBBS', '3.93', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1828', 'Joel Kelly', 'kellyjoel@yahoo.com', 'MBBS', '4.58', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1829', 'Zhang Lan', 'lanz@icloud.com', 'MBBS', '4.47', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1830', 'Wong Fat', 'wong3@gmail.com', 'MBBS', '3.36', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1831', 'Hazel Black', 'blackhaz@gmail.com', 'MBBS', '3.66', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1832', 'Victoria Rivera', 'vri81@hotmail.com', 'MBBS', '2.99', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1833', 'Cheng Ling Ling', 'cll319@gmail.com', 'MBBS', '2.86', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1834', 'Juan Morgan', 'juan1972@yahoo.com', 'MBBS', '3.5', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1835', 'Fukuda Hina', 'hfuku@icloud.com', 'MBBS', '4.29', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1836', 'Kikuchi Yamato', 'kikucyama@yahoo.com', 'MBBS', '3.87', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1837', 'Yin Ming', 'mingyin@icloud.com', 'MBBS', '4.31', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1838', 'Ichikawa Nanami', 'ichiknana48@gmail.com', 'MBBS', '3.36', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1839', 'Yuen Wai Man', 'ywaiman@gmail.com', 'MBBS', '4.74', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1840', 'Lin Yuning', 'liyun727@icloud.com', 'MBBS', '2.36', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1841', 'Gong Xiuying', 'xg1991@icloud.com', 'MBBS', '3.18', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1842', 'Noguchi Itsuki', 'noguchi220@hotmail.com', 'MBBS', '2.61', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1843', 'Eddie Wagner', 'wedd@gmail.com', 'MBBS', '4.72', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1844', 'Charles Payne', 'paynecharles@gmail.com', 'MBBS', '2.2', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1845', 'Sit Yu Ling', 'yuling50@hotmail.com', 'MBBS', '2.54', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1846', 'Yau On Na', 'onyau4@yahoo.com', 'MBBS', '4.49', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1847', 'Jeffrey Jackson', 'jeffrjacks@icloud.com', 'MBBS', '4.11', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1848', 'Chin Wing Sze', 'cwingsze@gmail.com', 'MBBS', '3.91', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1849', 'Yu Xiaoming', 'xiayu@yahoo.com', 'MBBS', '3.71', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1850', 'Hsuan Tin Wing', 'tinwinghs1966@gmail.com', 'MBBS', '4.54', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1851', 'Nishimura Yuto', 'yuto705@yahoo.com', 'MBBS', '3.09', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1852', 'Jean Harris', 'jeanha2@gmail.com', 'MBBS', '4.59', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1853', 'Meng Chung Yin', 'mency@mail.com', 'MBBS', '4.62', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1854', 'Wang Xiaoming', 'wangxiaoming@icloud.com', 'MBBS', '2.81', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1855', 'Wei Jialun', 'wejialun@outlook.com', 'MBBS', '3.77', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1856', 'Kikuchi Ikki', 'ikki320@mail.com', 'MBBS', '2.45', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1857', 'Yung Hok Yau', 'hokyy10@hotmail.com', 'MBBS', '2.92', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1858', 'Tao Ting Fung', 'ttf@outlook.com', 'MBBS', '2.26', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1859', 'Ishikawa Rena', 'renaishik@gmail.com', 'MBBS', '3.57', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1860', 'Zhao Zhennan', 'zhzhennan@gmail.com', 'MBBS', '4.36', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1861', 'Cheng Yuning', 'chengyu1945@gmail.com', 'MBBS', '2.64', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1862', 'Dai Ling Ling', 'lld@gmail.com', 'MBBS', '4.83', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1863', 'Dawn Moreno', 'morenod@icloud.com', 'MBBS', '4.9', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1864', 'Lam Wing Fat', 'wingfatlam118@icloud.com', 'MBBS', '3.51', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1865', 'Takada Miu', 'tmiu905@icloud.com', 'MBBS', '2.18', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1866', 'Dai Wai Lam', 'dai829@mail.com', 'MBBS', '4.87', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1867', 'Ando Ayano', 'andoayano310@icloud.com', 'MBBS', '4.11', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1868', 'Leslie Collins', 'collins62@mail.com', 'MBBS', '4.14', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1869', 'John Miller', 'johnmill@gmail.com', 'MBBS', '2.42', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1870', 'Antonio Dunn', 'dunnantonio6@icloud.com', 'MBBS', '2.5', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1871', 'Lau Wing Sze', 'wingszelau@icloud.com', 'MBBS', '3.04', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1872', 'Lu Yunxi', 'yunxilu5@hotmail.com', 'MBBS', '2.35', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1873', 'Sarah Hughes', 'shughes@mail.com', 'MBBS', '3.16', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1874', 'Ishida Yuto', 'ishida3@gmail.com', 'MBBS', '2.73', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1875', 'Shimada Aoshi', 'shimadaaoshi@icloud.com', 'MBBS', '4.02', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1876', 'Fan Zhiyuan', 'zhiyuanfa82@outlook.com', 'MBBS', '3.86', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1877', 'Kikuchi Aoshi', 'akikuchi@yahoo.com', 'MBBS', '4.74', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1878', 'Lai Kwok Ming', 'kwokming4@icloud.com', 'MBBS', '4.87', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1879', 'Kwong Hok Yau', 'khy@mail.com', 'MBBS', '2.56', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1880', 'Diane Hayes', 'hayes3@gmail.com', 'MBBS', '3.29', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1881', 'Francisco Brown', 'francbrown4@hotmail.com', 'MBBS', '4.22', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1882', 'Meng Wing Fat', 'wfmen@gmail.com', 'MBBS', '3.04', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1883', 'Wei Xiuying', 'weixiuying@mail.com', 'MBBS', '2.71', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1884', 'Zeng Anqi', 'anqi1129@gmail.com', 'MBBS', '2.54', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1885', 'Ichikawa Daisuke', 'daisuke74@gmail.com', 'MBBS', '2.86', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1886', 'Hsuan Ka Man', 'kmh@gmail.com', 'MBBS', '2.49', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1887', 'Chang Shihan', 'shichan@mail.com', 'MBBS', '4.64', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1888', 'Rose Flores', 'rose1@outlook.com', 'MBBS', '3.97', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1889', 'Carolyn Butler', 'butlercarol@icloud.com', 'MBBS', '4.9', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1890', 'Xie Lu', 'xie7@icloud.com', 'MBBS', '2.4', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1891', 'Tse Wai Han', 'tsewh@gmail.com', 'MBBS', '2.91', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1892', 'Ng Kwok Yin', 'ngky@gmail.com', 'MBBS', '4.76', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1893', 'Judith Thompson', 'judithth@icloud.com', 'MBBS', '3.68', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1894', 'Jose Collins', 'collijo@gmail.com', 'MBBS', '3.77', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1895', 'Takada Hina', 'hina20@gmail.com', 'MBBS', '2.87', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1896', 'Tin Cho Yee', 'choyeeti@outlook.com', 'MBBS', '2.37', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1897', 'Keith Stone', 'stone1126@gmail.com', 'MBBS', '4.78', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1898', 'Arai Eita', 'eita2013@gmail.com', 'MBBS', '2.85', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1899', 'Sano Miu', 'samiu7@outlook.com', 'MBBS', '3.62', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1900', 'Hu Zhiyuan', 'huzhiyuan@outlook.com', 'MBBS', '3.23', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1901', 'Ma Tsz Hin', 'math45@gmail.com', 'MBBS', '3', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1902', 'Matsumoto Kenta', 'kenta1221@yahoo.com', 'MBBS', '4.29', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1903', 'Jeremy Hayes', 'jeremha@yahoo.com', 'MBBS', '2.59', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1904', 'Sarah Lopez', 'lopezsar@gmail.com', 'MBBS', '4.1', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1905', 'Ren Ziyi', 'renziyi2@mail.com', 'MBBS', '4.41', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1906', 'Zhou Jiehong', 'zhji@gmail.com', 'MBBS', '3.88', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1907', 'Gloria Aguilar', 'ag1979@icloud.com', 'MBBS', '4.87', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1908', 'Leung On Na', 'onleu930@outlook.com', 'MBBS', '2.5', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1909', 'Liao Xiaoming', 'liaoxi1980@mail.com', 'MBBS', '3.94', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1910', 'Wong Tsz Ching', 'wontszching48@gmail.com', 'MBBS', '3.31', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1911', 'Sit Lik Sun', 'sls2@hotmail.com', 'MBBS', '2.8', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1912', 'Nicole Schmidt', 'schmidtnic@outlook.com', 'MBBS', '2.96', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1913', 'Meng Ziyi', 'mengziy80@outlook.com', 'MBBS', '2.21', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1914', 'Sato Sakura', 'sakurasato7@icloud.com', 'MBBS', '3.72', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1915', 'Cui Lu', 'lc227@gmail.com', 'MBBS', '4.02', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1916', 'Jack Kim', 'jakim@icloud.com', 'MBBS', '4.89', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1917', 'Yokoyama Ryota', 'yryo@mail.com', 'MBBS', '3.72', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1918', 'Matsui Momoe', 'matsuimomoe@outlook.com', 'MBBS', '4.25', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1919', 'Kono Takuya', 'takuyako@outlook.com', 'MBBS', '3.61', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1920', 'Xu Jialun', 'jixu@gmail.com', 'MBBS', '2.4', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1921', 'Sun Jialun', 'jialunsun@icloud.com', 'MBBS', '2.92', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1922', 'Hsuan On Kay', 'onkayhsu5@icloud.com', 'MBBS', '4.84', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1923', 'Morita Miu', 'mormiu@gmail.com', 'MBBS', '3.39', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1924', 'Ma Yuning', 'yuninm913@gmail.com', 'MBBS', '2.44', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1925', 'Che Wai Lam', 'wailamc8@gmail.com', 'MBBS', '3.24', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1926', 'Tsang Chung Yin', 'cytsan@hotmail.com', 'MBBS', '3.27', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1927', 'Abe Daichi', 'daichi914@yahoo.com', 'MBBS', '4.41', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1928', 'Shi Anqi', 'ashi328@mail.com', 'MBBS', '2.66', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1929', 'Ronald Grant', 'ronald7@gmail.com', 'MBBS', '3.94', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1930', 'Maruyama Hikari', 'maruyhikari@mail.com', 'MBBS', '2.54', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1931', 'Hung Chi Yuen', 'hungchiy818@gmail.com', 'MBBS', '2.51', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1932', 'Roy Robinson', 'royrobinson512@icloud.com', 'MBBS', '4.01', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1933', 'Yin Ka Keung', 'ykk1978@outlook.com', 'MBBS', '4.43', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1934', 'Frank Turner', 'frant@gmail.com', 'MBBS', '4.23', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1935', 'Ichikawa Yuito', 'ichikawayuit2@outlook.com', 'MBBS', '3.89', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1936', 'Zou Lan', 'zoulan@hotmail.com', 'MBBS', '2.25', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1937', 'Siu Hok Yau', 'hokyaus@icloud.com', 'MBBS', '4.33', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1938', 'Kathryn Hughes', 'hugheskath9@hotmail.com', 'MBBS', '4.58', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1939', 'Tong Hok Yau', 'hokyau1031@icloud.com', 'MBBS', '4.73', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1940', 'Tse Suk Yee', 'sukyeetse3@mail.com', 'MBBS', '2.35', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1941', 'Theresa Rodriguez', 'thererod@gmail.com', 'MBBS', '4.16', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1942', 'Liang Zitao', 'lzi@outlook.com', 'MBBS', '3.36', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1943', 'Kinoshita Mai', 'kinoshitamai@gmail.com', 'MBBS', '4.8', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1944', 'Kathy Bailey', 'baileyk7@yahoo.com', 'MBBS', '3.14', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1945', 'Wada Sara', 'sarwada@icloud.com', 'MBBS', '2.42', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1946', 'Nakajima Ryota', 'nakajima221@hotmail.com', 'MBBS', '2.28', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1947', 'Zhong Zhiyuan', 'zhiyuanzho@icloud.com', 'MBBS', '2.49', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1948', 'Kwan Yu Ling', 'yuling6@yahoo.com', 'MBBS', '2.68', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1949', 'Peggy Rivera', 'rivpegg@gmail.com', 'MBBS', '2.84', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1950', 'Endo Yuito', 'endoyuito@hotmail.com', 'MBBS', '4.07', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1951', 'Saito Ren', 'rens@gmail.com', 'MBBS', '4.46', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1952', 'Kimura Airi', 'kimurairi1005@icloud.com', 'MBBS', '2.52', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1953', 'Okada Takuya', 'takuya7@yahoo.com', 'MBBS', '3.24', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1954', 'Yuen Sau Man', 'yuensauman@gmail.com', 'MBBS', '2.83', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1955', 'Kong Zitao', 'zitaokon9@gmail.com', 'MBBS', '2.67', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1956', 'Xiang Lu', 'xianglu@yahoo.com', 'MBBS', '4.86', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1957', 'Fujiwara Tsubasa', 'tsubasafujiwara49@mail.com', 'MBBS', '2.69', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1958', 'Hao Yuning', 'haoy@gmail.com', 'MBBS', '4.74', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1959', 'Lau Kwok Wing', 'lkwokwing@yahoo.com', 'MBBS', '2.49', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1960', 'Dawn Anderson', 'anderda@gmail.com', 'MBBS', '4.14', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1961', 'Duan Zhiyuan', 'duan722@mail.com', 'MBBS', '2.33', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1962', 'Kono Kaito', 'kaitokon@gmail.com', 'MBBS', '3.83', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1963', 'Tang Xiaoming', 'tangxiaoming@outlook.com', 'MBBS', '4', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1964', 'Donna Moore', 'moordonna1@yahoo.com', 'MBBS', '4.22', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1965', 'Murata Ren', 'mren@yahoo.com', 'MBBS', '4.84', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1966', 'Joel Foster', 'joelfos101@outlook.com', 'MBBS', '4', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1967', 'Kikuchi Momoka', 'momokikuchi00@gmail.com', 'MBBS', '3.63', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1968', 'Leonard Wright', 'wrightle@icloud.com', 'MBBS', '2.5', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1969', 'Tsang Hui Mei', 'hmtsang116@gmail.com', 'MBBS', '4.68', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1970', 'April Bailey', 'aprib@gmail.com', 'MBBS', '3.01', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1971', 'Otsuka Momoka', 'mo5@gmail.com', 'MBBS', '3.39', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1972', 'Juan Schmidt', 'juaschmidt10@yahoo.com', 'MBBS', '2.44', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1973', 'Chow Ka Ling', 'klc10@mail.com', 'MBBS', '3.02', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1974', 'Yin Tak Wah', 'yintw@yahoo.com', 'MBBS', '3.94', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1975', 'Ruth Hall', 'harut@gmail.com', 'MBBS', '2.81', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1976', 'Sato Tsubasa', 'sts6@gmail.com', 'MBBS', '3.84', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1977', 'Ryan Watson', 'watsonryan@outlook.com', 'MBBS', '2.61', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1978', 'Cynthia Gibson', 'cynthia205@outlook.com', 'MBBS', '2.43', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1979', 'Tony Thomas', 'thomatony@hotmail.com', 'MBBS', '4.42', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1980', 'Yamada Daichi', 'daichyamad@icloud.com', 'MBBS', '2.47', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1981', 'Cui Jialun', 'jialun4@mail.com', 'MBBS', '2.82', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1982', 'Kinoshita Nanami', 'knanam6@outlook.com', 'MBBS', '4.09', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1983', 'Vincent Mills', 'mills7@mail.com', 'MBBS', '4.76', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1984', 'Yoshida Mio', 'miyoshida@icloud.com', 'MBBS', '4.02', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1985', 'Miu Chung Yin', 'chungyin78@gmail.com', 'MBBS', '2.98', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1986', 'Randall Rose', 'randrose710@icloud.com', 'MBBS', '2.36', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1987', 'Lam Chi Ming', 'chimingl@outlook.com', 'MBBS', '3.82', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1988', 'Shirley Tucker', 'shirleyt301@gmail.com', 'MBBS', '2.63', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1989', 'Qian Jiehong', 'qianji@yahoo.com', 'MBBS', '4.25', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1990', 'Kwong Ching Wan', 'cwk6@gmail.com', 'MBBS', '3', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1991', 'Takeda Itsuki', 'takeda77@yahoo.com', 'MBBS', '2.28', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1992', 'Zou Zitao', 'zou5@mail.com', 'MBBS', '3.9', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1993', 'Che Kwok Kuen', 'kwokkuench828@outlook.com', 'MBBS', '3.59', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1994', 'Jiang Lan', 'jiang807@gmail.com', 'MBBS', '3.01', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1995', 'Lok Yun Fat', 'lok10@outlook.com', 'MBBS', '3.91', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1996', 'Ng Yu Ling', 'ngyl@gmail.com', 'MBBS', '3.95', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1997', 'Bradley Munoz', 'mbradley@outlook.com', 'MBBS', '3.63', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1998', 'Dennis Williams', 'dwill6@icloud.com', 'MBBS', '4.85', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('1999', 'Ruby Wood', 'woodruby@outlook.com', 'MBBS', '2.5', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2000', 'Jeffery Lee', 'leejeffe@icloud.com', 'MBBS', '3.27', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2001', 'Juanita Herrera', 'heju55@icloud.com', 'MBBS', '4.06', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2002', 'Yuen Ming', 'yuenming@gmail.com', 'MBBS', '2.91', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2003', 'Ueno Sakura', 'ues2@yahoo.com', 'MBBS', '2.31', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2004', 'Zhao Shihan', 'shihanzha1978@gmail.com', 'MBBS', '2.22', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2005', 'Wong Wai San', 'wswo13@outlook.com', 'MBBS', '4.6', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2006', 'Zou Shihan', 'zos@hotmail.com', 'MBBS', '2.39', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2007', 'Dong Ziyi', 'ziyidong7@outlook.com', 'MBBS', '4.32', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2008', 'Ng Yun Fat', 'yfng3@hotmail.com', 'MBBS', '2.94', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2009', 'Theodore Hawkins', 'theohawkins1224@gmail.com', 'MBBS', '3.44', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2010', 'Nomura Tsubasa', 'nomurats@icloud.com', 'MBBS', '3.75', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2011', 'Lam Hok Yau', 'hyla90@mail.com', 'MBBS', '4.54', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2012', 'Hao Jiehong', 'jiehoha@gmail.com', 'MBBS', '2.59', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2013', 'Arai Miu', 'miuarai@icloud.com', 'MBBS', '4.57', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2014', 'Yuan Lan', 'yuanla@gmail.com', 'MBBS', '3.47', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2015', 'Nakamori Miu', 'namiu@gmail.com', 'MBBS', '2.13', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2016', 'Duan Zitao', 'duanzitao2@gmail.com', 'MBBS', '2.2', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2017', 'Gao Lan', 'galan@icloud.com', 'MBBS', '4.81', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2018', 'Tracy Thomas', 'ttracy@yahoo.com', 'MBBS', '2.22', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2019', 'Hayashi Hina', 'hayashihin1011@gmail.com', 'MBBS', '3.45', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2020', 'Robin Russell', 'rorussell@outlook.com', 'MBBS', '3.53', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2021', 'Li Xiuying', 'xiuying73@yahoo.com', 'MBBS', '3.81', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2022', 'Andrea Salazar', 'andrea10@icloud.com', 'MBBS', '3.33', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2023', 'Lisa Watson', 'watsonlisa707@yahoo.com', 'MBBS', '3.48', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2024', 'Siu Wai Man', 'waiman1978@outlook.com', 'MBBS', '4.28', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2025', 'Cho Ting Fung', 'tingfung1023@icloud.com', 'MBBS', '4.82', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2026', 'Josephine Griffin', 'griffinj4@gmail.com', 'MBBS', '3.27', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2027', 'Takagi Mio', 'miota61@mail.com', 'MBBS', '3.37', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2028', 'Kobayashi Yuito', 'yk85@gmail.com', 'MBBS', '2.56', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2029', 'Ti Wing Fat', 'wft1031@yahoo.com', 'MBBS', '4', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2030', 'Zhu Lu', 'lu116@gmail.com', 'MBBS', '3.58', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2031', 'Kam Chung Yin', 'chungyin8@gmail.com', 'MBBS', '2.67', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2032', 'Louis James', 'lojames9@icloud.com', 'MBBS', '2.67', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2033', 'Gerald Morales', 'morales411@gmail.com', 'MBBS', '3.45', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2034', 'Iwasaki Kasumi', 'iwasakasumi12@yahoo.com', 'MBBS', '4.57', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2035', 'To Wing Kuen', 'wingkuen6@gmail.com', 'MBBS', '3.52', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2036', 'Siu Ming', 'sium@gmail.com', 'MBBS', '2.36', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2037', 'Hara Ayato', 'haraayat@icloud.com', 'MBBS', '2.89', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2038', 'Pan Xiaoming', 'xiaoming711@gmail.com', 'MBBS', '3.78', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2039', 'Sylvia Woods', 'sylviawoods@yahoo.com', 'MBBS', '4.77', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2040', 'Saito Riku', 'saito5@gmail.com', 'MBBS', '3.91', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2041', 'Fan Sze Kwan', 'fsk@hotmail.com', 'MBBS', '3.04', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2042', 'Wong Tin Wing', 'wtinwing@gmail.com', 'MBBS', '4.19', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2043', 'Zhong Anqi', 'anqizh47@hotmail.com', 'MBBS', '4.15', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2044', 'Hasegawa Seiko', 'seikoh@gmail.com', 'MBBS', '2.56', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2045', 'Loui Wai Man', 'loui201@yahoo.com', 'MBBS', '3.74', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2046', 'Kathleen Martinez', 'martinezkathleen4@yahoo.com', 'MBBS', '4.22', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2047', 'Tamura Kenta', 'tamura80@mail.com', 'MBBS', '2.49', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2048', 'Carrie White', 'carriwhite71@mail.com', 'MBBS', '2.62', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2049', 'Yeow Ka Ling', 'yeowkaling@yahoo.com', 'MBBS', '2.95', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2050', 'Ma Jiehong', 'jiehongma1@outlook.com', 'MBBS', '4.23', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2051', 'Andrea Bennett', 'bennetta@gmail.com', 'MBBS', '4.12', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2052', 'Hui Ka Ling', 'huikaling2@icloud.com', 'MBBS', '4.01', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2053', 'Ma Wing Fat', 'mwingfat@icloud.com', 'MBBS', '2.87', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2054', 'Ronald Lee', 'leer@icloud.com', 'MBBS', '2.34', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2055', 'Russell Vargas', 'vargas1023@outlook.com', 'MBBS', '4.28', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2056', 'Ueda Kaito', 'ueda1962@gmail.com', 'MBBS', '3.81', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2057', 'Micheal Cruz', 'crmicheal@icloud.com', 'MBBS', '3.06', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2058', 'Su Shihan', 'ssu@gmail.com', 'MBBS', '2.24', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2059', 'Yamamoto Mio', 'mioyamamoto@gmail.com', 'MBBS', '3.72', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2060', 'Fujiwara Mio', 'fujiwaramio427@yahoo.com', 'MBBS', '2.97', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2061', 'Lai Yun Fat', 'lai229@gmail.com', 'MBBS', '3.12', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2062', 'Yip Ming', 'miyip6@yahoo.com', 'MBBS', '3.58', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2063', 'Long Zhennan', 'zhennanlong@hotmail.com', 'MBBS', '2.53', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2064', 'Nakano Rin', 'nrin8@icloud.com', 'MBBS', '2.38', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2065', 'Chen Jialun', 'jialunc@gmail.com', 'MBBS', '3.47', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2066', 'Miu Tak Wah', 'miutw3@mail.com', 'MBBS', '3.97', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2067', 'Terry Patel', 'terryp@mail.com', 'MBBS', '3.18', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2068', 'Yuen Ho Yin', 'yuenhy@yahoo.com', 'MBBS', '2.43', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2069', 'Qian Lu', 'qilu@gmail.com', 'MBBS', '2.26', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2070', 'Mao Zhennan', 'zhemao@gmail.com', 'MBBS', '3.89', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2071', 'Mo Wing Suen', 'winmo@icloud.com', 'MBBS', '3.14', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2072', 'Xia Rui', 'xirui@gmail.com', 'MBBS', '3.37', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2073', 'Xiang Yunxi', 'yunxixiang@outlook.com', 'MBBS', '2.58', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2074', 'Xiong Lan', 'xionglan2018@icloud.com', 'MBBS', '4.12', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2075', 'Miyazaki Mai', 'miyamai2013@gmail.com', 'MBBS', '4.84', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2076', 'Cheung Lai Yan', 'laiyan813@mail.com', 'MBBS', '4.02', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2077', 'Rhonda Thomas', 'thomas613@icloud.com', 'MBBS', '3.05', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2078', 'Lau Sai Wing', 'saiwinglau1998@gmail.com', 'MBBS', '2.83', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2079', 'Maeda Itsuki', 'maitsuki@icloud.com', 'MBBS', '2.5', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2080', 'Jimmy Allen', 'ja10@hotmail.com', 'MBBS', '4.22', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2081', 'Li Anqi', 'anqli3@gmail.com', 'MBBS', '2.73', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2082', 'Amy Gibson', 'amygibson@outlook.com', 'MBBS', '3.84', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2083', 'So Wing Fat', 'sowingfat@hotmail.com', 'MBBS', '4.31', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2084', 'Crystal Meyer', 'crystal06@gmail.com', 'MBBS', '2.65', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2085', 'Yuen Hiu Tung', 'hiutung9@gmail.com', 'MBBS', '2.25', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2086', 'Phyllis Brown', 'phyllisbro1224@outlook.com', 'MBBS', '3.26', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2087', 'Ueda Yota', 'yueda@gmail.com', 'MBBS', '2.42', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2088', 'Jesse Vargas', 'jesvargas@hotmail.com', 'MBBS', '3.38', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2089', 'Chang Anqi', 'achang@gmail.com', 'MBBS', '2.9', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2090', 'Yoshida Kazuma', 'ykazum@gmail.com', 'MBBS', '2.69', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2091', 'Kam Kwok Yin', 'kwokyinkam@gmail.com', 'MBBS', '3.14', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2092', 'Stephen Gutierrez', 'stephengutie@gmail.com', 'MBBS', '2.93', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2093', 'Wong Chi Yuen', 'cyw6@gmail.com', 'MBBS', '3.37', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2094', 'Hashimoto Aoi', 'hashimotoaoi@outlook.com', 'MBBS', '3.62', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2095', 'Lin Xiuying', 'xiuylin925@gmail.com', 'MBBS', '2.14', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2096', 'Mok Tak Wah', 'mtakwah@gmail.com', 'MBBS', '2.78', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2097', 'Cao Yunxi', 'cy7@icloud.com', 'MBBS', '2.55', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2098', 'Sara Bryant', 'bsara@icloud.com', 'MBBS', '4.22', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2099', 'Yoshida Mai', 'yoshida203@hotmail.com', 'MBBS', '2.38', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2100', 'Lu Zhiyuan', 'zhiyuanlu@hotmail.com', 'MBBS', '2.59', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2101', 'Yin Xiaoming', 'yinx@gmail.com', 'MBBS', '2.31', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2102', 'Long Lu', 'llong@outlook.com', 'MBBS', '2.52', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2103', 'Edna Coleman', 'coleme@outlook.com', 'MBBS', '4.6', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2104', 'Morita Sara', 'sara1991@outlook.com', 'MBBS', '3.27', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2105', 'Lu Lan', 'lulan@icloud.com', 'MBBS', '3.79', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2106', 'Christina Romero', 'romerochri@gmail.com', 'MBBS', '2.56', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2107', 'Yeung Hok Yau', 'hokyauyeung@gmail.com', 'MBBS', '2.54', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2108', 'Sasaki Takuya', 'sasakitak@icloud.com', 'MBBS', '4.53', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2109', 'Shen Shihan', 'shihanshen85@icloud.com', 'MBBS', '3.97', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2110', 'Yu Shihan', 'yushih1@yahoo.com', 'MBBS', '4.9', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2111', 'Lui Ka Ling', 'kaling63@hotmail.com', 'MBBS', '4.23', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2112', 'Connie Wright', 'wright505@gmail.com', 'MBBS', '4.37', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2113', 'Gloria Kim', 'gloria70@mail.com', 'MBBS', '4.07', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2114', 'Ikeda Takuya', 'ikeda52@yahoo.com', 'MBBS', '3.99', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2115', 'Hirano Ren', 'hirano41@hotmail.com', 'MBBS', '2.32', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2116', 'Arthur Griffin', 'arthurgriffin1@hotmail.com', 'MBBS', '4.68', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2117', 'Jane Stone', 'stonej6@outlook.com', 'MBBS', '3.43', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2118', 'Takeda Eita', 'tae430@yahoo.com', 'MBBS', '3.31', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2119', 'Nakamura Daichi', 'ndai704@outlook.com', 'MBBS', '4.52', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2120', 'Fu Siu Wai', 'sif3@icloud.com', 'MBBS', '3.66', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2121', 'Lok Sze Yu', 'lok414@hotmail.com', 'MBBS', '4.85', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2122', 'Steve Webb', 'stevew@outlook.com', 'MBBS', '2.98', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2123', 'Zhou Rui', 'ruizh8@yahoo.com', 'MBBS', '4.56', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2124', 'Gregory Ward', 'wardg@gmail.com', 'MBBS', '4.55', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2125', 'Carmen Marshall', 'carmen4@gmail.com', 'MBBS', '2.85', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2126', 'Feng Yuning', 'fengyunin@gmail.com', 'MBBS', '3.68', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2127', 'Yuen Siu Wai', 'swyue113@outlook.com', 'MBBS', '3.51', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2128', 'Nakamori Momoka', 'momokanakamori@icloud.com', 'MBBS', '3.1', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2129', 'Chen Zitao', 'zitch722@icloud.com', 'MBBS', '3.03', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2130', 'Ono Mitsuki', 'mitsukio609@gmail.com', 'MBBS', '3.96', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2131', 'Siu Ting Fung', 'siu204@outlook.com', 'MBBS', '3.29', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2132', 'Tong Sze Yu', 'syt7@outlook.com', 'MBBS', '3.27', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2133', 'Goto Rena', 'gore5@icloud.com', 'MBBS', '2.27', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2134', 'Lu Xiaoming', 'luxiaoming@icloud.com', 'MBBS', '4.74', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2135', 'Feng Lu', 'lufen@gmail.com', 'MBBS', '2.22', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2136', 'Raymond Aguilar', 'ara@icloud.com', 'MBBS', '4.64', '12');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2137', 'Carmen Gray', 'carmengray@mail.com', 'MBBS', '3.32', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2138', 'Sakurai Hina', 'hina5@yahoo.com', 'MBBS', '4.28', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2139', 'Siu Ka Man', 'kaman10@mail.com', 'MBBS', '3.62', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2140', 'Bruce Boyd', 'bruceb@outlook.com', 'MBBS', '2.92', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2141', 'Michael Nichols', 'mnic@icloud.com', 'MBBS', '3.7', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2142', 'Norma Kelley', 'kelley416@hotmail.com', 'MBBS', '3.38', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2143', 'Grace Kelly', 'kegrace50@icloud.com', 'MBBS', '4.75', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2144', 'Uchida Kazuma', 'kazumauch93@mail.com', 'MBBS', '2.28', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2145', 'Lee Fu Shing', 'fushingl@outlook.com', 'MBBS', '2.4', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2146', 'Kikuchi Miu', 'kikuchimiu@mail.com', 'MBBS', '4.51', '6');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2147', 'Shao Jiehong', 'jisha@hotmail.com', 'MBBS', '3.63', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2148', 'Maruyama Kasumi', 'kmaruy@gmail.com', 'MBBS', '3.3', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2149', 'Deborah Silva', 'silvadeborah@gmail.com', 'MBBS', '2.32', '16');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2150', 'Fong Chi Yuen', 'fonchiyuen4@gmail.com', 'MBBS', '4.8', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2151', 'Ding Xiaoming', 'dixiaoming8@gmail.com', 'MBBS', '4.29', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2152', 'Hasegawa Mio', 'mih6@outlook.com', 'MBBS', '2.44', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2153', 'Christopher Schmidt', 'chsch1208@yahoo.com', 'MBBS', '2.95', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2154', 'Han Yuning', 'yuningha1986@gmail.com', 'MBBS', '4.76', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2155', 'Alice Phillips', 'alice4@gmail.com', 'MBBS', '3.24', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2156', 'Donald Salazar', 'sdona@outlook.com', 'MBBS', '2.38', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2157', 'Kwong Sau Man', 'kwong3@outlook.com', 'MBBS', '2.4', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2158', 'Wan Sze Kwan', 'szekwan05@mail.com', 'MBBS', '3.38', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2159', 'Ren Lu', 'lre@gmail.com', 'MBBS', '2.84', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2160', 'Tse Ching Wan', 'tsechingwan2004@icloud.com', 'MBBS', '4.54', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2161', 'Tsui Tin Wing', 'tstw@gmail.com', 'MBBS', '3.96', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2162', 'Edna Hunter', 'edna120@gmail.com', 'MBBS', '2.35', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2163', 'Fang Yuning', 'yuningfang@gmail.com', 'MBBS', '2.69', '3');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2164', 'Mo Yunxi', 'moyunxi1@yahoo.com', 'MBBS', '4.25', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2165', 'Yoshida Tsubasa', 'yoshidatsubasa@outlook.com', 'MBBS', '4.76', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2166', 'Tam Kwok Ming', 'kwokming524@gmail.com', 'MBBS', '2.71', '8');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2167', 'Sato Aoi', 'satoaoi@hotmail.com', 'MBBS', '2.14', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2168', 'Feng Lan', 'lanfeng@icloud.com', 'MBBS', '4.47', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2169', 'Chin Kwok Kuen', 'ckk@hotmail.com', 'MBBS', '4.63', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2170', 'Fukuda Itsuki', 'fukudaitsu78@icloud.com', 'MBBS', '3.56', '15');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2171', 'Victoria Gardner', 'gardnvic603@outlook.com', 'MBBS', '3.13', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2172', 'Lau Tak Wah', 'takwahlau@mail.com', 'MBBS', '2.74', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2173', 'Gong Zhennan', 'gozhennan@mail.com', 'MBBS', '4.51', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2174', 'Chu Wing Sze', 'chws1965@mail.com', 'MBBS', '2.68', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2175', 'Shimizu Takuya', 'shtakuya@icloud.com', 'MBBS', '3.34', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2176', 'Deng Jiehong', 'dengjiehong@icloud.com', 'MBBS', '3.39', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2177', 'Ho Wing Suen', 'hows@gmail.com', 'MBBS', '3.53', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2178', 'Kelly Smith', 'kellysmith@outlook.com', 'MBBS', '4.3', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2179', 'Fong Tin Lok', 'tinlokf5@icloud.com', 'MBBS', '3.65', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2180', 'Sarah Dunn', 'sarahdunn@mail.com', 'MBBS', '3.25', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2181', 'Takagi Itsuki', 'it07@hotmail.com', 'MBBS', '3.7', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2182', 'Arai Mio', 'marai2@outlook.com', 'MBBS', '4.88', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2183', 'Abe Yuto', 'abey2@mail.com', 'MBBS', '4.7', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2184', 'Johnny Ross', 'johross@gmail.com', 'MBBS', '3.86', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2185', 'Ruth Morris', 'rmorri@gmail.com', 'MBBS', '4.64', '1');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2186', 'Shimada Miu', 'shimadamiu88@gmail.com', 'MBBS', '4.19', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2187', 'Ashley Murphy', 'murphyashley@gmail.com', 'MBBS', '2.68', '5');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2188', 'Ye Zitao', 'yezitao@icloud.com', 'MBBS', '4.51', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2189', 'Eric Ross', 'reric@yahoo.com', 'MBBS', '3.77', '9');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2190', 'Nakajima Mai', 'nama@outlook.com', 'MBBS', '3.79', '11');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2191', 'Harada Daisuke', 'daisuke5@yahoo.com', 'MBBS', '2.55', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2192', 'Miyazaki Ikki', 'ikm@gmail.com', 'MBBS', '4.4', '13');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2193', 'Alexander Torres', 'torres51@gmail.com', 'MBBS', '2.41', '7');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2194', 'Kwan Chung Yin', 'chungyin10@icloud.com', 'MBBS', '4.87', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2195', 'Arthur Bailey', 'arthur4@icloud.com', 'MBBS', '4.17', '17');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2196', 'Norman Gibson', 'normgibson@gmail.com', 'MBBS', '4.11', '10');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2198', 'Yamada Hazuki', 'hya@icloud.com', 'MBBS', '4.72', '4');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2200', 'Sit Chun Yu', 'sicy@icloud.com', 'FRCS', '3.7', '14');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2201', 'MD. RAIHAN SOBHAN', 'mdraihansobhan34@gmail.com', 'FCPS', '4.79', '2');
INSERT INTO "C##TDC"."DOCTORS" VALUES ('2205', 'Abu Taleb', 'talebgg@yahoo.com', 'MBBS', '5', '1');

-- ----------------------------
-- Table structure for HOSPITALS
-- ----------------------------
DROP TABLE "C##TDC"."HOSPITALS";
CREATE TABLE "C##TDC"."HOSPITALS" (
  "HOSPITAL_ID" NUMBER VISIBLE NOT NULL,
  "HOSPITAL_NAME" VARCHAR2(255 BYTE) VISIBLE NOT NULL,
  "LOCATION_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of HOSPITALS
-- ----------------------------
INSERT INTO "C##TDC"."HOSPITALS" VALUES ('1', 'DHAKA MEDICAL COLLETGE', '1');
INSERT INTO "C##TDC"."HOSPITALS" VALUES ('2', 'MAG OSMANI MEDICAL COLLEGE', '7');
INSERT INTO "C##TDC"."HOSPITALS" VALUES ('3', 'CHATTAGRAM MEDICAL COLLEGE', '2');
INSERT INTO "C##TDC"."HOSPITALS" VALUES ('5', 'SIR SALIMULLAH MEDICAL COLLEGE', '1');
INSERT INTO "C##TDC"."HOSPITALS" VALUES ('4', 'SHAHEED SUHRAWARDY MEDICAL COLLEGE', '1');
INSERT INTO "C##TDC"."HOSPITALS" VALUES ('6', 'MUGDA MEDICAL COLLEGE', '1');
INSERT INTO "C##TDC"."HOSPITALS" VALUES ('7', 'ABDUL MALEK UKIL MEDICAL COLLEGE', '11');
INSERT INTO "C##TDC"."HOSPITALS" VALUES ('8', 'CHANDPUR MEDICAL COLLEGE', '12');

-- ----------------------------
-- Table structure for LOCATIONS
-- ----------------------------
DROP TABLE "C##TDC"."LOCATIONS";
CREATE TABLE "C##TDC"."LOCATIONS" (
  "LOCATION_ID" NUMBER VISIBLE NOT NULL,
  "CITY" VARCHAR2(255 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of LOCATIONS
-- ----------------------------
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('11', 'NOAKHALI');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('12', 'CHANDPUR');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('14', 'BANDARBAN');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('1', 'DHAKA');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('2', 'CHATTAGRAM');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('3', 'KHULNA');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('15', 'MANIKGANJ');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('16', 'GAZIPUR');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('4', 'FENI');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('5', 'RAJSHAHI');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('6', 'MYMENSINGH');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('7', 'SYLHET');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('8', 'BARISHAL');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('9', 'RANGPUR');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('10', 'CUMILLA');
INSERT INTO "C##TDC"."LOCATIONS" VALUES ('13', 'FARIDPUR');

-- ----------------------------
-- Table structure for MEDICINES
-- ----------------------------
DROP TABLE "C##TDC"."MEDICINES";
CREATE TABLE "C##TDC"."MEDICINES" (
  "MEDICINE_ID" NUMBER(10,0) VISIBLE NOT NULL,
  "MEDICINE_NAME" VARCHAR2(255 BYTE) VISIBLE,
  "COMPANY_NAME" VARCHAR2(255 BYTE) VISIBLE,
  "MEDICINE_TYPE" VARCHAR2(255 BYTE) VISIBLE,
  "MEDICINE_COST" NUMBER(10,0) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MEDICINES
-- ----------------------------
INSERT INTO "C##TDC"."MEDICINES" VALUES ('1', 'RANIDINE', 'ACME', 'TABLET', '50');
INSERT INTO "C##TDC"."MEDICINES" VALUES ('2', 'VOLIGEL', 'BEXIMCO', 'OINTMENT', '97');
INSERT INTO "C##TDC"."MEDICINES" VALUES ('3', 'NAPA', 'BEXIMCO', 'TABLET', '10');
INSERT INTO "C##TDC"."MEDICINES" VALUES ('4', 'NAPA', 'BEXIMCO', 'SYRUP', '30');
INSERT INTO "C##TDC"."MEDICINES" VALUES ('5', 'ACIFIX', 'OPSONIN', 'TABLET', '80');
INSERT INTO "C##TDC"."MEDICINES" VALUES ('6', 'CARDOPRIL', 'BEXIMCO', 'TABLET', '70');
INSERT INTO "C##TDC"."MEDICINES" VALUES ('7', 'RANITID', 'OPSONIN', 'TABLET', '70');

-- ----------------------------
-- Table structure for MM_DISEASES_FOUND_IN_PRESCRIPTIONS
-- ----------------------------
DROP TABLE "C##TDC"."MM_DISEASES_FOUND_IN_PRESCRIPTIONS";
CREATE TABLE "C##TDC"."MM_DISEASES_FOUND_IN_PRESCRIPTIONS" (
  "PRESCRIPTION_ID" NUMBER VISIBLE NOT NULL,
  "DISEASE_ID" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MM_DISEASES_FOUND_IN_PRESCRIPTIONS
-- ----------------------------
INSERT INTO "C##TDC"."MM_DISEASES_FOUND_IN_PRESCRIPTIONS" VALUES ('1', '3');
INSERT INTO "C##TDC"."MM_DISEASES_FOUND_IN_PRESCRIPTIONS" VALUES ('2', '4');

-- ----------------------------
-- Table structure for MM_MDCN_IN_PRS
-- ----------------------------
DROP TABLE "C##TDC"."MM_MDCN_IN_PRS";
CREATE TABLE "C##TDC"."MM_MDCN_IN_PRS" (
  "PRESCRIPTION_ID" NUMBER VISIBLE NOT NULL,
  "MEDICINE_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MM_MDCN_IN_PRS
-- ----------------------------
INSERT INTO "C##TDC"."MM_MDCN_IN_PRS" VALUES ('2', '3');

-- ----------------------------
-- Table structure for MM_PRS_INCLUDES_PTH
-- ----------------------------
DROP TABLE "C##TDC"."MM_PRS_INCLUDES_PTH";
CREATE TABLE "C##TDC"."MM_PRS_INCLUDES_PTH" (
  "PRESCRIPTION_ID" NUMBER VISIBLE NOT NULL,
  "TEST_ID" NUMBER VISIBLE NOT NULL,
  "TEST_RESULT" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MM_PRS_INCLUDES_PTH
-- ----------------------------
INSERT INTO "C##TDC"."MM_PRS_INCLUDES_PTH" VALUES ('2', '8', NULL);
INSERT INTO "C##TDC"."MM_PRS_INCLUDES_PTH" VALUES ('1', '5', NULL);

-- ----------------------------
-- Table structure for PATHOLOGY
-- ----------------------------
DROP TABLE "C##TDC"."PATHOLOGY";
CREATE TABLE "C##TDC"."PATHOLOGY" (
  "TEST_ID" NUMBER(10,0) VISIBLE NOT NULL,
  "TEST_NAME" VARCHAR2(255 BYTE) VISIBLE,
  "TEST_COST" NUMBER(10,0) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PATHOLOGY
-- ----------------------------
INSERT INTO "C##TDC"."PATHOLOGY" VALUES ('1', 'TC, DC, HB%, ESR', '350');
INSERT INTO "C##TDC"."PATHOLOGY" VALUES ('2', ' TC DC', '180');
INSERT INTO "C##TDC"."PATHOLOGY" VALUES ('3', ' Platelet', '160');
INSERT INTO "C##TDC"."PATHOLOGY" VALUES ('4', ' LDH', '1100');
INSERT INTO "C##TDC"."PATHOLOGY" VALUES ('5', 'RBC', '180');
INSERT INTO "C##TDC"."PATHOLOGY" VALUES ('6', 'WBC', '180');
INSERT INTO "C##TDC"."PATHOLOGY" VALUES ('7', 'LIPID PROFILE', '1100');
INSERT INTO "C##TDC"."PATHOLOGY" VALUES ('8', 'TSH', '750');
INSERT INTO "C##TDC"."PATHOLOGY" VALUES ('9', 'COVID19', '1000');

-- ----------------------------
-- Table structure for PATIENTS
-- ----------------------------
DROP TABLE "C##TDC"."PATIENTS";
CREATE TABLE "C##TDC"."PATIENTS" (
  "USER_ID" NUMBER(10,0) VISIBLE NOT NULL,
  "PATIENT_NAME" VARCHAR2(255 BYTE) VISIBLE,
  "DATE_OF_BIRTH" VARCHAR2(500 BYTE) VISIBLE,
  "PHONE_NUMBER" VARCHAR2(15 BYTE) VISIBLE,
  "GENDER" VARCHAR2(255 BYTE) VISIBLE,
  "LOCATION" VARCHAR2(255 BYTE) VISIBLE,
  "EMAIL" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PATIENTS
-- ----------------------------
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000000', 'Imai Akina', '1940-02-01', '1967401139', 'F', 'DHAKA', 'akina528@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000001', 'Lok Ting Fung', '2018-12-27', '1761689896', 'M', 'MYMENSINGH', 'tfl@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000002', 'Tsui Wai San', '1971-03-02', '1547172454', 'F', 'CHATTAGRAM', 'waisan4@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000003', 'Ito Hazuki', '1965-01-14', '1807530269', 'F', 'DHAKA', 'hazuki4@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000004', 'Nakamori Yuto', '1968-12-18', '1726253832', 'M', 'SYLHET', 'yutonak@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000005', 'Grace Hernandez', '1962-01-17', '1532617606', 'F', 'KHULNA', 'hernandez8@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000006', 'Ishii Daisuke', '1967-05-26', '1736980071', 'M', 'DHAKA', 'idaisuke@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000007', 'Mak Wai Lam', '1975-02-21', '1604809483', 'F', 'DHAKA', 'wailammak@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000008', 'Qin Zhennan', '2010-04-24', '1626820829', 'M', 'CHATTAGRAM', 'zqin@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000009', 'Philip Hernandez', '1970-06-15', '1530322022', 'M', 'DHAKA', 'hernphilip@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000010', 'Chung Hiu Tung', '2011-01-21', '1889891260', 'F', 'RAJSHAHI', 'chung01@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000011', 'Yamazaki Daisuke', '1944-04-20', '1948538248', 'M', 'CHATTAGRAM', 'daisuyama4@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000012', 'Ku Chun Yu', '1946-02-11', '1641133528', 'M', 'KHULNA', 'cyku216@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000013', 'Qiu Xiaoming', '1967-01-03', '1713088856', 'M', 'DHAKA', 'xiaomingq66@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000014', 'Noguchi Eita', '1945-02-02', '1582282447', 'F', 'CHATTAGRAM', 'noguchieit@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000015', 'Dai Kwok Ming', '1978-05-20', '1548019025', 'M', 'CHATTAGRAM', 'kmdai3@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000016', 'Zhou Zitao', '1972-12-21', '1507964658', 'M', 'DHAKA', 'zhouzitao@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000017', 'Guo Xiaoming', '1962-05-05', '1523152214', 'M', 'SYLHET', 'guxiaoming@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000018', 'Francis Robinson', '1963-12-04', '1701836089', 'M', 'MYMENSINGH', 'francis919@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000019', 'Ann Sullivan', '1956-12-06', '1972783887', 'F', 'KHULNA', 'annsullivan3@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000020', 'Mo Kar Yan', '2012-01-06', '1514257921', 'F', 'CHATTAGRAM', 'mkaryan@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000021', 'Liao Sum Wing', '1964-08-07', '1754954129', 'F', 'FENI', 'liasumwing@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000022', 'Tang Fu Shing', '1990-01-12', '1624880441', 'M', 'DHAKA', 'fstan@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000023', 'Angela Collins', '2001-05-19', '1527891611', 'F', 'CHATTAGRAM', 'collinsangel430@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000024', 'Xia Xiaoming', '1997-04-15', '1914329706', 'M', 'DHAKA', 'xiaxiao@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000025', 'Lok Ka Keung', '1969-04-27', '1723959705', 'M', 'DHAKA', 'kakeung7@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000026', 'Billy Meyer', '1962-10-04', '1500460819', 'M', 'KHULNA', 'billymey1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000027', 'Marcus Cooper', '1971-02-28', '1813156703', 'M', 'DHAKA', 'marcus627@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000028', 'Aaron Kim', '1948-07-22', '1591824611', 'M', 'DHAKA', 'aaronki425@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000029', 'Fu Yuning', '2019-03-02', '1722014079', 'M', 'CHATTAGRAM', 'fu7@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000030', 'Man Wing Fat', '2012-02-09', '1674979000', 'M', 'SYLHET', 'wingfat106@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000031', 'Lai Tak Wah', '2006-11-13', '1895988962', 'M', 'DHAKA', 'takwah628@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000032', 'Noguchi Hikari', '1995-12-27', '1867825417', 'F', 'RAJSHAHI', 'hikari98@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000033', 'Man Chieh Lun', '1982-05-05', '1647910127', 'M', 'KHULNA', 'chiehlunm@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000034', 'Dale Nelson', '1996-11-08', '1878850380', 'M', 'DHAKA', 'dale93@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000035', 'Yamashita Hina', '1961-06-20', '1745030273', 'F', 'MYMENSINGH', 'hiyam@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000036', 'Hu Lu', '1961-01-31', '1703486486', 'F', 'DHAKA', 'luhu9@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000037', 'Nancy Hunt', '1943-12-18', '1590102361', 'F', 'DHAKA', 'nancy5@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000038', 'Carolyn Shaw', '2017-02-03', '1879530106', 'F', 'CHATTAGRAM', 'shac@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000039', 'Ren Ziyi', '1972-05-01', '1973497590', 'M', 'DHAKA', 'reziyi@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000040', 'Ng Lai Yan', '1969-08-16', '1558290490', 'F', 'KHULNA', 'ngly1204@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000041', 'Cheng Zitao', '2020-01-19', '1559948582', 'M', 'CHATTAGRAM', 'zitaocheng1975@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000042', 'Fong Kwok Ming', '1978-07-29', '1817602343', 'M', 'DHAKA', 'fongkm@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000043', 'Evelyn Brooks', '1998-01-31', '1555782305', 'F', 'SYLHET', 'evelyn3@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000044', 'Takeda Aoshi', '1982-02-28', '1598490130', 'M', 'FENI', 'ataked5@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000045', 'Yuen Ka Man', '1955-03-18', '1755561110', 'M', 'DHAKA', 'kmyuen@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000046', 'To On Kay', '1979-03-16', '1743545224', 'F', 'DHAKA', 'onkay87@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000047', 'Yip Chi Yuen', '1942-12-28', '1597658859', 'M', 'KHULNA', 'chiyuen8@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000048', 'Koo On Na', '1970-04-14', '1689403418', 'F', 'DHAKA', 'kooonna@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000049', 'Tam Wai Yee', '1958-04-09', '1777769261', 'F', 'DHAKA', 'wytam@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000050', 'Tang Rui', '1996-10-11', '1520247242', 'M', 'CHATTAGRAM', 'rutang@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000051', 'Carol Hicks', '1980-01-13', '1722571759', 'F', 'DHAKA', 'hca66@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000052', 'Goto Hikaru', '1986-02-09', '1881792437', 'F', 'MYMENSINGH', 'hgoto10@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000053', 'Arimura Seiko', '2018-07-30', '1922519710', 'F', 'CHATTAGRAM', 'arimura70@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000054', 'Jose Gibson', '1996-08-19', '1767038711', 'M', 'RAJSHAHI', 'jose201@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000055', 'Watanabe Tsubasa', '1972-02-20', '1710652281', 'M', 'DHAKA', 'wtsubasa@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000056', 'Allen Herrera', '1944-08-25', '1872613746', 'M', 'SYLHET', 'aherrera00@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000057', 'Sato Hikari', '1953-12-06', '1637097326', 'F', 'DHAKA', 'hikarisato84@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000058', 'Tang Ching Wan', '1985-02-08', '1730558665', 'M', 'DHAKA', 'tanchingwan70@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000059', 'Joanne Green', '2002-10-28', '1583475970', 'F', 'CHATTAGRAM', 'jogree13@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000060', 'Fong Tsz Ching', '1985-01-21', '1552354512', 'F', 'DHAKA', 'tcf@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000061', 'Patrick Harris', '1983-10-31', '1556674923', 'M', 'KHULNA', 'patharr52@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000062', 'Cao Shihan', '1982-04-02', '1938240996', 'F', 'CHATTAGRAM', 'caoshihan@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000063', 'Tang Sum Wing', '1961-11-25', '1680406831', 'F', 'DHAKA', 'swtang309@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000064', 'Dai Zhennan', '1948-05-15', '1957286541', 'M', 'DHAKA', 'zhennan9@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000065', 'Kwan Tin Wing', '2001-05-01', '1997736192', 'M', 'RAJSHAHI', 'kwan1018@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000066', 'Judith Bell', '1957-01-16', '1741526541', 'F', 'DHAKA', 'belljudi@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000067', 'Choi Wing Sze', '1992-12-27', '1936469573', 'F', 'FENI', 'choiwingsze6@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000068', 'Hirano Misaki', '1954-03-05', '1506316364', 'F', 'KHULNA', 'mhi1120@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000069', 'Kelly Webb', '1958-01-02', '1996775013', 'F', 'MYMENSINGH', 'kewebb1945@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000070', 'Sylvia Mason', '1994-08-28', '1771665546', 'F', 'DHAKA', 'smason@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000071', 'Su Yuning', '2012-09-19', '1685411522', 'M', 'CHATTAGRAM', 'yuninsu@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000072', 'Wu Sai Wing', '1955-11-05', '1614525187', 'M', 'DHAKA', 'saiwingwu74@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000073', 'Song Rui', '1976-02-05', '1905138843', 'M', 'DHAKA', 'songru@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000074', 'Edith Smith', '2006-10-08', '1797298783', 'F', 'CHATTAGRAM', 'edithsmith57@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000075', 'Yam Ming', '1991-01-16', '1833054295', 'M', 'KHULNA', 'my10@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000076', 'Pan Jiehong', '1943-10-14', '1509731896', 'M', 'RAJSHAHI', 'panjieho8@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000077', 'Nomura Mitsuki', '1943-01-14', '1669526404', 'F', 'CHATTAGRAM', 'mno@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000078', 'Ku Fat', '1984-05-07', '1688867261', 'M', 'DHAKA', 'kufat@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000079', 'Yokoyama Momoka', '2008-12-16', '1647923201', 'F', 'DHAKA', 'yokoyama1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000080', 'Cheryl Medina', '1961-11-30', '1779830067', 'F', 'CHATTAGRAM', 'cheryl5@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000081', 'Harry Murray', '1986-02-22', '1907691695', 'M', 'DHAKA', 'harry41@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000082', 'Tang On Kay', '2005-07-01', '1955802751', 'F', 'SYLHET', 'taok@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000083', 'Ichikawa Nanami', '1967-09-19', '1959289496', 'M', 'CHATTAGRAM', 'ichiknanami74@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000084', 'Jeffrey Rose', '1978-06-17', '1835184711', 'M', 'DHAKA', 'rosejeffrey@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000171', 'Nakamura Hikaru', '2009-11-29', '1741367773', 'F', 'MYMENSINGH', 'nakamura117@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000085', 'Han Zitao', '1997-08-21', '1856063361', 'M', 'DHAKA', 'hanzitao@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000170', 'Takahashi Riku', '1991-03-26', '1783571915', 'M', 'CHATTAGRAM', 'takriku310@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000172', 'Rhonda Vargas', '1991-07-25', '1975052391', 'F', 'DHAKA', 'varrhonda1015@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000173', 'Yuen Sai Wing', '1948-01-13', '1562300679', 'M', 'SYLHET', 'swyue1026@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000174', 'Wu Lu', '1963-04-21', '1718609408', 'F', 'DHAKA', 'wulu@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000175', 'Carlos Wallace', '2007-02-09', '1800868951', 'M', 'RAJSHAHI', 'wcarlos@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000176', 'Zhang Rui', '1950-07-28', '1978454969', 'M', 'CHATTAGRAM', 'ruizh@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000177', 'Wei Shihan', '1953-02-28', '1709589456', 'F', 'DHAKA', 'shihan8@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000178', 'Roy Peterson', '2003-11-17', '1655089038', 'M', 'DHAKA', 'rpeterson3@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000179', 'Edna Fox', '1944-12-30', '1527401272', 'F', 'CHATTAGRAM', 'efox@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000180', 'Yuen Ka Fai', '1970-08-07', '1912231477', 'M', 'KHULNA', 'yuekf@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000181', 'Leung Wing Kuen', '2000-09-26', '1567157185', 'M', 'DHAKA', 'leung1102@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000182', 'Morita Ren', '2013-12-04', '1958791286', 'F', 'FENI', 'mr1992@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000183', 'Tong Hiu Tung', '2015-06-28', '1614478810', 'F', 'DHAKA', 'tonghiutu@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000184', 'Fu Zitao', '2016-06-22', '1654239759', 'M', 'DHAKA', 'zitaofu98@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000185', 'Lawrence Stone', '2010-02-23', '1740247177', 'M', 'CHATTAGRAM', 'lawstone@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000186', 'Alexander Daniels', '1947-04-20', '1582831713', 'M', 'SYLHET', 'alexanderd6@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000187', 'Ng Wing Fat', '2019-04-16', '1954588774', 'M', 'KHULNA', 'ngwf@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000188', 'Ku Wai Han', '1989-02-02', '1965422128', 'F', 'MYMENSINGH', 'waihanku@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000189', 'Mike Jenkins', '1950-09-14', '1983874667', 'M', 'DHAKA', 'jenkins421@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000190', 'Tse Sau Man', '2009-11-04', '1860718778', 'F', 'DHAKA', 'tsesm6@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000191', 'Choi Chiu Wai', '1960-12-24', '1506887113', 'M', 'CHATTAGRAM', 'choicw@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000192', 'Wanda Ellis', '1976-09-06', '1537095324', 'F', 'DHAKA', 'waell@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000193', 'Lau Wing Fat', '1973-12-25', '1861031867', 'M', 'DHAKA', 'wingfat80@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000194', 'Andrew Green', '2020-06-09', '1603840521', 'M', 'KHULNA', 'andrew6@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000195', 'Harada Kaito', '2010-03-25', '1522388588', 'M', 'DHAKA', 'kaithara@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000196', 'Lee Cox', '1948-07-01', '1995464656', 'M', 'DHAKA', 'cole@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000197', 'Gary Mason', '1957-07-14', '1656156620', 'M', 'RAJSHAHI', 'garymas@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000198', 'Ishii Mai', '2018-06-19', '1940398276', 'F', 'DHAKA', 'ishiimai805@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000199', 'Justin Hamilton', '1970-04-01', '1807491533', 'M', 'SYLHET', 'hamiltonjustin@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000200', 'Yuan Jiehong', '1972-03-14', '1719562000', 'M', 'CHATTAGRAM', 'jieyu@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000201', 'Fu Anqi', '2020-04-04', '1912649526', 'F', 'KHULNA', 'fu4@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000202', 'Chad White', '1998-10-12', '1989863913', 'M', 'DHAKA', 'chadwhite514@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000203', 'Jiang Ziyi', '1960-11-19', '1833854183', 'M', 'CHATTAGRAM', 'zj1968@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000204', 'Koyama Yuna', '1991-06-05', '1700721942', 'F', 'DHAKA', 'yunakoyama1212@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000205', 'Meng On Na', '1964-06-29', '1676474972', 'F', 'FENI', 'onm69@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000206', 'Tse Yu Ling', '2006-10-11', '1587358795', 'F', 'CHATTAGRAM', 'tseyl@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000207', 'Shi Rui', '1940-12-15', '1710788067', 'M', 'DHAKA', 'shi42@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000208', 'Shen Ziyi', '2010-02-01', '1960388787', 'M', 'RAJSHAHI', 'zs93@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000209', 'Lu Jiehong', '1941-02-06', '1741095538', 'M', 'CHATTAGRAM', 'lu1986@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000210', 'Yu Lu', '1946-09-25', '1768853508', 'F', 'DHAKA', 'luy424@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000211', 'Brian Kim', '1945-10-12', '1584335499', 'M', 'DHAKA', 'kim1107@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000212', 'Fred Henry', '2017-11-20', '1749318818', 'M', 'SYLHET', 'fredhenry@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000213', 'Sun Lan', '1997-08-22', '1915353660', 'F', 'DHAKA', 'lansun@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000214', 'Chan Sai Wing', '2016-04-02', '1844047583', 'M', 'DHAKA', 'chan526@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000215', 'Loui Wai Man', '1983-07-16', '1635858720', 'F', 'KHULNA', 'waimanlo9@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000216', 'Dong Jialun', '1991-08-28', '1967038870', 'M', 'DHAKA', 'dojialun@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000217', 'Jiang Lan', '1963-02-16', '1505954707', 'F', 'DHAKA', 'jlan622@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000218', 'Peng Zhennan', '1974-03-15', '1743264807', 'M', 'CHATTAGRAM', 'pengzhennan@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000219', 'Loui Chieh Lun', '2019-03-14', '1673342497', 'M', 'RAJSHAHI', 'louicl@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000220', 'Ma Xiaoming', '1944-07-10', '1566173445', 'M', 'DHAKA', 'maxiao@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000221', 'Fu Hui Mei', '1951-09-01', '1622681517', 'F', 'CHATTAGRAM', 'fuhuimei8@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000222', 'Sakai Yota', '1961-08-17', '1999214762', 'M', 'MYMENSINGH', 'yotas5@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000223', 'Florence Myers', '1969-11-19', '1815488365', 'F', 'DHAKA', 'myers59@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000224', 'Robert Bailey', '1979-10-16', '1783790760', 'M', 'CHATTAGRAM', 'brobert@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000225', 'Jiang Lu', '2012-10-03', '1580349765', 'F', 'SYLHET', 'lujiang@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000226', 'Chang Shihan', '1954-03-29', '1895230826', 'F', 'DHAKA', 'shihan9@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000227', 'Ti Wai Man', '1994-02-28', '1680849788', 'F', 'CHATTAGRAM', 'ti6@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000228', 'Feng Yuning', '1948-04-09', '1645989204', 'M', 'FENI', 'fengyuning@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000229', 'Edward Warren', '1974-01-26', '1769080405', 'M', 'KHULNA', 'edwardwa@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000230', 'Ricky Nelson', '1964-06-16', '1905737703', 'M', 'RAJSHAHI', 'rnels831@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000231', 'Mario Stone', '1949-06-26', '1627765378', 'M', 'DHAKA', 'marstone@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000232', 'Sarah Hicks', '2000-03-08', '1851160569', 'F', 'DHAKA', 'sarahhicks@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000233', 'Kwan Tsz Ching', '1978-03-09', '1747975570', 'F', 'CHATTAGRAM', 'kwatszching@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000234', 'Diane Wood', '2003-02-07', '1659594762', 'F', 'DHAKA', 'wodiane715@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000235', 'Marcus Garza', '1989-02-20', '1616542389', 'M', 'DHAKA', 'garzam@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000236', 'Mori Riku', '1976-04-11', '1580505941', 'M', 'KHULNA', 'rikumo4@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000237', 'Tse Tsz Hin', '2005-04-09', '1715267330', 'M', 'DHAKA', 'thts@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000238', 'Matsui Minato', '1957-03-11', '1721667067', 'M', 'SYLHET', 'mmatsui9@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000239', 'Brian Davis', '1946-11-03', '1580772072', 'M', 'MYMENSINGH', 'briand@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000240', 'Mui Ka Fai', '2019-04-18', '1901133286', 'M', 'DHAKA', 'kfm926@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000241', 'Emily Hunter', '1952-01-26', '1907836038', 'F', 'RAJSHAHI', 'hunte@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000242', 'Yamamoto Riku', '1987-03-21', '1921097459', 'M', 'CHATTAGRAM', 'riyam@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000243', 'Ho On Kay', '1952-06-14', '1822065829', 'F', 'KHULNA', 'onkayho@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000244', 'Hara Kazuma', '1972-08-03', '1547064270', 'M', 'DHAKA', 'harakazum@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000245', 'Yin Jiehong', '1968-07-19', '1769931756', 'M', 'CHATTAGRAM', 'jieyin5@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000246', 'Ono Aoshi', '1945-06-22', '1878810566', 'M', 'DHAKA', 'onaoshi@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000247', 'Okada Eita', '1966-12-28', '1588231468', 'F', 'DHAKA', 'okadaeita1004@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000248', 'Long Xiuying', '2009-07-01', '1939843250', 'F', 'CHATTAGRAM', 'xiuylon5@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000249', 'Sherry Griffin', '1945-09-10', '1834705140', 'F', 'DHAKA', 'shergriffin@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000250', 'Ono Yuna', '1948-03-04', '1543739226', 'F', 'KHULNA', 'yunaon10@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000251', 'Xu Ziyi', '1942-11-13', '1925696317', 'M', 'FENI', 'ziyxu@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000252', 'Eric Campbell', '1949-12-04', '1994805299', 'M', 'RAJSHAHI', 'campbell7@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000253', 'Chiba Yota', '1998-05-11', '1524163974', 'M', 'DHAKA', 'yochi@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000254', 'Heung Kwok Wing', '1989-07-01', '1781903248', 'M', 'CHATTAGRAM', 'heungkwokwing2@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000257', 'Yuen Siu Wai', '1963-06-27', '1764134886', 'F', 'KHULNA', 'swyuen8@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000255', 'Goto Momoka', '2009-01-30', '1678102332', 'F', 'DHAKA', 'momokgoto@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000256', 'Samuel Henry', '2003-07-13', '1783847099', 'M', 'MYMENSINGH', 'shenry09@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000258', 'Kondo Momoka', '1969-11-23', '1873839104', 'F', 'DHAKA', 'kondomomoka@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000259', 'Xiong Ziyi', '1962-01-09', '1606947380', 'M', 'DHAKA', 'ziyixiong@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000260', 'Yamamoto Ryota', '1967-12-27', '1730169519', 'M', 'CHATTAGRAM', 'ryotayam@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000261', 'Fujita Ayato', '1958-09-21', '1729522730', 'M', 'DHAKA', 'ayato45@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000262', 'Mori Rena', '1956-09-22', '1990894958', 'F', 'DHAKA', 'mrena5@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000263', 'Kong Lu', '2017-05-14', '1800778322', 'F', 'RAJSHAHI', 'luk@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000264', 'Cai Zitao', '1989-12-16', '1852562954', 'M', 'SYLHET', 'zitaocai821@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000265', 'Doris Sanders', '2016-01-03', '1654996878', 'F', 'DHAKA', 'doris6@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000266', 'Chang Zhiyuan', '2009-06-22', '1587725380', 'M', 'CHATTAGRAM', 'zhiyuanc@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000267', 'Jack Brooks', '1991-07-10', '1803037894', 'M', 'DHAKA', 'jab@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000268', 'Taniguchi Aoshi', '1947-02-13', '1797611406', 'M', 'DHAKA', 'ta501@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000269', 'Kaneko Kazuma', '1950-10-02', '1787672259', 'M', 'CHATTAGRAM', 'kazkaneko4@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000270', 'Sakai Kenta', '1946-11-13', '1933086590', 'M', 'DHAKA', 'sakaikenta@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000271', 'Yue Wai Lam', '1987-07-18', '1923279124', 'F', 'KHULNA', 'wailamyue325@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000272', 'Yamaguchi Nanami', '1966-06-25', '1533992118', 'M', 'CHATTAGRAM', 'ny4@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000273', 'Todd Snyder', '1969-04-18', '1961057089', 'M', 'MYMENSINGH', 'toddsnyder919@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000274', 'Sato Yuito', '1980-08-13', '1999820999', 'M', 'FENI', 'syui2@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000275', 'Sasaki Mai', '1965-07-13', '1662723766', 'F', 'CHATTAGRAM', 'maisasaki9@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000276', 'Joel Powell', '1999-01-28', '1910611771', 'M', 'DHAKA', 'pjoel4@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000277', 'Peng Ziyi', '1990-05-24', '1869786236', 'M', 'SYLHET', 'ziyipe9@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000278', 'Otsuka Mai', '1995-06-08', '1791632676', 'F', 'KHULNA', 'mai10@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000279', 'Tang Anqi', '1973-05-22', '1888473766', 'F', 'DHAKA', 'tanga@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000280', 'Noguchi Akina', '1989-08-13', '1724350148', 'F', 'DHAKA', 'noguchiaki@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000281', 'Sugiyama Eita', '1944-08-23', '1896242913', 'F', 'CHATTAGRAM', 'eitasugiyama@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000282', 'Yin Jialun', '1965-11-22', '1571538400', 'M', 'DHAKA', 'jyin@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000283', 'Jonathan Robinson', '1980-01-19', '1697001428', 'M', 'DHAKA', 'jonrobin724@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000284', 'Nakagawa Hina', '2002-05-24', '1636363873', 'F', 'CHATTAGRAM', 'hinanaka7@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000285', 'Shi Shihan', '1975-09-24', '1910517735', 'F', 'RAJSHAHI', 'shi74@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000286', 'Sarah Soto', '1989-07-13', '1672595061', 'F', 'DHAKA', 'sarahs@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000287', 'Ueno Daisuke', '1967-03-30', '1630902368', 'M', 'CHATTAGRAM', 'daisuue1031@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000288', 'Sugiyama Hazuki', '1953-01-06', '1672248773', 'F', 'DHAKA', 'sugiyamahazuki@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000289', 'Suzuki Mai', '2004-04-10', '1881283598', 'F', 'DHAKA', 'maisuz@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000290', 'Chung Ting Fung', '1980-06-17', '1871901269', 'M', 'MYMENSINGH', 'tingfung18@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000291', 'Xue Zhiyuan', '1948-08-19', '1728911436', 'M', 'DHAKA', 'zhiyuanxue325@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000292', 'Shi Jialun', '1951-01-29', '1970977660', 'M', 'KHULNA', 'jialunshi@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000293', 'Koo Tin Lok', '2013-12-02', '1990821892', 'M', 'CHATTAGRAM', 'kotl@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000294', 'Luo Xiuying', '2004-10-29', '1606124508', 'F', 'DHAKA', 'xiuying10@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000295', 'Arai Daisuke', '1972-07-20', '1947862881', 'M', 'DHAKA', 'ardaisuke@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000296', 'Ann Romero', '2002-10-30', '1889947886', 'F', 'RAJSHAHI', 'ar55@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000297', 'Nicholas Aguilar', '1944-05-19', '1539910486', 'M', 'FENI', 'naguilar@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000298', 'Ito Yuito', '1999-01-13', '1674052911', 'M', 'DHAKA', 'iyuito@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000299', 'Chad Rose', '1982-06-18', '1743914246', 'M', 'KHULNA', 'rosechad4@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000300', 'Yuen Ming', '1953-10-07', '1726186246', 'M', 'DHAKA', 'myuen@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000301', 'Zhu Zitao', '1999-11-12', '1621870379', 'M', 'DHAKA', 'zhzitao@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000302', 'Danielle Hill', '2003-12-18', '1751208800', 'F', 'CHATTAGRAM', 'hidanielle@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000303', 'Jiang Anqi', '2018-01-18', '1603579940', 'F', 'SYLHET', 'anqijian@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000304', 'Kikuchi Ayano', '1945-03-24', '1754843357', 'F', 'DHAKA', 'kayano@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000305', 'Ota Sara', '2009-11-06', '1595758322', 'F', 'CHATTAGRAM', 'otasara@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000306', 'Lin Jiehong', '2001-03-25', '1930343963', 'M', 'KHULNA', 'jiehong1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000307', 'He Zitao', '1968-11-03', '1900662107', 'M', 'MYMENSINGH', 'hezitao@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000308', 'Wu Anqi', '2009-02-06', '1664623196', 'F', 'CHATTAGRAM', 'anqiwu@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000309', 'Sit Chun Yu', '2006-07-08', '1763921851', 'M', 'DHAKA', 'sit4@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000310', 'Ota Ikki', '1973-06-27', '1664104781', 'M', 'DHAKA', 'otaikki3@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000311', 'Liang Lan', '1976-04-29', '1774538770', 'F', 'CHATTAGRAM', 'liangla@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000312', 'Ku Chieh Lun', '1981-12-08', '1765095384', 'M', 'DHAKA', 'ku228@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000313', 'Ishikawa Yuna', '1979-12-10', '1831430095', 'F', 'KHULNA', 'yuna4@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000314', 'Lui Tsz Hin', '1979-12-20', '1799192805', 'M', 'CHATTAGRAM', 'lui1@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000315', 'Carol Evans', '1968-10-15', '1812710176', 'F', 'DHAKA', 'evanc@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000316', 'Yu Lan', '1993-03-18', '1840174764', 'F', 'SYLHET', 'ylan75@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000317', 'Anita Grant', '1942-01-10', '1920156281', 'F', 'CHATTAGRAM', 'grananita@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000318', 'Nakamura Sara', '1966-11-26', '1830270138', 'F', 'RAJSHAHI', 'nakamsa86@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000319', 'Ikeda Aoshi', '2018-05-11', '1972974333', 'M', 'DHAKA', 'aoshi9@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000320', 'Sakai Hikaru', '1979-06-13', '1797412874', 'F', 'FENI', 'sakaihikaru@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000321', 'Manuel Holmes', '1945-02-05', '1904366425', 'M', 'DHAKA', 'mholm@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000322', 'Ruth Anderson', '1967-03-28', '1806296108', 'F', 'DHAKA', 'andersonru14@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000323', 'Mao Yuning', '1966-06-05', '1573054610', 'M', 'CHATTAGRAM', 'maoyuni07@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000324', 'Cheung Chi Ming', '1989-07-17', '1924490971', 'M', 'MYMENSINGH', 'cheungcm19@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000325', 'Peter Woods', '2016-05-09', '1889492981', 'M', 'DHAKA', 'woodp@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000326', 'Che Ching Wan', '1974-05-12', '1713548145', 'M', 'CHATTAGRAM', 'chechingwan2@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000327', 'Fujita Hikari', '2014-08-04', '1715096531', 'F', 'KHULNA', 'fujh324@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000328', 'Morita Hikari', '1963-08-18', '1508850208', 'F', 'DHAKA', 'mhikari@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000329', 'Frances Watson', '1963-03-16', '1829829603', 'F', 'SYLHET', 'watsf4@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000330', 'Richard Morris', '1949-05-13', '1654986154', 'M', 'DHAKA', 'rimorris1948@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000331', 'Theresa Reed', '2019-08-22', '1882134221', 'F', 'DHAKA', 'rethere@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000332', 'Fujiwara Miu', '1944-11-07', '1785485336', 'F', 'CHATTAGRAM', 'fujiwaramiu8@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000333', 'Yuen Hui Mei', '1977-01-15', '1756115846', 'F', 'DHAKA', 'yuhm@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000334', 'Judith Wagner', '1984-04-15', '1808359953', 'F', 'KHULNA', 'wagnerjudit7@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000335', 'Shimizu Kazuma', '1979-12-14', '1593606880', 'M', 'CHATTAGRAM', 'shimizukazuma@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000336', 'Melissa Tucker', '1981-07-30', '1944551565', 'F', 'DHAKA', 'metucker2@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000337', 'Jane Ramirez', '1949-04-09', '1860876040', 'F', 'DHAKA', 'ramirjane@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000338', 'Kaneko Shino', '2014-05-28', '1608929982', 'F', 'CHATTAGRAM', 'shikan@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000339', 'Gao Yuning', '1951-05-14', '1509292710', 'M', 'DHAKA', 'gyuning@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000342', 'Kojima Takuya', '2007-12-03', '1587812193', 'M', 'SYLHET', 'ktakuya125@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000340', 'Ruth Taylor', '1961-08-05', '1959407782', 'F', 'RAJSHAHI', 'taylorruth@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000341', 'Tammy Reed', '1965-12-31', '1834719485', 'F', 'MYMENSINGH', 'tamr317@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000343', 'Qiu Ziyi', '1951-08-13', '1878160863', 'M', 'FENI', 'ziyqi723@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000344', 'Denise Perry', '1978-05-07', '1956193094', 'F', 'CHATTAGRAM', 'denisper00@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000345', 'Cai Xiaoming', '2017-03-20', '1872958043', 'M', 'DHAKA', 'xcai@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000346', 'Qiu Jiehong', '1989-04-24', '1639227675', 'M', 'DHAKA', 'qijiehong@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000347', 'Hsuan Tin Lok', '1954-11-14', '1606027624', 'M', 'CHATTAGRAM', 'hsuan04@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000348', 'Yokoyama Hikaru', '1978-06-15', '1754351558', 'F', 'KHULNA', 'hikaru10@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000349', 'Fujii Momoka', '1978-07-05', '1952396491', 'F', 'DHAKA', 'fumom@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000350', 'Todd Bell', '1945-04-10', '1944305583', 'M', 'CHATTAGRAM', 'bell05@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000351', 'Tang Xiuying', '2007-08-24', '1748299996', 'F', 'RAJSHAHI', 'tangxi1@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000352', 'Gong Yunxi', '2015-04-16', '1927755756', 'M', 'DHAKA', 'yunxigong@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000353', 'Hou Anqi', '1961-11-10', '1603008804', 'F', 'CHATTAGRAM', 'houanqi@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000354', 'Miura Miu', '1964-10-24', '1753958693', 'F', 'DHAKA', 'miuramiu@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000355', 'Liao Wai San', '1987-02-04', '1631812276', 'F', 'SYLHET', 'wsliao12@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000356', 'Lu Shihan', '1972-09-12', '1886308876', 'F', 'CHATTAGRAM', 'shihan1960@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000357', 'Chang Chung Yin', '2011-06-23', '1568655060', 'M', 'DHAKA', 'chanchungyin515@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000358', 'Siu Wai Man', '1985-04-11', '1742145794', 'F', 'MYMENSINGH', 'waimans809@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000359', 'Kaneko Hana', '2003-05-04', '1733937803', 'F', 'CHATTAGRAM', 'hankan@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000360', 'Patricia Shaw', '1978-11-18', '1845019332', 'F', 'DHAKA', 'sp429@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000361', 'Siu Chun Yu', '1971-06-17', '1747173303', 'M', 'DHAKA', 'cys509@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000362', 'Mo Xiaoming', '1947-06-29', '1619277222', 'M', 'RAJSHAHI', 'ximo6@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000363', 'Li Xiuying', '2004-06-10', '1768442012', 'F', 'DHAKA', 'xiuying4@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000364', 'Lei Ziyi', '1983-10-27', '1915668026', 'M', 'DHAKA', 'zlei@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000365', 'Francisco Webb', '2006-12-31', '1990535072', 'M', 'CHATTAGRAM', 'webfrancisco2@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000366', 'Maeda Yota', '1944-07-28', '1525910963', 'M', 'FENI', 'maedyota@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000367', 'Zhu Rui', '1997-10-17', '1706647736', 'M', 'DHAKA', 'zhu3@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000368', 'Tang Kwok Kuen', '1940-02-29', '1920962817', 'M', 'SYLHET', 'kwokkuent48@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000369', 'Dorothy Long', '1972-01-13', '1915382577', 'F', 'KHULNA', 'dlo615@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000370', 'Frances Johnson', '2007-08-17', '1953592684', 'F', 'DHAKA', 'frj610@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000371', 'Ono Miu', '2020-02-17', '1663041404', 'F', 'CHATTAGRAM', 'miono@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000372', 'Lei Zhiyuan', '1999-03-07', '1923751470', 'M', 'DHAKA', 'leiz821@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000373', 'Tse Wai Man', '2016-02-16', '1950989335', 'F', 'RAJSHAHI', 'tsewm@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000374', 'Lu Anqi', '1959-09-12', '1780217123', 'F', 'CHATTAGRAM', 'anqi2012@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000375', 'Yam Yun Fat', '2002-02-08', '1919190064', 'M', 'MYMENSINGH', 'yyunfat110@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000376', 'Xia Anqi', '1968-10-26', '1844338737', 'F', 'KHULNA', 'anqixi4@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000377', 'Liao Zitao', '1987-12-26', '1992757661', 'M', 'CHATTAGRAM', 'liaozitao1105@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000378', 'Grace Castro', '1970-10-22', '1872010135', 'F', 'DHAKA', 'grace1@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000379', 'Hu Shihan', '1988-12-17', '1726181683', 'F', 'DHAKA', 'shihanhu87@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000380', 'Leung Tin Lok', '2008-10-21', '1902801393', 'M', 'CHATTAGRAM', 'tlleung@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000381', 'Dong Zitao', '1953-10-14', '1905717531', 'M', 'SYLHET', 'zitaodong@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000382', 'Endo Ren', '2007-02-12', '1869327521', 'F', 'DHAKA', 'ren10@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000383', 'Edna Butler', '1944-10-19', '1928802788', 'F', 'KHULNA', 'eb5@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000384', 'Kikuchi Hina', '2019-05-14', '1540615636', 'F', 'RAJSHAHI', 'kikuchihina@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000385', 'Arimura Ayano', '2018-11-08', '1984382317', 'F', 'DHAKA', 'ayano421@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000386', 'Hsuan Wai Lam', '2010-12-26', '1619415525', 'F', 'CHATTAGRAM', 'wailamhsuan1117@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000387', 'Kao Wing Suen', '1961-02-13', '1745443275', 'F', 'DHAKA', 'wskao@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000388', 'Sato Hikaru', '1942-07-12', '1966937581', 'F', 'DHAKA', 'satohi@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000389', 'Mori Hana', '1980-09-16', '1653686700', 'F', 'FENI', 'hamori@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000390', 'Tam Tin Lok', '2008-05-17', '1934514659', 'M', 'KHULNA', 'tatinlok@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000391', 'Yue Kwok Kuen', '1969-09-11', '1547392229', 'M', 'DHAKA', 'yue2016@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000392', 'Ishida Aoshi', '1985-11-11', '1797178934', 'M', 'MYMENSINGH', 'ishidaaosh@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000393', 'Zhong Anqi', '1984-08-13', '1649580979', 'F', 'DHAKA', 'zhonganqi@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000394', 'Yung Yun Fat', '1952-07-14', '1561712797', 'M', 'SYLHET', 'yfyung87@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000395', 'Cheng Yunxi', '2002-12-04', '1910500072', 'M', 'RAJSHAHI', 'yucheng1967@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000396', 'Xia Zhennan', '1988-03-21', '1875353367', 'M', 'DHAKA', 'xiaz@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000397', 'Masuda Sara', '2003-01-18', '1511127423', 'F', 'KHULNA', 'sarama@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000398', 'Chu Chi Ming', '1999-06-22', '1726388821', 'M', 'CHATTAGRAM', 'chucm@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000399', 'Tang Lu', '1994-09-28', '1607226438', 'F', 'DHAKA', 'tlu1957@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000400', 'Pak Wing Kuen', '1972-04-18', '1893754943', 'M', 'DHAKA', 'wingkpa@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000401', 'Sheh Chung Yin', '2011-03-15', '1520490982', 'M', 'CHATTAGRAM', 'cysheh1@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000402', 'Hui Fat', '1977-05-17', '1783156390', 'M', 'DHAKA', 'hfat@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000403', 'Tang Yuning', '1985-03-24', '1913271628', 'M', 'DHAKA', 'yutang@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000404', 'Samuel Griffin', '1965-10-24', '1800939268', 'M', 'KHULNA', 'samuel45@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000405', 'Heung Kwok Kuen', '1992-04-10', '1835065031', 'M', 'DHAKA', 'kkheung@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000406', 'Vincent Schmidt', '1996-03-18', '1661206417', 'M', 'RAJSHAHI', 'schvi@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000407', 'Hsuan Yun Fat', '1985-10-15', '1607297702', 'M', 'SYLHET', 'yfhsuan@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000408', 'Andrea Cooper', '2006-12-28', '1889631518', 'F', 'DHAKA', 'coopeandrea9@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000409', 'Wu Ho Yin', '1960-04-26', '1525248718', 'M', 'MYMENSINGH', 'wuhoyin@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000410', 'Mui Wai Yee', '2007-05-15', '1571058935', 'F', 'CHATTAGRAM', 'waiyeemu05@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000411', 'Leung Tin Wing', '1972-06-29', '1693165463', 'M', 'KHULNA', 'ltw5@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000412', 'Lei Shihan', '1997-09-29', '1587846190', 'F', 'FENI', 'leish509@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000413', 'Yuen Wing Sze', '2011-05-21', '1728796063', 'F', 'CHATTAGRAM', 'wsyu130@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000414', 'Yoshida Hazuki', '1958-08-08', '1770064565', 'F', 'DHAKA', 'hazuki1130@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000415', 'So Fat', '1949-10-20', '1742557724', 'M', 'DHAKA', 'sofat@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000416', 'Xia Shihan', '1978-10-15', '1531055216', 'F', 'CHATTAGRAM', 'shihanxia3@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000417', 'Lok Kwok Wing', '1986-01-07', '1545242305', 'M', 'RAJSHAHI', 'lokkw@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000418', 'Sakamoto Airi', '1981-07-24', '1957265296', 'F', 'KHULNA', 'saairi@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000419', 'Sugawara Daichi', '1966-03-26', '1698681022', 'M', 'CHATTAGRAM', 'sugawaradaichi925@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000420', 'Chang Wai Han', '2003-07-07', '1882491295', 'F', 'SYLHET', 'waihanch@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000421', 'Patricia Wood', '1970-03-28', '1843657716', 'F', 'DHAKA', 'patriw521@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000422', 'Kimberly Ferguson', '1983-09-26', '1715835564', 'F', 'CHATTAGRAM', 'ferguson10@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000423', 'Louise Nelson', '1981-11-11', '1809838240', 'F', 'DHAKA', 'nelouise6@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000424', 'Gregory Rose', '2012-08-27', '1597805836', 'M', 'DHAKA', 'gregory413@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000086', 'Zhang Zitao', '2014-08-17', '1927615890', 'M', 'MYMENSINGH', 'zitaoz@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000087', 'Shi Xiaoming', '1981-08-15', '1532726684', 'M', 'RAJSHAHI', 'xiaoming1004@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000088', 'Miguel Howard', '1962-04-24', '1908000313', 'M', 'DHAKA', 'howmigu1955@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000089', 'Mui Wai Han', '2001-12-18', '1592751379', 'F', 'KHULNA', 'waihan4@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000090', 'Sakamoto Daichi', '2017-12-08', '1535776444', 'M', 'FENI', 'daichisak@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000091', 'Sylvia Ortiz', '1998-04-07', '1624848349', 'F', 'DHAKA', 'sylviaort@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000092', 'Kimura Momoka', '1959-11-16', '1611484073', 'F', 'CHATTAGRAM', 'kimuramomoka82@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000093', 'Sano Kenta', '1993-12-03', '1542585957', 'M', 'DHAKA', 'kentsa@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000094', 'Tong Tin Wing', '2001-04-24', '1573234343', 'M', 'DHAKA', 'totinwing@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000095', 'Feng Jialun', '1992-05-10', '1715778017', 'M', 'SYLHET', 'fenj@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000096', 'Tamura Shino', '1994-05-09', '1524765352', 'F', 'KHULNA', 'tamshino@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000097', 'Henry Howard', '1988-11-02', '1835165929', 'M', 'DHAKA', 'howarhenry1962@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000098', 'Wang Xiuying', '1977-11-18', '1746330959', 'F', 'RAJSHAHI', 'xiuywang81@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000099', 'Loui Tin Lok', '2003-06-18', '1814373112', 'M', 'DHAKA', 'loutinlok7@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000100', 'Zhu Lu', '1967-08-02', '1704335781', 'F', 'DHAKA', 'lzh4@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000101', 'Tian Jiehong', '1949-09-27', '1781848244', 'M', 'CHATTAGRAM', 'tianjiehong@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000102', 'Duan Zhennan', '1960-11-22', '1750741106', 'M', 'DHAKA', 'duanzhenn@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000103', 'Cheng Chiu Wai', '2008-11-30', '1675001934', 'M', 'MYMENSINGH', 'chchiuwai@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000104', 'Ueno Yuito', '1951-05-02', '1734844377', 'M', 'CHATTAGRAM', 'yuitou@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000105', 'Shimizu Hazuki', '2000-09-08', '1619941039', 'F', 'DHAKA', 'shimizu84@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000106', 'Sandra Miller', '1985-07-08', '1642994941', 'F', 'DHAKA', 'msand@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000107', 'Kao Sze Kwan', '1965-06-22', '1963566072', 'F', 'CHATTAGRAM', 'kaszek@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000108', 'Ti Wai Yee', '2017-05-07', '1619597112', 'F', 'SYLHET', 'waiyee8@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000109', 'Diane Sanders', '1951-05-26', '1779561122', 'F', 'RAJSHAHI', 'dsan@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000110', 'Lau Tsz Ching', '1953-12-28', '1649184216', 'F', 'KHULNA', 'tclau@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000111', 'Yip Hok Yau', '1972-03-30', '1804409709', 'M', 'DHAKA', 'yip1031@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000112', 'Tong Lik Sun', '1946-01-13', '1746670108', 'M', 'DHAKA', 'liksunto@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000113', 'Yamaguchi Mai', '2018-02-26', '1532478048', 'F', 'FENI', 'yamaguchimai@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000114', 'Heung Tsz Hin', '1954-07-22', '1759990472', 'M', 'DHAKA', 'thheung@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000115', 'Luo Xiaoming', '2001-12-02', '1928035095', 'M', 'DHAKA', 'luox@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000116', 'Joshua Gibson', '1999-11-25', '1937466805', 'M', 'CHATTAGRAM', 'gibsonjoshua@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000117', 'Huang Lu', '1989-02-04', '1893202644', 'F', 'KHULNA', 'luhuang@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000118', 'Chin Ka Keung', '1955-02-20', '1936339989', 'M', 'DHAKA', 'chinkk@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000119', 'Sugawara Rena', '1961-06-04', '1875029099', 'F', 'CHATTAGRAM', 'rsugawara1945@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000120', 'Stanley Bryant', '1953-08-15', '1842417554', 'M', 'MYMENSINGH', 'stanleybrya@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000121', 'Stephen Chavez', '1993-01-29', '1777415817', 'M', 'SYLHET', 'chavez328@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000122', 'Kojima Ikki', '1954-02-08', '1582780812', 'M', 'CHATTAGRAM', 'ikkik@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000123', 'Ding Zitao', '2005-08-01', '1702958857', 'M', 'DHAKA', 'zdin@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000124', 'Ishikawa Nanami', '1953-10-26', '1703366850', 'M', 'KHULNA', 'ishnanam1974@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000125', 'Shimada Momoe', '1954-05-12', '1589646139', 'F', 'CHATTAGRAM', 'momoesh@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000126', 'Xie Xiuying', '1947-10-27', '1887075338', 'F', 'DHAKA', 'xiexiuying@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000127', 'Meng Jiehong', '2004-12-16', '1972677851', 'M', 'DHAKA', 'jiehom@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000128', 'Wong Wing Kuen', '2005-06-08', '1765337537', 'M', 'CHATTAGRAM', 'wkwong1230@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000129', 'Hao Yuning', '1980-09-15', '1691208782', 'M', 'DHAKA', 'yunha10@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000130', 'Marcus Morgan', '1952-04-14', '1730700245', 'M', 'DHAKA', 'morganmarcu718@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000131', 'Lee Tran', '1943-09-26', '1732524956', 'M', 'RAJSHAHI', 'tranlee1023@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000132', 'Yuen Chi Yuen', '1961-07-10', '1928348306', 'M', 'DHAKA', 'chiyuen8@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000133', 'Xue Xiuying', '1972-01-21', '1908763495', 'F', 'DHAKA', 'xiuyingxu@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000134', 'Nakano Miu', '1961-05-03', '1860556853', 'F', 'SYLHET', 'miu10@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000135', 'Ellen Lewis', '1962-06-19', '1858086390', 'F', 'DHAKA', 'lewise@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000136', 'Benjamin Robinson', '1990-10-30', '1603017801', 'M', 'FENI', 'robinsonbenjamin405@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000137', 'Suzuki Yuna', '1987-09-10', '1604857781', 'F', 'MYMENSINGH', 'yunas603@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000138', 'Koon Sze Yu', '2010-09-11', '1717134474', 'F', 'KHULNA', 'koonsy@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000139', 'Robert Tucker', '1975-03-27', '1566286968', 'M', 'DHAKA', 'tuckerrobert6@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000140', 'Zou Rui', '1989-09-03', '1963733717', 'M', 'CHATTAGRAM', 'zru00@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000141', 'Tao Anqi', '1949-10-26', '1865647357', 'F', 'DHAKA', 'anqitao@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000142', 'Tang Sze Yu', '1979-01-25', '1909124689', 'F', 'RAJSHAHI', 'tangsy@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000143', 'Su Jiehong', '2011-12-12', '1967138191', 'M', 'CHATTAGRAM', 'jiehs@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000144', 'Ng Ka Keung', '2012-09-06', '1539778665', 'M', 'DHAKA', 'kakeungng@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000145', 'Danny Alvarez', '1967-11-14', '1602235966', 'M', 'KHULNA', 'dannyalvarez@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000146', 'Heather Bennett', '1989-10-10', '1841731844', 'F', 'CHATTAGRAM', 'heatb6@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000147', 'Tang Wing Suen', '1966-03-17', '1615266766', 'F', 'SYLHET', 'tanwings2008@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000148', 'Jia Lu', '1963-07-27', '1842913017', 'F', 'DHAKA', 'lujia68@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000149', 'Mok Ching Wan', '1989-01-14', '1859938472', 'M', 'CHATTAGRAM', 'chinmo@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000150', 'Kato Yamato', '1987-02-07', '1535918165', 'M', 'DHAKA', 'yamatokato8@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000151', 'Cui Ziyi', '1942-10-05', '1582260031', 'M', 'DHAKA', 'ziyic@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000152', 'Ng Kwok Ming', '1982-08-29', '1861867720', 'M', 'KHULNA', 'kwokmingng1009@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000153', 'Chiba Yuito', '1950-03-26', '1551023461', 'M', 'RAJSHAHI', 'yuitoc@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000154', 'Chung Ka Fai', '1978-09-21', '1934828384', 'M', 'MYMENSINGH', 'chkafai78@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000155', 'Masuda Yuto', '2007-09-07', '1888642761', 'M', 'CHATTAGRAM', 'masudayuto@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000156', 'Xiong Lan', '1984-03-26', '1799280694', 'F', 'DHAKA', 'lan4@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000157', 'Monica Cole', '2012-03-04', '1773611568', 'F', 'DHAKA', 'colemoni@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000158', 'Elaine Mills', '1943-06-18', '1954730333', 'F', 'CHATTAGRAM', 'elam@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000159', 'Zou Zhiyuan', '1994-03-15', '1882013369', 'M', 'FENI', 'zouz804@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000160', 'Deng Yunxi', '1951-05-17', '1944361753', 'M', 'SYLHET', 'deng91@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000161', 'Ethel Medina', '1978-07-24', '1818142159', 'F', 'CHATTAGRAM', 'me94@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000162', 'Frank West', '1940-01-19', '1646809426', 'M', 'DHAKA', 'wefrank629@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000163', 'Nakayama Kazuma', '1993-08-29', '1714148033', 'M', 'DHAKA', 'kanakay@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000164', 'Lawrence Jordan', '2011-06-23', '1647218380', 'M', 'RAJSHAHI', 'lawrencejo@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000165', 'Wan Tsz Ching', '1993-03-21', '1737323954', 'F', 'DHAKA', 'tszchingwa@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000166', 'Andrew Daniels', '2015-08-20', '1805707024', 'M', 'KHULNA', 'andrew1@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000167', 'Alice Ortiz', '1946-05-13', '1510760721', 'F', 'CHATTAGRAM', 'ortiz305@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000168', 'Xiong Jialun', '1996-04-29', '1552961090', 'M', 'DHAKA', 'jixion@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000169', 'Inoue Momoe', '1987-11-23', '1954200177', 'F', 'DHAKA', 'inouemo@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000849', 'Sakai Ayato', '1993-01-31', '1768808537', 'M', 'FENI', 'ayatsakai@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000850', 'Lu Zitao', '1963-10-11', '1665716237', 'M', 'DHAKA', 'lzit@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000851', 'Rebecca Soto', '1967-09-15', '1996104381', 'F', 'MYMENSINGH', 'rebesoto@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000852', 'Hara Shino', '1993-12-22', '1512042019', 'F', 'KHULNA', 'shinohara203@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000853', 'Kwong Ming Sze', '1948-05-12', '1939305881', 'F', 'DHAKA', 'mskwong1006@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000854', 'Kimberly Parker', '1990-10-29', '1896730426', 'F', 'CHATTAGRAM', 'parkerkimberly@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000855', 'Choi Tin Wing', '1965-12-18', '1953836792', 'M', 'DHAKA', 'twchoi6@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000856', 'Maeda Nanami', '2014-05-04', '1607843106', 'M', 'DHAKA', 'nanmaed@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000857', 'Hazel Rodriguez', '1985-01-07', '1703357034', 'F', 'RAJSHAHI', 'hazrodr222@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000858', 'Ueno Aoshi', '1993-06-24', '1929140788', 'M', 'DHAKA', 'aoshiueno@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000859', 'Xiao Xiuying', '1955-12-16', '1690462618', 'F', 'KHULNA', 'xxiuy@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000860', 'Chic Cho Yee', '1980-09-23', '1890622066', 'F', 'CHATTAGRAM', 'chiccy3@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000861', 'Tsang Sum Wing', '2000-06-20', '1540960285', 'F', 'DHAKA', 'tsang66@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000862', 'Wong Ka Man', '1993-02-27', '1592688145', 'M', 'SYLHET', 'kamanw@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000863', 'Zhao Xiuying', '2018-08-25', '1788121827', 'F', 'CHATTAGRAM', 'xiuyingzhao@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000864', 'Lucille Rogers', '1956-03-20', '1540956608', 'F', 'DHAKA', 'lucillerogers7@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000865', 'Eleanor Garcia', '1979-05-05', '1798336928', 'F', 'DHAKA', 'eleanorgar@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000866', 'Theodore Hall', '2001-10-03', '1783674738', 'M', 'KHULNA', 'theodore3@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000867', 'Ando Rena', '1958-10-11', '1820776521', 'F', 'DHAKA', 'ar308@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000868', 'Leung Siu Wai', '2013-01-23', '1692727205', 'F', 'MYMENSINGH', 'siuwaileung2@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000869', 'Dai Xiuying', '1991-04-27', '1661127882', 'F', 'CHATTAGRAM', 'dai42@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000870', 'Yau Ho Yin', '1941-12-30', '1546818860', 'M', 'DHAKA', 'yau1956@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000871', 'Mo Hui Mei', '1986-06-13', '1601930397', 'F', 'DHAKA', 'hmmo@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000872', 'Masuda Hina', '1993-04-26', '1698846106', 'F', 'FENI', 'hinamasuda1953@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000873', 'Kathy Harrison', '1961-02-24', '1786606645', 'F', 'KHULNA', 'harrisonkat@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000874', 'Nakayama Takuya', '1966-02-28', '1634554893', 'M', 'DHAKA', 'takuyan115@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000875', 'Julie Jenkins', '1969-05-02', '1576873563', 'F', 'SYLHET', 'jejulie401@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000876', 'Fong Ka Fai', '1994-02-18', '1942898734', 'M', 'DHAKA', 'kafaifong56@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000877', 'Zhao Zhennan', '1970-09-22', '1790870040', 'M', 'DHAKA', 'zhennzhao1020@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000878', 'Shing Fat', '1943-10-24', '1970846434', 'M', 'CHATTAGRAM', 'fs10@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000879', 'Sakamoto Sakura', '1977-07-20', '1541024703', 'F', 'RAJSHAHI', 'sakamotosaku@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000880', 'Miura Mai', '1942-08-09', '1722403017', 'F', 'KHULNA', 'miumai@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000881', 'Cheng Wing Fat', '1957-11-02', '1583990021', 'M', 'CHATTAGRAM', 'wincheng@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000882', 'Ernest Mills', '1963-11-24', '1717308017', 'M', 'DHAKA', 'millernest@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000883', 'Shi Anqi', '2014-11-09', '1670725601', 'F', 'DHAKA', 'shian@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000884', 'Sugawara Seiko', '1997-09-19', '1782386434', 'F', 'CHATTAGRAM', 'sugasei@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000885', 'Heung Lik Sun', '1985-06-04', '1573357467', 'M', 'MYMENSINGH', 'lsheung71@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000886', 'Justin Ruiz', '1998-08-01', '1583254651', 'M', 'DHAKA', 'justin331@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000887', 'April Phillips', '2017-08-07', '1563133207', 'F', 'KHULNA', 'phillapril@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000888', 'Yan Ziyi', '1949-03-29', '1691893645', 'M', 'SYLHET', 'ziyi71@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000889', 'Yang Jiehong', '1993-10-03', '1685326262', 'M', 'DHAKA', 'jyang02@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000890', 'Carl Gardner', '2010-08-20', '1994090859', 'M', 'RAJSHAHI', 'carlg@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000891', 'Monica Martinez', '1993-12-18', '1881208844', 'F', 'DHAKA', 'monica4@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000892', 'Han On Kay', '1993-03-05', '1589677337', 'F', 'DHAKA', 'hanok1013@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000893', 'Clifford Hill', '1985-08-29', '1965696735', 'M', 'CHATTAGRAM', 'clifhill@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000894', 'Xu Zhennan', '2002-02-16', '1763206023', 'M', 'KHULNA', 'zhxu2@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000895', 'Pang Ka Keung', '1995-04-26', '1589127045', 'M', 'FENI', 'pang10@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000896', 'Sheila Walker', '1996-09-28', '1685902981', 'F', 'CHATTAGRAM', 'walkers7@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000897', 'Sylvia Herrera', '1966-06-05', '1858635385', 'F', 'DHAKA', 'sylviahe@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000898', 'Chin Fat', '1982-03-23', '1603069502', 'M', 'DHAKA', 'chinfat@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000899', 'Takada Ren', '1956-04-18', '1680977655', 'F', 'CHATTAGRAM', 'takada328@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000900', 'He Yunxi', '2002-02-04', '1532392320', 'M', 'DHAKA', 'yunxihe@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000901', 'Saito Hina', '1981-08-31', '1964753505', 'F', 'SYLHET', 'hinasa628@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000902', 'Goto Hazuki', '1946-12-12', '1514946109', 'F', 'MYMENSINGH', 'hazukigoto227@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000903', 'Chic Ka Keung', '2008-11-27', '1990269194', 'M', 'DHAKA', 'chickk@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000904', 'Sun Jiehong', '1977-05-10', '1644254781', 'M', 'DHAKA', 'jies@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000905', 'Hui Wai Man', '1966-03-09', '1500940906', 'F', 'CHATTAGRAM', 'wmhu@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000906', 'Ding Zhiyuan', '1989-12-31', '1700383898', 'M', 'DHAKA', 'dz803@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000907', 'Harada Takuya', '1982-12-18', '1929396313', 'M', 'DHAKA', 'htakuya922@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000908', 'Tse Wai Lam', '1998-01-12', '1861201409', 'F', 'KHULNA', 'tsewl813@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000909', 'Frank Martin', '1990-12-11', '1894349303', 'M', 'DHAKA', 'fm1996@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000910', 'Gong Lu', '1963-08-23', '1608194590', 'F', 'DHAKA', 'lug2@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000911', 'Aoki Nanami', '2000-06-19', '1906923123', 'M', 'CHATTAGRAM', 'aoki10@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000912', 'Sharon Campbell', '1979-07-19', '1524476849', 'F', 'RAJSHAHI', 'camsha6@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000913', 'Amy Campbell', '2005-12-06', '1733923974', 'F', 'DHAKA', 'amycamp3@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000914', 'Che Kwok Wing', '1984-03-13', '1777069514', 'M', 'SYLHET', 'chekwokwing4@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000915', 'Imai Minato', '1980-01-20', '1598918047', 'M', 'KHULNA', 'minato1946@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000916', 'Cho Wai San', '1958-05-25', '1817101223', 'F', 'DHAKA', 'cws03@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000917', 'Koo Hui Mei', '2006-12-25', '1509588056', 'F', 'CHATTAGRAM', 'huikoo@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000918', 'Shao Jiehong', '1949-05-16', '1913807109', 'M', 'FENI', 'shaojieh@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000919', 'Fujita Yamato', '1978-01-22', '1867096125', 'M', 'MYMENSINGH', 'fyamato@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000920', 'Kinoshita Yuito', '1983-08-21', '1622427184', 'M', 'CHATTAGRAM', 'kinoshita9@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000921', 'Lau Ching Wan', '1947-03-23', '1751070003', 'M', 'DHAKA', 'chingwanla@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000922', 'Joseph Simpson', '1993-07-16', '1700107066', 'M', 'KHULNA', 'josephs60@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000923', 'Hao Jialun', '1968-03-03', '1847886614', 'M', 'RAJSHAHI', 'jiaha@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000924', 'Dale Weaver', '1967-03-12', '1853252382', 'M', 'DHAKA', 'weavdale1021@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000925', 'Angela Moreno', '1983-04-18', '1577870985', 'F', 'DHAKA', 'moang@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000926', 'Maruyama Takuya', '1946-05-05', '1569292770', 'M', 'CHATTAGRAM', 'takuya1@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000927', 'Ogawa Kazuma', '1961-07-22', '1690879164', 'M', 'SYLHET', 'kazuma6@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000928', 'Du Jialun', '1981-07-05', '1846878779', 'M', 'DHAKA', 'djialun@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000929', 'Hao Xiaoming', '1950-10-06', '1995729266', 'M', 'KHULNA', 'xiaominghao@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000930', 'Jesse Gibson', '2008-03-26', '1914487348', 'M', 'DHAKA', 'gibsoje@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000931', 'Miyamoto Rena', '1963-06-29', '1658477356', 'F', 'DHAKA', 'miyamotorena@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000932', 'Wu Jiehong', '2019-08-18', '1748290354', 'M', 'CHATTAGRAM', 'jiehowu620@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000933', 'Ho Sum Wing', '1998-12-03', '1958522290', 'F', 'DHAKA', 'hosumwing@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000934', 'Lori Russell', '1978-05-18', '1809197432', 'F', 'RAJSHAHI', 'russelllori@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000935', 'Hu Zhennan', '1940-05-22', '1724213761', 'M', 'CHATTAGRAM', 'huz10@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000936', 'Song Zhiyuan', '2008-07-18', '1927594861', 'M', 'MYMENSINGH', 'zhiyuansong7@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000937', 'Chang Xiaoming', '1980-10-24', '1986293352', 'M', 'DHAKA', 'xiaoming5@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000938', 'Deng Zhennan', '1980-07-30', '1758131574', 'M', 'CHATTAGRAM', 'dengzhennan@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000939', 'Shing Wai San', '1995-02-21', '1530322900', 'F', 'DHAKA', 'waisans@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000940', 'Nicholas Fernandez', '2013-03-24', '1676249965', 'M', 'SYLHET', 'nichofernandez@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000941', 'Heung Kwok Yin', '1981-05-17', '1624664311', 'M', 'FENI', 'heung53@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000942', 'Chiba Sara', '2008-08-03', '1703743559', 'F', 'DHAKA', 'sarachiba@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000943', 'Kwong Ka Fai', '2001-03-12', '1922661299', 'M', 'KHULNA', 'kwong1216@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000944', 'Pang Lai Yan', '2011-11-29', '1765220312', 'F', 'CHATTAGRAM', 'lypan609@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000945', 'Endo Sakura', '2008-12-21', '1625664156', 'F', 'RAJSHAHI', 'endosakura@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000946', 'Gao Zhennan', '1960-09-10', '1832843066', 'M', 'DHAKA', 'gazhen1987@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000947', 'Wu Jialun', '1949-09-15', '1655531791', 'M', 'CHATTAGRAM', 'wuji@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000948', 'Fong Fu Shing', '1967-02-19', '1629885361', 'M', 'DHAKA', 'fofushing86@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000949', 'Meng Yunxi', '1987-08-28', '1637724351', 'M', 'DHAKA', 'yunximeng5@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000950', 'Fong Ching Wan', '1957-04-08', '1592934234', 'M', 'KHULNA', 'chinfo@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000951', 'Kwok Chieh Lun', '2007-12-20', '1717813277', 'M', 'DHAKA', 'kwokcl@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000952', 'Norman Freeman', '1957-07-12', '1871774971', 'M', 'DHAKA', 'norman66@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000953', 'Hsuan Sai Wing', '1963-02-21', '1751794703', 'M', 'MYMENSINGH', 'swhsuan1108@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000954', 'Henry Wright', '1942-05-23', '1648283394', 'M', 'DHAKA', 'wrighth@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000955', 'Jin Yuning', '1948-11-29', '1546906613', 'M', 'DHAKA', 'jin2@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000956', 'Wong Ka Fai', '1986-04-02', '1816268468', 'M', 'RAJSHAHI', 'wongkf211@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000957', 'Shi Yunxi', '1973-06-24', '1898235901', 'M', 'KHULNA', 'yunxi1946@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000958', 'Ho Sze Yu', '1944-05-09', '1897445949', 'F', 'DHAKA', 'szeyuho05@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000959', 'Jerry Webb', '1981-04-30', '1672103584', 'M', 'CHATTAGRAM', 'webb1@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000960', 'Kenneth Jackson', '2002-09-06', '1616081485', 'M', 'DHAKA', 'kennethjac508@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000961', 'Aaron Lewis', '1958-04-29', '1933908492', 'M', 'DHAKA', 'lewis12@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000962', 'Koon Ho Yin', '1991-01-30', '1861974203', 'M', 'CHATTAGRAM', 'hoyinkoon4@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000963', 'Dai Ka Ming', '2020-07-29', '1558480943', 'M', 'DHAKA', 'dkaming@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000964', 'Marjorie Guzman', '1957-04-19', '1676746342', 'F', 'FENI', 'marjorieguz@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000965', 'Sandra Rose', '1947-11-24', '1718242192', 'F', 'CHATTAGRAM', 'sandrar7@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000966', 'Nakamura Daichi', '1991-12-24', '1885123583', 'M', 'SYLHET', 'dainak1976@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000967', 'Lau Sze Kwan', '1966-11-27', '1585431083', 'F', 'RAJSHAHI', 'szekwanlau@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000968', 'Kato Ayano', '2006-08-16', '1601047463', 'F', 'CHATTAGRAM', 'kata@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000969', 'Choi Tsz Ching', '1981-04-05', '1967899060', 'F', 'DHAKA', 'tcchoi511@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000970', 'Kwan Hiu Tung', '1975-07-31', '1669222225', 'F', 'MYMENSINGH', 'kwan2003@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000971', 'Fujii Hina', '1991-04-20', '1988367725', 'F', 'KHULNA', 'hfuj4@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000972', 'Yang Lu', '1952-08-22', '1710255519', 'F', 'DHAKA', 'yang13@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000973', 'Ishii Ayato', '1994-04-07', '1927913873', 'M', 'DHAKA', 'ishayato2018@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000974', 'Ye Lu', '1947-06-30', '1871590231', 'F', 'CHATTAGRAM', 'yelu@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000975', 'Ren Zitao', '1943-12-26', '1742913589', 'M', 'DHAKA', 'zitao525@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000976', 'Kato Rin', '1973-12-21', '1911116024', 'F', 'DHAKA', 'rink17@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000977', 'Brandon Griffin', '2001-03-07', '1831898624', 'M', 'CHATTAGRAM', 'grbrandon@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000978', 'Anthony Anderson', '1961-02-19', '1791834831', 'M', 'RAJSHAHI', 'anderson9@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000979', 'Wang Xiaoming', '1957-07-16', '1990432500', 'M', 'SYLHET', 'waxiaoming@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000980', 'Kwong Sai Wing', '1989-03-04', '1830571833', 'M', 'CHATTAGRAM', 'kwongsaiwi@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000981', 'Wei Yuning', '1941-07-06', '1871281800', 'M', 'DHAKA', 'weiyun429@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000982', 'Masuda Rena', '1985-06-04', '1882993071', 'F', 'DHAKA', 'renamasuda@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000983', 'Yu Shihan', '1951-10-29', '1878920096', 'F', 'CHATTAGRAM', 'yshiha@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000984', 'Wada Mitsuki', '1962-07-30', '1569632355', 'F', 'DHAKA', 'mitsuki3@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000985', 'Victor Robertson', '1980-06-26', '1707899280', 'M', 'KHULNA', 'rvictor@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000986', 'Bobby Jackson', '1987-06-15', '1755472717', 'M', 'CHATTAGRAM', 'jacksonbobb@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000987', 'Miura Shino', '1987-09-17', '1978201819', 'F', 'FENI', 'miurashi@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000988', 'Yu Yuning', '1948-11-21', '1599926836', 'M', 'DHAKA', 'yuyuni7@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000989', 'Connie Barnes', '1951-02-21', '1603470850', 'F', 'RAJSHAHI', 'conniebarne218@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000990', 'Liang Yunxi', '1980-09-24', '1894876598', 'M', 'DHAKA', 'yunxi7@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000992', 'Han Cho Yee', '1982-02-02', '1934385382', 'F', 'SYLHET', 'hanchoyee@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000993', 'John Ford', '2011-03-17', '1942684857', 'M', 'DHAKA', 'jf19@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000994', 'Nishimura Minato', '1984-02-11', '1911981943', 'M', 'DHAKA', 'nishimura3@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000995', 'Tamura Nanami', '1953-08-17', '1663782307', 'M', 'CHATTAGRAM', 'nanamit62@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000996', 'Chen Ziyi', '2014-11-12', '1660928157', 'M', 'DHAKA', 'ziyi519@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000997', 'Kwong Ho Yin', '2001-05-20', '1823467199', 'M', 'DHAKA', 'kwong907@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000998', 'Deng Shihan', '1989-08-23', '1637369832', 'F', 'CHATTAGRAM', 'dengshiha@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000999', 'Alice Griffin', '2018-01-19', '1776128495', 'F', 'KHULNA', 'grialic616@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100001000', 'MD. NUR UDDIN SAIMON', '20-08-2000', '1853320901', 'M', 'RAJSHAHI', 'saimonnuruddin@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100001002', 'sayeed', '2022-07-31', '1835286271', 'M', 'dhaka', 'sayeed@yahooo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100001004', 'MD. SAYEEDUZZAMAN', '12-08-2000', '1923320921', 'M', 'MANIKGANJ', 'sayeed5443@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100001005', 'MD. RAYAN ISLAM', '11-01-2002', '1923322921', 'M', 'GAZIPUR', 'ggrayan@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000425', 'Okamoto Takuya', '1989-09-06', '1565648153', 'M', 'KHULNA', 'okamotot@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000426', 'Ikeda Miu', '1942-08-26', '1690330418', 'F', 'MYMENSINGH', 'mikeda1001@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000427', 'Yung Hok Yau', '1972-02-13', '1643800596', 'M', 'DHAKA', 'hyyu5@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000428', 'Jiang Zhiyuan', '1967-12-15', '1509291178', 'M', 'RAJSHAHI', 'zhij8@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000429', 'Wei Xiuying', '1974-04-01', '1686775153', 'F', 'DHAKA', 'xiuying1976@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000430', 'Hasegawa Sara', '2020-03-16', '1679277906', 'F', 'DHAKA', 'shasegawa@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000431', 'Loui Ming', '1943-01-07', '1903519741', 'M', 'CHATTAGRAM', 'loui914@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000432', 'Ito Hikari', '1972-08-11', '1792088972', 'F', 'KHULNA', 'hito1994@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000433', 'Du Yunxi', '1998-01-24', '1962379906', 'M', 'SYLHET', 'yunxidu58@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000434', 'Manuel Hill', '2016-06-14', '1550787671', 'M', 'CHATTAGRAM', 'hillmanuel1214@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000435', 'Thomas Thomas', '2010-11-09', '1766386532', 'M', 'FENI', 'ththom43@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000436', 'Aaron Davis', '1994-05-11', '1604970249', 'M', 'DHAKA', 'aarondavis@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000437', 'William Martin', '1983-09-30', '1613390385', 'M', 'CHATTAGRAM', 'mwil1230@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000438', 'Sakai Hikari', '1996-07-05', '1955962701', 'F', 'DHAKA', 'sahikari5@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000439', 'Yamamoto Hina', '1999-01-16', '1558768374', 'F', 'RAJSHAHI', 'hinayamamoto69@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000440', 'Tang Wai San', '2018-03-31', '1810741676', 'F', 'CHATTAGRAM', 'waisantang@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000441', 'Tam Chun Yu', '2012-05-30', '1863092274', 'M', 'DHAKA', 'tamcy@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000442', 'Chang Yunxi', '2004-10-17', '1581773284', 'M', 'DHAKA', 'yunxchang1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000443', 'Zhao Zitao', '2009-06-20', '1758830839', 'M', 'MYMENSINGH', 'zzha7@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000444', 'John Ramos', '1974-08-11', '1786042612', 'M', 'DHAKA', 'rjohn@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000445', 'Ding Yunxi', '1961-02-13', '1917998213', 'M', 'DHAKA', 'yunxid@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000446', 'Lok Kar Yan', '1971-06-15', '1939503611', 'F', 'SYLHET', 'karyan314@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000447', 'Tang Ling Ling', '1952-12-05', '1606988117', 'F', 'DHAKA', 'tlingling@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000448', 'Sakai Kazuma', '1981-11-24', '1688722434', 'M', 'DHAKA', 'ksakai@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000449', 'Wong Tsz Hin', '1954-02-04', '1915908632', 'M', 'CHATTAGRAM', 'tszhwong@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000450', 'Marcus Alexander', '1984-06-11', '1724152968', 'M', 'RAJSHAHI', 'marcale@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000451', 'Fujii Riku', '1991-07-29', '1720361232', 'M', 'DHAKA', 'rikufuj@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000452', 'Deng Lu', '1987-08-04', '1975670443', 'F', 'CHATTAGRAM', 'ludeng1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000453', 'Nakano Daichi', '1947-04-30', '1547697295', 'M', 'KHULNA', 'daichnakano@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000454', 'Steve Ford', '1964-08-29', '1524884995', 'M', 'DHAKA', 'steve116@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000455', 'Juan Grant', '1983-06-23', '1710607111', 'M', 'CHATTAGRAM', 'gjuan10@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000456', 'Cindy Allen', '2005-04-26', '1700744986', 'F', 'DHAKA', 'cindyalle1005@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000457', 'Man Tsz Hin', '1948-06-10', '1552538995', 'M', 'DHAKA', 'mantszhin@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000458', 'Otsuka Yuito', '2004-04-16', '1892114643', 'M', 'FENI', 'otsukyuito2@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000459', 'Chan Sze Yu', '2009-10-13', '1546534463', 'F', 'SYLHET', 'sychan8@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000460', 'Mo Shihan', '1948-03-02', '1884672232', 'F', 'MYMENSINGH', 'shihanmo@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000461', 'Cheung Wai Han', '1969-06-23', '1735209851', 'F', 'RAJSHAHI', 'waihan76@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000462', 'John Woods', '1988-09-21', '1934340669', 'M', 'DHAKA', 'johnwo@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000463', 'Leung Wai Han', '1983-11-04', '1668133284', 'F', 'DHAKA', 'leung8@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000464', 'Alexander Mendoza', '1979-08-13', '1730146916', 'M', 'CHATTAGRAM', 'mendozaalexander@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000465', 'Kondo Sara', '1988-12-08', '1786095017', 'F', 'DHAKA', 'konsara@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000466', 'Heung Wai Han', '1955-08-27', '1871292925', 'F', 'DHAKA', 'whheung@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000467', 'Nakamura Yuna', '1981-02-02', '1562225679', 'F', 'KHULNA', 'ny9@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000468', 'Harada Misaki', '1962-01-03', '1673878927', 'F', 'DHAKA', 'misakharada@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000469', 'Fan Lu', '1951-06-08', '1676506508', 'F', 'DHAKA', 'lufan02@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000470', 'Murakami Mitsuki', '1976-12-31', '1677499766', 'F', 'CHATTAGRAM', 'mitmurakami@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000471', 'Fujii Ryota', '1974-05-22', '1736884580', 'M', 'DHAKA', 'fur@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000472', 'Fu Lan', '1950-02-10', '1507642676', 'F', 'SYLHET', 'laf@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000473', 'Yamaguchi Airi', '1998-10-22', '1595476761', 'F', 'CHATTAGRAM', 'yamaguchia8@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000474', 'Janet Rose', '2000-09-02', '1621691217', 'F', 'KHULNA', 'rosejanet6@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000475', 'Taniguchi Shino', '1995-06-19', '1908899199', 'F', 'DHAKA', 'shinta9@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000476', 'Sasaki Itsuki', '1962-11-12', '1971734505', 'M', 'CHATTAGRAM', 'itsus@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000477', 'Ikeda Kazuma', '1964-08-27', '1659962162', 'M', 'MYMENSINGH', 'kazumikeda6@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000478', 'Wong Tin Lok', '2011-03-10', '1815086837', 'M', 'DHAKA', 'tinwo@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000479', 'Edna Sanchez', '1955-09-21', '1841724650', 'F', 'CHATTAGRAM', 'sanchezedna5@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000480', 'Sheh Ka Ming', '2008-10-27', '1708919089', 'M', 'DHAKA', 'kamingsh51@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000481', 'Wan Kwok Ming', '1940-10-25', '1820629454', 'M', 'FENI', 'wakm@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000482', 'Dawn Dunn', '1966-03-15', '1520040413', 'F', 'CHATTAGRAM', 'dund3@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000483', 'Xiong Anqi', '1978-02-09', '1946861780', 'F', 'RAJSHAHI', 'anqixiong@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000484', 'Sato Hazuki', '1941-11-10', '1860985447', 'F', 'DHAKA', 'hazuki1028@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000485', 'Pak Ling Ling', '1981-12-22', '1732547545', 'F', 'SYLHET', 'linglingpak@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000486', 'Kinoshita Yuto', '1948-08-12', '1701787774', 'M', 'DHAKA', 'yuto527@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000487', 'Ding Ziyi', '1976-03-08', '1517387158', 'M', 'DHAKA', 'ziyi4@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000488', 'Yamamoto Ren', '2018-08-26', '1597379497', 'F', 'KHULNA', 'renyamamoto1127@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000489', 'Fang Xiaoming', '1977-08-25', '1867462421', 'M', 'DHAKA', 'fang10@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000490', 'Takagi Hikaru', '1957-07-28', '1567445245', 'F', 'DHAKA', 'hiktakagi@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000491', 'Leslie Coleman', '1991-01-08', '1790185755', 'F', 'CHATTAGRAM', 'lcoleman@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000492', 'Wang Lu', '1972-11-28', '1775305132', 'F', 'DHAKA', 'luwang@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000493', 'Zheng Zitao', '1984-04-07', '1728563820', 'M', 'DHAKA', 'zizheng@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000494', 'Ikeda Hana', '1975-08-28', '1594447204', 'F', 'MYMENSINGH', 'hik@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000495', 'Ying Tsz Ching', '2011-05-17', '1801564081', 'F', 'KHULNA', 'yintszching@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000496', 'Jiang Xiuying', '2018-11-14', '1542508324', 'F', 'DHAKA', 'xiuyingjiang901@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000497', 'Luis Baker', '1974-11-24', '1576876413', 'M', 'CHATTAGRAM', 'luba926@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000498', 'Henry Sanchez', '1950-12-20', '1681707088', 'M', 'SYLHET', 'henrs@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000499', 'Kwan Sum Wing', '2011-06-07', '1813322726', 'F', 'DHAKA', 'kwasumwing@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000500', 'Donald Cox', '2007-09-24', '1642679236', 'M', 'CHATTAGRAM', 'coxdonald@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000501', 'Arai Mai', '1996-01-09', '1520156582', 'F', 'DHAKA', 'arai61@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000502', 'Judith Reed', '1981-05-16', '1662337809', 'F', 'KHULNA', 'reedjudith@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000503', 'Lok Wing Suen', '1961-04-08', '1759637623', 'F', 'CHATTAGRAM', 'lowingsuen@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000504', 'Xu Lan', '1973-04-13', '1857812568', 'F', 'FENI', 'lan4@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000505', 'Chan Yun Fat', '1947-03-01', '1616447790', 'M', 'RAJSHAHI', 'chan1215@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000506', 'Sun Lu', '1968-06-02', '1708949901', 'F', 'CHATTAGRAM', 'sunlu@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000507', 'Brandon Dixon', '1973-07-11', '1821571655', 'M', 'DHAKA', 'dixobrandon@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000508', 'Ito Yuna', '2004-12-22', '1983928621', 'F', 'DHAKA', 'iyuna1994@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000509', 'Matsuda Hikari', '1986-11-15', '1601423714', 'F', 'KHULNA', 'hmatsu630@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000510', 'Sakai Daisuke', '1940-07-03', '1612367218', 'M', 'DHAKA', 'daisuke1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000511', 'Gregory Myers', '1946-11-19', '1866003610', 'M', 'MYMENSINGH', 'myegregory@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000512', 'Takahashi Hikari', '1957-11-09', '1854059436', 'F', 'CHATTAGRAM', 'hikaritakah1016@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000513', 'Miura Ren', '1970-07-20', '1780284447', 'F', 'DHAKA', 'miurre@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000514', 'Yamaguchi Ryota', '1995-07-22', '1755647282', 'M', 'DHAKA', 'yamar511@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000515', 'Jesse Marshall', '1956-12-12', '1857949808', 'M', 'CHATTAGRAM', 'marshall9@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000516', 'Huang Jiehong', '2006-09-23', '1684583163', 'M', 'RAJSHAHI', 'jiehohuang603@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000517', 'Chang Yu Ling', '1992-01-09', '1566942080', 'F', 'DHAKA', 'ylch@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000518', 'Randall Ortiz', '2011-01-06', '1699152160', 'M', 'CHATTAGRAM', 'ranortiz10@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000519', 'Ma Tsz Ching', '2003-08-16', '1855584183', 'F', 'DHAKA', 'tcm@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000520', 'Zhong Xiuying', '1983-11-03', '1795585221', 'F', 'DHAKA', 'xz214@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000521', 'Russell Romero', '1981-04-23', '1510804212', 'M', 'CHATTAGRAM', 'russell8@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000522', 'Wong Sze Yu', '1952-03-15', '1990887127', 'F', 'DHAKA', 'szeyuwo1108@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000523', 'Yamamoto Mitsuki', '1991-03-04', '1789722886', 'F', 'KHULNA', 'ymi@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000524', 'Matsuda Ayato', '2019-12-27', '1549253875', 'M', 'SYLHET', 'ayatoma131@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000525', 'Kono Hikari', '1993-08-29', '1692654909', 'F', 'DHAKA', 'hikakono@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000526', 'Noguchi Hina', '1966-02-12', '1854900710', 'F', 'DHAKA', 'hnoguchi@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000527', 'Carrie Watson', '2010-06-17', '1875939841', 'F', 'FENI', 'carriew@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000528', 'Fujiwara Hazuki', '1989-06-11', '1921398083', 'F', 'MYMENSINGH', 'fujhazu1210@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000529', 'Ernest Webb', '2019-10-17', '1882622792', 'M', 'DHAKA', 'ewe4@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000530', 'Kono Seiko', '1956-12-21', '1741348109', 'F', 'KHULNA', 'konoseiko@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000531', 'Ogawa Miu', '1961-08-28', '1824505356', 'F', 'DHAKA', 'mo523@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000532', 'Hirano Eita', '1947-05-21', '1992913926', 'F', 'DHAKA', 'hirano1008@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000533', 'Lam Kwok Yin', '2000-07-30', '1875414930', 'M', 'CHATTAGRAM', 'kwokyin1964@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000534', 'Shao Anqi', '1983-07-20', '1896989227', 'F', 'DHAKA', 'anqishao2@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000535', 'Stephanie Boyd', '1976-12-12', '1707158482', 'F', 'DHAKA', 'boydstephanie@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000536', 'Annie Reyes', '1969-08-28', '1691431915', 'F', 'CHATTAGRAM', 'anreyes1966@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000537', 'Yamazaki Hina', '2010-10-17', '1650751258', 'F', 'SYLHET', 'hiyam510@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000538', 'Peng Zhiyuan', '1966-12-08', '1916641102', 'M', 'RAJSHAHI', 'peng8@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000539', 'Clara Crawford', '1962-10-22', '1858205665', 'F', 'CHATTAGRAM', 'clara10@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000540', 'Dai Lan', '1979-01-08', '1685362273', 'F', 'DHAKA', 'landai@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000541', 'Hu Zitao', '1960-10-14', '1944541555', 'M', 'DHAKA', 'hu804@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000542', 'Dorothy Mills', '1969-04-11', '1738926441', 'F', 'CHATTAGRAM', 'dorothymil324@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000543', 'Rosa Kim', '1997-11-21', '1762617947', 'F', 'DHAKA', 'kimrosa@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000544', 'Mori Aoi', '1962-02-20', '1674143838', 'F', 'KHULNA', 'mori1208@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000545', 'Watanabe Ikki', '1961-07-19', '1797936735', 'M', 'MYMENSINGH', 'watanabei@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000546', 'Yuen Tsz Hin', '2007-07-19', '1930675428', 'M', 'DHAKA', 'tszhinyuen@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000547', 'Johnny Black', '1977-09-20', '1953026934', 'M', 'DHAKA', 'blackjohnny@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000548', 'Hara Yota', '1990-08-14', '1851213521', 'M', 'CHATTAGRAM', 'hara416@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000549', 'Chow Chiu Wai', '1988-12-18', '1611757194', 'M', 'RAJSHAHI', 'chochiuwai@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000550', 'Hung Ka Ling', '2005-09-17', '1952027304', 'F', 'FENI', 'hkl@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000551', 'Taniguchi Yuto', '1945-07-10', '1683564723', 'M', 'KHULNA', 'yutaniguchi5@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000552', 'Miyamoto Akina', '1957-04-29', '1965612600', 'F', 'DHAKA', 'ami75@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000553', 'Andrew Castro', '1990-10-22', '1507591491', 'M', 'DHAKA', 'acast@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000554', 'Su Zhennan', '1995-03-16', '1905661937', 'M', 'CHATTAGRAM', 'suzhenn@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000555', 'Taniguchi Riku', '1943-03-14', '1735228351', 'M', 'DHAKA', 'taniguchi18@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000556', 'Raymond Green', '1987-04-22', '1864509531', 'M', 'DHAKA', 'raymond84@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000557', 'Takeda Kasumi', '1940-10-08', '1562532912', 'M', 'CHATTAGRAM', 'takedakasumi@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000558', 'Yung Chi Ming', '2018-12-04', '1951372193', 'M', 'KHULNA', 'chiming1029@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000559', 'Zeng Zhiyuan', '1963-08-14', '1575284300', 'M', 'DHAKA', 'zhiyuanzen1985@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000560', 'Pan Yuning', '1942-12-15', '1597115286', 'M', 'RAJSHAHI', 'ypa8@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000561', 'Kondo Ikki', '1985-09-09', '1819616288', 'M', 'DHAKA', 'ikki2018@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000562', 'Yu Xiuying', '1961-03-09', '1601046835', 'F', 'MYMENSINGH', 'xiuyu@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000563', 'Tao Jiehong', '1982-09-04', '1905666422', 'M', 'SYLHET', 'jtao@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000564', 'Fujii Kasumi', '1993-04-29', '1922837876', 'M', 'DHAKA', 'kfu50@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000565', 'Kong Zitao', '2006-10-30', '1686163596', 'M', 'KHULNA', 'zkong@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000566', 'Wang Rui', '1975-01-03', '1534974412', 'M', 'CHATTAGRAM', 'wang1958@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000567', 'Nathan Cole', '1944-03-15', '1657389345', 'M', 'DHAKA', 'colenathan@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000568', 'Wei Zitao', '2019-06-21', '1821459218', 'M', 'DHAKA', 'weizi@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000569', 'Roger Hawkins', '1998-02-07', '1539403848', 'M', 'CHATTAGRAM', 'rogerhawkins1@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000570', 'Gary Ross', '1947-02-11', '1764666722', 'M', 'DHAKA', 'roga8@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000571', 'Julia Mason', '1953-06-20', '1786503025', 'F', 'RAJSHAHI', 'jumaso2011@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000572', 'Lee Cho Yee', '1969-05-15', '1939805245', 'F', 'KHULNA', 'leechoyee826@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000573', 'Ando Daichi', '1983-01-15', '1784774691', 'M', 'FENI', 'dan@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000574', 'Allen Walker', '2007-10-06', '1967656713', 'M', 'DHAKA', 'allenwalker@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000575', 'Antonio Reyes', '1943-11-03', '1973649550', 'M', 'CHATTAGRAM', 'areyes@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000576', 'Heung Wai Man', '1981-04-25', '1743574835', 'F', 'SYLHET', 'wmheung@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000577', 'Phyllis Cole', '1949-06-14', '1988922728', 'F', 'DHAKA', 'pcole107@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000578', 'Tiffany Ross', '1985-03-20', '1813104890', 'F', 'CHATTAGRAM', 'tiffaro97@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000579', 'Barbara Collins', '1986-08-29', '1841427126', 'F', 'MYMENSINGH', 'barcollins@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000580', 'Dai Xiaoming', '1979-03-02', '1907431290', 'M', 'DHAKA', 'xiaomingd1222@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000581', 'Cui Lan', '2015-12-11', '1800968672', 'F', 'CHATTAGRAM', 'cui10@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000582', 'Meng Tsz Hin', '1955-06-20', '1776977855', 'M', 'RAJSHAHI', 'tsme927@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000583', 'Yin Zitao', '1998-09-06', '1747515939', 'M', 'DHAKA', 'yinzitao8@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000584', 'Tong Kwok Wing', '1956-06-22', '1659879967', 'M', 'CHATTAGRAM', 'kwokwington@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000585', 'Lee Ka Fai', '1958-11-28', '1707425315', 'M', 'DHAKA', 'leekafai@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000586', 'Inoue Minato', '2001-10-18', '1800899876', 'M', 'KHULNA', 'inoueminato1965@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000587', 'Mori Takuya', '1987-12-29', '1812859357', 'M', 'CHATTAGRAM', 'tmo56@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000588', 'Nakagawa Ren', '1969-08-02', '1913702355', 'F', 'DHAKA', 'rnakagawa@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000589', 'Gong Zhiyuan', '1982-04-21', '1837752686', 'M', 'SYLHET', 'zhiyuan10@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000590', 'Nancy Richardson', '2014-11-11', '1729768439', 'F', 'CHATTAGRAM', 'nancy07@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000591', 'Anne Anderson', '1952-09-24', '1766257307', 'F', 'DHAKA', 'anan@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000592', 'Chin Wai Man', '2003-09-28', '1919891969', 'F', 'DHAKA', 'chinwm5@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000593', 'Ye Anqi', '1984-05-04', '1575961862', 'F', 'RAJSHAHI', 'anqi10@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000594', 'Nakajima Yuna', '1997-05-15', '1920965988', 'F', 'DHAKA', 'nakajimay@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000595', 'Sylvia Bell', '1985-11-03', '1908770769', 'F', 'DHAKA', 'sylvibell7@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000596', 'Kong Sum Wing', '1974-04-07', '1691886757', 'F', 'FENI', 'kosw@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000597', 'Victoria Anderson', '1956-03-22', '1812407067', 'F', 'DHAKA', 'vanderson@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000598', 'Hao Anqi', '1994-06-22', '1817627367', 'F', 'DHAKA', 'hao415@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000599', 'Ellen Stephens', '1985-11-12', '1838889037', 'F', 'CHATTAGRAM', 'ste@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000600', 'Mok Ka Ming', '1942-06-18', '1696915067', 'M', 'KHULNA', 'kmmo@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000601', 'Loui Ming Sze', '2016-05-09', '1531567597', 'F', 'DHAKA', 'mingszelou@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000602', 'Beverly Vasquez', '2007-05-16', '1735986700', 'F', 'SYLHET', 'vasquezb@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000603', 'Nakamori Misaki', '2016-07-15', '1635552261', 'F', 'DHAKA', 'nmisaki4@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000604', 'Sato Ikki', '1945-02-03', '1513105980', 'M', 'RAJSHAHI', 'sato8@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000605', 'Ma Anqi', '1946-03-13', '1710938497', 'F', 'CHATTAGRAM', 'anqima71@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000606', 'Florence Patel', '1963-02-22', '1554564099', 'F', 'DHAKA', 'patelflorence1966@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000607', 'Hui Wai Lam', '1950-02-18', '1932024717', 'F', 'KHULNA', 'huiwl@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000608', 'Arimura Tsubasa', '1994-04-09', '1518367002', 'M', 'CHATTAGRAM', 'tsar1945@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000609', 'Matthew Barnes', '1997-12-03', '1635836308', 'M', 'DHAKA', 'barnesmatthew@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000610', 'Fan Yu Ling', '1993-02-17', '1656278157', 'F', 'DHAKA', 'yulingfan@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000611', 'Arai Ikki', '1961-06-12', '1748431787', 'M', 'CHATTAGRAM', 'aik@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000612', 'Yamada Eita', '1964-02-12', '1786863580', 'F', 'DHAKA', 'yeita3@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000613', 'Heung Wing Sze', '1984-08-10', '1827469354', 'F', 'MYMENSINGH', 'hewingsze@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000614', 'Jane Romero', '1945-05-04', '1673799295', 'F', 'KHULNA', 'rojan7@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000615', 'Nakamura Itsuki', '1944-11-23', '1954035010', 'M', 'SYLHET', 'itsukinakamura5@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000616', 'Huang Zitao', '1999-08-23', '1910032126', 'M', 'DHAKA', 'zithu@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000617', 'Lee Walker', '2011-01-13', '1749686665', 'M', 'CHATTAGRAM', 'walkerle@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000618', 'Stephen Owens', '2000-02-25', '1539033999', 'M', 'DHAKA', 'stephen2@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000619', 'Wan Chieh Lun', '1997-05-30', '1731482844', 'M', 'FENI', 'wancl909@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000620', 'Taniguchi Itsuki', '1954-03-30', '1784531989', 'M', 'CHATTAGRAM', 'itstaniguchi@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000621', 'Chang Ka Man', '2019-03-20', '1762510014', 'M', 'KHULNA', 'kamanchang@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000622', 'Martha Russell', '1991-08-07', '1709396270', 'F', 'DHAKA', 'marru70@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000623', 'Shimizu Kaito', '1962-08-30', '1762323498', 'M', 'CHATTAGRAM', 'shimkai@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000624', 'Kudo Kaito', '1997-08-14', '1767457347', 'M', 'DHAKA', 'kudokait@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000625', 'Ito Ayano', '1967-09-03', '1783443744', 'F', 'DHAKA', 'ayaito1995@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000626', 'Annie Russell', '2000-09-28', '1917089358', 'F', 'RAJSHAHI', 'anrusse8@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000627', 'Cheung Sum Wing', '1975-06-05', '1926221149', 'F', 'DHAKA', 'cheungsw@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000628', 'Sato Momoka', '1989-11-25', '1980389842', 'F', 'SYLHET', 'smomok@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000629', 'Fujita Hazuki', '1983-12-29', '1587623346', 'F', 'CHATTAGRAM', 'fujihazuki@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000630', 'Tracy Howard', '1974-01-01', '1924372155', 'F', 'MYMENSINGH', 'trahowar@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000631', 'Juan Kelly', '2005-05-04', '1615965170', 'M', 'DHAKA', 'kelly710@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000632', 'Eddie Wells', '1967-10-16', '1967752051', 'M', 'CHATTAGRAM', 'wellse1950@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000633', 'Miyazaki Hikari', '1998-11-24', '1535513391', 'F', 'DHAKA', 'miyhikari1993@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000634', 'Kinoshita Daisuke', '1977-02-09', '1657607294', 'M', 'DHAKA', 'kinoshitadai@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000635', 'Lai Wing Suen', '2017-01-29', '1559354499', 'F', 'KHULNA', 'laiwing@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000636', 'Alexander Reyes', '1943-04-09', '1593313247', 'M', 'DHAKA', 'reyea@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000637', 'Mak Wai San', '1998-07-28', '1534451715', 'F', 'RAJSHAHI', 'makws2004@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000638', 'Murakami Yuito', '2004-10-06', '1939241691', 'M', 'CHATTAGRAM', 'ymurakami@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000639', 'Hu Xiaoming', '1982-02-19', '1938333208', 'M', 'DHAKA', 'xihu@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000640', 'Ueno Mai', '1998-10-29', '1992402077', 'F', 'DHAKA', 'mueno@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000641', 'Hou Xiaoming', '1988-02-18', '1952252686', 'M', 'SYLHET', 'hou3@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000642', 'Sit Wing Fat', '1990-04-09', '1542716605', 'M', 'FENI', 'sitwf9@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000643', 'Matsumoto Yuto', '1950-05-19', '1638641477', 'M', 'DHAKA', 'ymatsumoto64@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000644', 'Che Yun Fat', '1950-10-29', '1540815485', 'M', 'CHATTAGRAM', 'cyf@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000645', 'Koo Kwok Wing', '1979-05-16', '1916012418', 'M', 'DHAKA', 'kookw@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000646', 'Stanley Boyd', '1970-07-13', '1992325968', 'M', 'DHAKA', 'boydstanley@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000647', 'Marjorie Martin', '1947-11-08', '1535102359', 'F', 'MYMENSINGH', 'mma@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000648', 'Sakamoto Seiko', '1981-01-17', '1600893797', 'F', 'RAJSHAHI', 'sesak@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000649', 'Meng Sze Yu', '1941-03-13', '1666658947', 'F', 'KHULNA', 'symeng79@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000650', 'April Gomez', '2004-08-29', '1897014222', 'F', 'CHATTAGRAM', 'aprilgomez@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000651', 'Li Anqi', '1975-07-11', '1613551654', 'F', 'DHAKA', 'anqi96@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000652', 'Mo On Na', '2002-11-04', '1737682928', 'F', 'DHAKA', 'onm1993@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000653', 'Kobayashi Eita', '1971-06-09', '1761741313', 'F', 'CHATTAGRAM', 'eikobay@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000654', 'Liu Lu', '1997-10-21', '1593374668', 'F', 'SYLHET', 'lli@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000655', 'Chen Yuning', '1963-10-10', '1591847941', 'M', 'DHAKA', 'chenyuni1007@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000656', 'Yuan Lan', '1995-05-04', '1708963681', 'F', 'KHULNA', 'lyuan7@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000657', 'Ng Sum Wing', '1984-03-02', '1682199107', 'F', 'DHAKA', 'sumwingn611@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000658', 'Glenn Herrera', '1940-08-07', '1976771005', 'M', 'DHAKA', 'ghe1985@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000659', 'Chow Hok Yau', '1975-01-04', '1837974882', 'M', 'RAJSHAHI', 'hokyau214@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000660', 'Hasegawa Misaki', '1958-09-26', '1722516552', 'F', 'DHAKA', 'hasegawa215@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000661', 'Jesse Jones', '1961-08-11', '1996017716', 'M', 'DHAKA', 'jessejone@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000662', 'Morita Ayato', '1999-02-15', '1650203135', 'M', 'CHATTAGRAM', 'morita12@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000663', 'Ishii Sakura', '1992-03-25', '1784314236', 'F', 'KHULNA', 'ishiisakura@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000664', 'Shi Zitao', '1950-01-26', '1560325263', 'M', 'MYMENSINGH', 'szitao@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000665', 'Lam Sze Yu', '1976-11-03', '1854696238', 'F', 'FENI', 'lam2@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000666', 'Chow Tak Wah', '1950-10-05', '1797538848', 'M', 'DHAKA', 'chowtw@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000667', 'Marvin Hunter', '2016-04-23', '1588795888', 'M', 'SYLHET', 'hunterm@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000668', 'Shing Ka Fai', '2014-05-13', '1715510229', 'M', 'CHATTAGRAM', 'shikafai@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000669', 'Lok Tak Wah', '1965-02-08', '1813302487', 'M', 'DHAKA', 'loktw3@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000670', 'Fu Jialun', '1982-09-17', '1937902844', 'M', 'RAJSHAHI', 'jialuf@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000671', 'Kondo Rena', '1956-05-08', '1868592860', 'F', 'CHATTAGRAM', 'kondo411@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000672', 'Man Kar Yan', '1968-04-17', '1721635749', 'F', 'DHAKA', 'kyman40@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000673', 'Jia Zhennan', '1959-10-18', '1983580051', 'M', 'DHAKA', 'jia1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000674', 'Yuen Ka Ling', '2007-02-07', '1968951370', 'F', 'CHATTAGRAM', 'yuenkaling8@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000675', 'Nakano Ren', '1991-12-14', '1954032800', 'F', 'DHAKA', 'nakanoren@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000676', 'Fong Tin Wing', '1976-09-22', '1811747850', 'M', 'DHAKA', 'fontw@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000677', 'Walter Miller', '1945-09-29', '1678273569', 'M', 'KHULNA', 'millerwalter7@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000678', 'Carol Munoz', '2003-07-01', '1607373709', 'F', 'DHAKA', 'mucarol2@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000679', 'Scott Baker', '1973-04-27', '1663097663', 'M', 'DHAKA', 'sbaker79@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000680', 'James Warren', '1949-02-09', '1973956888', 'M', 'SYLHET', 'jamewarr@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000681', 'Long Ziyi', '1991-04-07', '1762710281', 'M', 'MYMENSINGH', 'long16@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000682', 'Lu Zhennan', '1947-07-21', '1912706469', 'M', 'DHAKA', 'lu423@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000683', 'Ueno Misaki', '2001-11-27', '1988860559', 'F', 'CHATTAGRAM', 'uenomisaki1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000684', 'Don Webb', '1996-11-01', '1629399180', 'M', 'KHULNA', 'dweb@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000685', 'Manuel Fernandez', '1957-08-04', '1963736014', 'M', 'DHAKA', 'fernandezmanuel13@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000686', 'Stephanie Martin', '1973-11-19', '1869723372', 'F', 'CHATTAGRAM', 'martinstephanie@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000687', 'Ishii Hana', '1999-08-01', '1760390347', 'F', 'DHAKA', 'hana5@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000688', 'Ng Sai Wing', '1999-02-26', '1892794653', 'M', 'FENI', 'nsaiwing@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000689', 'Yuen Sze Kwan', '1953-05-29', '1509148510', 'F', 'CHATTAGRAM', 'yuen405@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000690', 'Hashimoto Airi', '1947-01-11', '1672057784', 'F', 'DHAKA', 'hairi@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000691', 'Tao Zhennan', '1991-10-21', '1714771594', 'M', 'KHULNA', 'zhennan1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000692', 'Mo Lu', '1950-03-13', '1825203721', 'F', 'RAJSHAHI', 'mo114@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000693', 'Loui Ling Ling', '1978-03-02', '1808814703', 'F', 'SYLHET', 'lll@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000694', 'Nakamura Kasumi', '1968-10-13', '1897890169', 'M', 'DHAKA', 'nkasu2@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000695', 'Yuen Ting Fung', '1949-10-23', '1841871831', 'M', 'CHATTAGRAM', 'tfyuen@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000696', 'Tamura Daisuke', '2013-01-02', '1678155893', 'M', 'DHAKA', 'tamuradaisu@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000697', 'Jia Jialun', '1945-12-20', '1826513826', 'M', 'DHAKA', 'jiji@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000698', 'Meng Zhennan', '1976-02-09', '1924726134', 'M', 'MYMENSINGH', 'mengzh@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000699', 'Gao Lu', '1942-10-05', '1848881450', 'F', 'DHAKA', 'gaolu8@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000700', 'Takagi Miu', '1988-03-08', '1991881041', 'F', 'DHAKA', 'mitakagi4@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000701', 'Long Jiehong', '1972-12-19', '1996356492', 'M', 'CHATTAGRAM', 'longjieh@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000702', 'Xu Shihan', '2008-03-24', '1592414107', 'F', 'DHAKA', 'shihanxu@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000703', 'Ono Yota', '1943-08-31', '1544948298', 'M', 'RAJSHAHI', 'yotaono@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000704', 'Zhong Lan', '1995-09-08', '1741844596', 'F', 'CHATTAGRAM', 'zhongla@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000705', 'Jeremy Young', '1962-08-16', '1874133039', 'M', 'KHULNA', 'jeremy@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000706', 'Lei Xiuying', '1995-03-13', '1695881321', 'F', 'SYLHET', 'leixiuy@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000707', 'Florence Hamilton', '1977-12-04', '1640874961', 'F', 'CHATTAGRAM', 'hamilflorence@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000708', 'Cheng Wai Man', '2010-02-11', '1933737810', 'F', 'DHAKA', 'waiman7@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000709', 'Zhao Ziyi', '1970-09-05', '1917093397', 'M', 'DHAKA', 'zz03@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000710', 'Chen Lan', '1941-06-18', '1627159572', 'F', 'CHATTAGRAM', 'chenlan@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000711', 'Lok Sum Wing', '2008-04-25', '1529046298', 'F', 'FENI', 'loksw58@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000712', 'Siu Wai Lam', '1945-06-08', '1840342328', 'F', 'KHULNA', 'siwl1129@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000713', 'Martha Crawford', '1965-09-17', '1768194780', 'F', 'CHATTAGRAM', 'martha5@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000714', 'Loui On Kay', '1966-09-15', '1907178672', 'F', 'RAJSHAHI', 'louiok@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000715', 'Glenn Baker', '2005-08-01', '1882124845', 'M', 'MYMENSINGH', 'glenb2012@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000716', 'Judith Patterson', '1960-05-26', '1505886839', 'F', 'CHATTAGRAM', 'pjudith@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000717', 'Eugene Long', '2002-04-09', '1504140260', 'M', 'DHAKA', 'longeugene@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000718', 'Ma Fat', '1997-08-13', '1970590428', 'M', 'DHAKA', 'fama@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000719', 'Mui Wai Man', '1995-06-07', '1949046351', 'F', 'SYLHET', 'wmm4@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000720', 'Xiong Xiaoming', '1967-08-13', '1561802819', 'M', 'DHAKA', 'xiaoxio128@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000721', 'Fang Yuning', '1988-04-23', '1975260667', 'M', 'DHAKA', 'yuning00@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000722', 'Peng Anqi', '1965-08-04', '1989389243', 'F', 'CHATTAGRAM', 'ape6@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000723', 'Bryan Roberts', '1958-11-01', '1553846767', 'M', 'DHAKA', 'bryan3@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000724', 'Tong Tsz Ching', '1951-01-15', '1810956722', 'F', 'DHAKA', 'tctong10@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000725', 'Qian Zhennan', '1988-02-12', '1977872275', 'M', 'RAJSHAHI', 'zqian52@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000726', 'Kam Suk Yee', '1989-03-04', '1990278262', 'F', 'KHULNA', 'sukyee83@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000727', 'Tan Shihan', '1993-04-09', '1631881211', 'F', 'DHAKA', 'tans2@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000728', 'Shen Yunxi', '1943-09-13', '1810266855', 'M', 'CHATTAGRAM', 'shen6@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000729', 'Yokoyama Ayato', '2009-07-04', '1804335357', 'M', 'DHAKA', 'ayaty@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000730', 'Chung Chun Yu', '1952-10-20', '1967683657', 'M', 'DHAKA', 'cychung85@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000731', 'Du Zhennan', '1958-05-05', '1842834932', 'M', 'CHATTAGRAM', 'zhennandu@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000732', 'Tsui On Kay', '1975-11-23', '1919792824', 'F', 'MYMENSINGH', 'tok@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000733', 'Koo Ka Ming', '2004-07-27', '1558129376', 'M', 'KHULNA', 'koo407@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000734', 'Tan Yunxi', '1998-10-28', '1631333503', 'M', 'FENI', 'yunxi317@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000735', 'Larry Bell', '1978-03-15', '1772359024', 'M', 'DHAKA', 'larbell1217@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000736', 'Li Lu', '2015-01-04', '1674312085', 'F', 'RAJSHAHI', 'lil@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000737', 'Gao Shihan', '1987-05-16', '1528307175', 'F', 'CHATTAGRAM', 'shihgao@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000738', 'Doris Baker', '1969-05-25', '1845457832', 'F', 'DHAKA', 'dorb1209@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000739', 'Koon Kwok Ming', '1945-10-30', '1639398066', 'M', 'DHAKA', 'kokwokming@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000740', 'Su Zitao', '1962-10-12', '1571070789', 'M', 'KHULNA', 'suzitao@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000741', 'Marilyn Moreno', '2011-05-08', '1868675182', 'F', 'DHAKA', 'marilynmoreno2019@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000742', 'Lu Zhiyuan', '1976-12-22', '1510313716', 'M', 'DHAKA', 'zhlu@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000743', 'Yamashita Eita', '1961-09-01', '1744739444', 'F', 'CHATTAGRAM', 'yeita@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000744', 'Kwok Wai Han', '1968-06-21', '1610123088', 'F', 'DHAKA', 'whkwo819@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000745', 'Chu Fat', '2010-03-26', '1759634949', 'M', 'SYLHET', 'chufat@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000746', 'Wu Zhiyuan', '1986-03-31', '1895709256', 'M', 'CHATTAGRAM', 'zhiyuan423@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000747', 'Tsang Sze Kwan', '1964-02-06', '1893994932', 'F', 'RAJSHAHI', 'sktsang10@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000748', 'Tsui Hiu Tung', '1964-04-07', '1787789650', 'F', 'DHAKA', 'tsui704@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000749', 'Anita Sanchez', '1989-12-31', '1754284314', 'F', 'MYMENSINGH', 'anitas@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000750', 'Christine Mills', '1960-08-05', '1930601537', 'F', 'DHAKA', 'chrimill121@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000751', 'Yuen Kwok Wing', '2006-10-21', '1825671888', 'M', 'DHAKA', 'yuekwo@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000752', 'Zou Zhennan', '1959-01-27', '1674066415', 'M', 'CHATTAGRAM', 'zzo906@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000753', 'Judith Peterson', '2014-03-16', '1548859908', 'F', 'DHAKA', 'peterjudith14@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000754', 'Leung Wai Man', '1968-11-06', '1863614408', 'F', 'KHULNA', 'waimanleu6@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000755', 'Xiao Zitao', '2000-01-14', '1810798911', 'M', 'CHATTAGRAM', 'xiazitao52@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000756', 'Kikuchi Yuito', '1948-01-19', '1621733503', 'M', 'DHAKA', 'kikuchi97@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000757', 'Iwasaki Yuna', '1976-07-17', '1711768805', 'F', 'FENI', 'iwasakiyuna@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000758', 'Glenn Taylor', '2010-01-23', '1983894858', 'M', 'SYLHET', 'gletaylor@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000759', 'Ishida Daichi', '1992-09-01', '1864505914', 'M', 'DHAKA', 'isdaich@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000760', 'Anthony Graham', '1943-12-02', '1985235011', 'M', 'DHAKA', 'grahamanthony@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000761', 'Yeung Wai Man', '1960-02-22', '1908884918', 'F', 'KHULNA', 'ywm@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000762', 'Wanda Jordan', '1953-06-09', '1688006942', 'F', 'DHAKA', 'wandajo1947@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000763', 'Hashimoto Kasumi', '1950-02-03', '1788964888', 'M', 'DHAKA', 'haskasumi@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000764', 'Murakami Kenta', '1978-05-07', '1639415904', 'M', 'CHATTAGRAM', 'kentam@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000765', 'Stanley Snyder', '1992-07-31', '1908705325', 'M', 'DHAKA', 'stasnyde7@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000766', 'Saito Mio', '1970-06-06', '1983176390', 'F', 'MYMENSINGH', 'miosaito4@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000767', 'Douglas Rivera', '1945-03-15', '1961805751', 'M', 'CHATTAGRAM', 'driver@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000768', 'Yamamoto Aoshi', '1985-06-08', '1981606123', 'M', 'KHULNA', 'yaoshi2@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000769', 'Wei Zhennan', '2013-03-06', '1983831555', 'M', 'RAJSHAHI', 'weizhen11@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000770', 'Jonathan Gray', '1953-09-01', '1613674182', 'M', 'CHATTAGRAM', 'jonathangr@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000771', 'Miura Takuya', '1977-10-11', '1792041774', 'M', 'SYLHET', 'takuyam1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000772', 'Sasaki Hikaru', '2020-07-05', '1586874701', 'F', 'DHAKA', 'sasakihikar1978@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000773', 'Sato Hina', '1975-09-06', '1800713650', 'F', 'CHATTAGRAM', 'sahin@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000774', 'Ishikawa Ayano', '1983-05-25', '1715871238', 'F', 'DHAKA', 'aishi9@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000775', 'Laura Robinson', '1993-04-29', '1688444953', 'F', 'KHULNA', 'laurro@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000776', 'Zhou Rui', '1958-09-15', '1753333799', 'M', 'CHATTAGRAM', 'zhou1997@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000777', 'Ng Wai Yee', '2019-01-29', '1775691537', 'F', 'DHAKA', 'waiyeeng1984@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000778', 'Cui Xiaoming', '2001-12-18', '1600275965', 'M', 'DHAKA', 'cuxiaoming@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000779', 'Guo Shihan', '1961-12-15', '1867388129', 'F', 'CHATTAGRAM', 'shig@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000780', 'Luis Murray', '1971-02-01', '1901365818', 'M', 'FENI', 'murral@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000781', 'Yuen Ming Sze', '1978-02-07', '1617732568', 'F', 'DHAKA', 'mingszeyuen@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000782', 'Loui Lai Yan', '2012-12-06', '1720508851', 'F', 'KHULNA', 'lly@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000783', 'Liu Xiuying', '1974-10-14', '1881483380', 'F', 'MYMENSINGH', 'lxiuy81@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000784', 'Keith Dunn', '2020-02-27', '1541707045', 'M', 'SYLHET', 'dunnk8@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000785', 'Su Lan', '1998-01-28', '1716712636', 'F', 'CHATTAGRAM', 'sulan1@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000786', 'Hung Wing Kuen', '2003-08-22', '1797199245', 'M', 'DHAKA', 'hwk@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000787', 'Stephanie Ward', '1982-01-26', '1932215417', 'F', 'DHAKA', 'warstephanie@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000788', 'Wan Kwok Yin', '2013-10-17', '1864922275', 'M', 'CHATTAGRAM', 'wankwokyin1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000789', 'Inoue Kasumi', '1983-01-24', '1532857077', 'M', 'KHULNA', 'inouekasumi@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000790', 'Kudo Daichi', '1973-04-05', '1699209245', 'M', 'DHAKA', 'kudo326@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000791', 'Ueda Kazuma', '1976-05-24', '1939586130', 'M', 'RAJSHAHI', 'ukazu920@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000792', 'Gong Rui', '2006-03-05', '1873999645', 'M', 'DHAKA', 'rugong220@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000793', 'Hui Ming Sze', '1988-01-14', '1569416383', 'F', 'DHAKA', 'huims@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000794', 'To Wing Suen', '1945-04-13', '1951181002', 'F', 'CHATTAGRAM', 'wingsuento3@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000795', 'Harold Wilson', '1985-08-25', '1843218636', 'M', 'DHAKA', 'hawilson@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000796', 'Ellen Ward', '1970-08-19', '1985025486', 'F', 'KHULNA', 'wardell4@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000797', 'Miguel Mills', '1996-11-25', '1702814996', 'M', 'SYLHET', 'miguelmil@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000798', 'Lok Kwok Kuen', '1952-06-24', '1905735963', 'M', 'DHAKA', 'lokkk@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000799', 'Robin Ruiz', '1967-02-19', '1898698681', 'F', 'DHAKA', 'rro66@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000800', 'Sakamoto Ikki', '2001-02-28', '1540071674', 'M', 'MYMENSINGH', 'saikki119@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000801', 'Xie Yuning', '1970-03-19', '1600511149', 'M', 'DHAKA', 'xieyuning8@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000802', 'Tao Ka Ming', '1941-01-10', '1879403799', 'M', 'RAJSHAHI', 'taokaming@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000803', 'Zhong Shihan', '2013-01-04', '1912238214', 'F', 'FENI', 'shizhong2@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000804', 'Jiang Xiaoming', '1994-11-24', '1730375088', 'M', 'DHAKA', 'jxiaoming@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000805', 'Shannon Diaz', '2014-09-28', '1671590384', 'F', 'DHAKA', 'shannondiaz@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000806', 'Mak Ka Keung', '1982-10-04', '1547187349', 'M', 'CHATTAGRAM', 'makkk@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000807', 'Glenn Young', '1971-12-25', '1741035402', 'M', 'DHAKA', 'youngglenn@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000808', 'Patricia Dixon', '2015-04-14', '1742971088', 'F', 'DHAKA', 'dixonpat@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000809', 'Wang Zhiyuan', '1997-07-10', '1737918955', 'M', 'CHATTAGRAM', 'wangz327@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000810', 'Eva Dixon', '1987-05-24', '1724721619', 'F', 'SYLHET', 'deva@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000811', 'Cho Sze Yu', '1968-06-04', '1691548357', 'F', 'DHAKA', 'chszeyu4@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000812', 'Zhao Jiehong', '1962-07-25', '1579513585', 'M', 'CHATTAGRAM', 'zhaojie@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000813', 'Mo Zitao', '1977-05-07', '1951501967', 'M', 'RAJSHAHI', 'zitaomo330@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000814', 'Victor Ross', '1973-06-19', '1664391099', 'M', 'DHAKA', 'rossvi@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000815', 'Kelly Kelley', '1994-01-20', '1597347919', 'F', 'CHATTAGRAM', 'kekelly1127@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000816', 'Mak On Kay', '1977-05-14', '1673170306', 'F', 'DHAKA', 'maonkay@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000817', 'Francis Griffin', '1945-09-14', '1915733806', 'M', 'MYMENSINGH', 'grifrancis@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000818', 'Curtis Webb', '1962-03-05', '1546727089', 'M', 'CHATTAGRAM', 'webbcurtis216@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000819', 'Yuan Anqi', '1985-02-26', '1525360972', 'F', 'DHAKA', 'anqi1119@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000820', 'Duan Jiehong', '1966-04-25', '1548940885', 'M', 'DHAKA', 'djiehong707@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000821', 'Barbara Wood', '1998-01-27', '1971045778', 'F', 'CHATTAGRAM', 'wob53@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000822', 'Keith Fisher', '1958-11-03', '1567958749', 'M', 'DHAKA', 'fisher1974@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000823', 'Jiang Jialun', '1961-06-03', '1934080068', 'M', 'SYLHET', 'jialunjia@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000824', 'Xia Zitao', '2011-11-21', '1812505446', 'M', 'RAJSHAHI', 'zitao4@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000825', 'Mak Sze Yu', '1965-06-20', '1642536350', 'F', 'DHAKA', 'makszeyu@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000826', 'Wong Sai Wing', '1973-06-15', '1959971366', 'M', 'FENI', 'wongsw@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000827', 'Lok Sze Kwan', '1985-12-12', '1879278721', 'F', 'CHATTAGRAM', 'lokszekwan@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000828', 'Ma Sau Man', '2014-08-11', '1839087045', 'F', 'DHAKA', 'saumanma@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000829', 'Endo Sara', '1994-07-18', '1677845553', 'F', 'DHAKA', 'endosar@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000830', 'Imai Yamato', '1982-02-23', '1908930472', 'M', 'CHATTAGRAM', 'yamatoimai8@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000831', 'Joan Murphy', '2003-09-17', '1981758018', 'F', 'KHULNA', 'joan321@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000832', 'Han Yun Fat', '2016-12-05', '1509975723', 'M', 'DHAKA', 'hayunfat@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000833', 'Murata Momoe', '1999-03-07', '1572191868', 'F', 'CHATTAGRAM', 'murata414@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000834', 'Ren Xiuying', '2002-12-16', '1572010397', 'F', 'MYMENSINGH', 'renxiuy@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000835', 'Yuen Yu Ling', '1959-08-09', '1784114003', 'F', 'RAJSHAHI', 'yuen921@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000836', 'Troy Young', '1949-07-23', '1657591611', 'M', 'SYLHET', 'young3@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000837', 'Mo Wing Sze', '1942-12-07', '1677337664', 'F', 'DHAKA', 'wsm@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000838', 'Miu Wing Sze', '1988-01-10', '1549782699', 'F', 'KHULNA', 'miuwingsze@icloud.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000839', 'Kinoshita Rin', '2003-09-03', '1899782879', 'F', 'CHATTAGRAM', 'rikinoshita@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000840', 'Brandon Payne', '1965-06-14', '1998281342', 'M', 'DHAKA', 'paybra@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000841', 'Deng Lan', '1958-12-14', '1799676701', 'F', 'DHAKA', 'dlan@yahoo.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000842', 'Paula Gordon', '1980-05-06', '1698386815', 'F', 'CHATTAGRAM', 'gordonp@mail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000843', 'Jason Wright', '1947-11-20', '1650528405', 'M', 'DHAKA', 'jasonw10@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000844', 'Steven Hamilton', '1983-03-12', '1927768791', 'M', 'DHAKA', 'sth4@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000845', 'Okamoto Rin', '2001-03-22', '1783529690', 'F', 'KHULNA', 'okamotorin1@gmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000846', 'Hu Yuning', '1999-07-11', '1544016128', 'M', 'RAJSHAHI', 'yhu@outlook.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000847', 'Chang Fu Shing', '2002-07-11', '1941448266', 'M', 'DHAKA', 'changfs@hotmail.com');
INSERT INTO "C##TDC"."PATIENTS" VALUES ('100000848', 'Ishikawa Yuto', '2014-07-28', '1559500163', 'M', 'CHATTAGRAM', 'yuto1215@icloud.com');

-- ----------------------------
-- Table structure for PAYMENTS
-- ----------------------------
DROP TABLE "C##TDC"."PAYMENTS";
CREATE TABLE "C##TDC"."PAYMENTS" (
  "PAYMENT_ID" NUMBER(10,0) VISIBLE NOT NULL,
  "APPOINTMENT_ID" NUMBER(10,0) VISIBLE NOT NULL,
  "DOCTORS_FEE" NUMBER(10,0) VISIBLE,
  "MEDICINE_COST" NUMBER(10,0) VISIBLE,
  "ADMIN_FEE" NUMBER(10,0) VISIBLE,
  "VAT" NUMBER(10,2) VISIBLE,
  "TOTAL_FEE" NUMBER(10,2) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PAYMENTS
-- ----------------------------
INSERT INTO "C##TDC"."PAYMENTS" VALUES ('3', '3', '250', '20', '50', '32', '352');
INSERT INTO "C##TDC"."PAYMENTS" VALUES ('1', '1', '250', '10', '50', '31', '341');
INSERT INTO "C##TDC"."PAYMENTS" VALUES ('2', '2', '250', '60', '50', '36', '396');
INSERT INTO "C##TDC"."PAYMENTS" VALUES ('4', '4', '250', '40', '50', '34', '374');
INSERT INTO "C##TDC"."PAYMENTS" VALUES ('5', '5', '250', '70', '50', '37', '407');
INSERT INTO "C##TDC"."PAYMENTS" VALUES ('6', '6', '250', '28', '50', '32.8', '360.8');
INSERT INTO "C##TDC"."PAYMENTS" VALUES ('7', '7', '250', '35', '50', '33.5', '368.5');

-- ----------------------------
-- Table structure for PHARMACIES
-- ----------------------------
DROP TABLE "C##TDC"."PHARMACIES";
CREATE TABLE "C##TDC"."PHARMACIES" (
  "PHARMACY_ID" NUMBER VISIBLE NOT NULL,
  "PHARMACY_NAME" VARCHAR2(255 BYTE) VISIBLE,
  "LOCATION_ID" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PHARMACIES
-- ----------------------------
INSERT INTO "C##TDC"."PHARMACIES" VALUES ('2', 'SHAHBAGH MEDICINE CORNER', '1');
INSERT INTO "C##TDC"."PHARMACIES" VALUES ('3', 'DHAKA DRUG HOUSE', '1');
INSERT INTO "C##TDC"."PHARMACIES" VALUES ('4', 'DHAKA PHARMA', '1');
INSERT INTO "C##TDC"."PHARMACIES" VALUES ('5', 'NATIONAL PHARMA', '1');
INSERT INTO "C##TDC"."PHARMACIES" VALUES ('6', 'CHATTAGRAM PHARMA', '2');
INSERT INTO "C##TDC"."PHARMACIES" VALUES ('1', 'POPULAR PHARMACY', '1');

-- ----------------------------
-- Table structure for PRESCRIPTIONS
-- ----------------------------
DROP TABLE "C##TDC"."PRESCRIPTIONS";
CREATE TABLE "C##TDC"."PRESCRIPTIONS" (
  "PRESCRIPTION_ID" NUMBER VISIBLE NOT NULL,
  "APPOINTMENT_ID" NUMBER VISIBLE,
  "COMMENTS" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PRESCRIPTIONS
-- ----------------------------
INSERT INTO "C##TDC"."PRESCRIPTIONS" VALUES ('1', '2', 'TAKE BED REST');
INSERT INTO "C##TDC"."PRESCRIPTIONS" VALUES ('2', '1', 'TAKE THE MEDICINES PROPERLY');

-- ----------------------------
-- Table structure for RECORDS
-- ----------------------------
DROP TABLE "C##TDC"."RECORDS";
CREATE TABLE "C##TDC"."RECORDS" (
  "RECORD_ID" NUMBER VISIBLE NOT NULL,
  "PRESCRIPTION_ID" NUMBER VISIBLE,
  "TEST_ID" NUMBER VISIBLE,
  "TEST_RESULT " VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of RECORDS
-- ----------------------------
INSERT INTO "C##TDC"."RECORDS" VALUES ('1', '1', '5', '5.1 cells/mcl');
INSERT INTO "C##TDC"."RECORDS" VALUES ('2', '2', '8', '3.2 mU/L');

-- ----------------------------
-- Table structure for REFFERRALS
-- ----------------------------
DROP TABLE "C##TDC"."REFFERRALS";
CREATE TABLE "C##TDC"."REFFERRALS" (
  "REFFERRAL_ID" NUMBER(10,0) VISIBLE NOT NULL,
  "APPOINTMENT_ID" NUMBER(10,0) VISIBLE,
  "REFFERRED_TO" NUMBER(10,0) VISIBLE,
  "REFFERRAL_DATE" VARCHAR2(20 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REFFERRALS
-- ----------------------------
INSERT INTO "C##TDC"."REFFERRALS" VALUES ('1', '1', '2200', '29-08-2022');

-- ----------------------------
-- Table structure for REVIEWS
-- ----------------------------
DROP TABLE "C##TDC"."REVIEWS";
CREATE TABLE "C##TDC"."REVIEWS" (
  "REVIEW_ID" NUMBER VISIBLE NOT NULL,
  "STAR_GIVEN" NUMBER VISIBLE NOT NULL,
  "APPOINTMENT_ID" NUMBER VISIBLE NOT NULL,
  "COMMENTS" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REVIEWS
-- ----------------------------
INSERT INTO "C##TDC"."REVIEWS" VALUES ('1', '3', '1', 'NOT SATISFIED');
INSERT INTO "C##TDC"."REVIEWS" VALUES ('2', '3', '2', 'NOT THAT GOOD');
INSERT INTO "C##TDC"."REVIEWS" VALUES ('3', '5', '3', 'SATISFIED');
INSERT INTO "C##TDC"."REVIEWS" VALUES ('4', '5', '4', 'SATISFIED');
INSERT INTO "C##TDC"."REVIEWS" VALUES ('5', '5', '5', 'SATISFIED');
INSERT INTO "C##TDC"."REVIEWS" VALUES ('6', '5', '5', 'SATISFIED');
INSERT INTO "C##TDC"."REVIEWS" VALUES ('7', '5', '6', 'SATISFIED');
INSERT INTO "C##TDC"."REVIEWS" VALUES ('8', '5', '7', 'SATISFIED');

-- ----------------------------
-- Table structure for USERS
-- ----------------------------
DROP TABLE "C##TDC"."USERS";
CREATE TABLE "C##TDC"."USERS" (
  "USER_ID" NUMBER(12,0) VISIBLE NOT NULL,
  "PASSWORD" VARCHAR2(255 BYTE) VISIBLE,
  "EMAIL" VARCHAR2(255 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USERS
-- ----------------------------
INSERT INTO "C##TDC"."USERS" VALUES ('1', 'kjughasdkfju', 'taleb123@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1351', 'Hao Anqi123', 'ah302@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1352', 'Kimura Ryota123', 'ryota530@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1353', 'Shi Xiuying123', 'shi1982@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1354', 'Shibata Hikaru123', 'shibatahikar102@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1355', 'Yang Rui123', 'ruyan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1356', 'Zhang Zhennan123', 'zhangzhennan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1357', 'Choi Ting Fung123', 'tingfungch48@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1358', 'Ma Chi Ming123', 'macm1@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1359', 'Shannon Taylor123', 'tayshann@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1360', 'Shi Shihan123', 'shishih@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1361', 'He Jialun123', 'jialunhe1@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1362', 'Tang Anqi123', 'tang1954@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1363', 'Yau Wai Man123', 'yau6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1364', 'Maruyama Yuito123', 'yuitom75@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1365', 'Tang Yunxi123', 'tangyunxi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1366', 'Zhu Zhennan123', 'zhennzhu226@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1367', 'Louise Boyd123', 'louise1@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1368', 'Yamada Mai123', 'mayama1954@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1369', 'Yau Sze Yu123', 'yausy@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1370', 'Wong Ho Yin123', 'wohoyin@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1371', 'Tong Hiu Tung123', 'tonght@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1372', 'Virginia Moore123', 'virginia4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1373', 'Masuda Nanami123', 'nanamimasud@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1374', 'Yokoyama Aoshi123', 'yokoyamaaoshi@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1375', 'Cui Zhiyuan123', 'cuizhiyuan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1376', 'Yeow Wing Fat123', 'wingfaty610@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1377', 'Mildred Smith123', 'milsmith711@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1378', 'Han Wing Fat123', 'hwf@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1379', 'Jin Zhennan123', 'jinzhen@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1380', 'Lori Mcdonald123', 'mcdonaldlori@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1381', 'Han Rui123', 'ruihan5@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1382', 'Ng Kar Yan123', 'karyan920@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1383', 'Lo Hok Yau123', 'lohy@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1384', 'Kondo Ayano123', 'ayano52@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1385', 'Ku Siu Wai123', 'kusiuwai63@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1386', 'Ann Walker123', 'walkeran10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1387', 'Nathan Foster123', 'foster8@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1388', 'Sakamoto Momoka123', 'momokasaka@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1389', 'Hao Zitao123', 'haozitao@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1390', 'Che Hok Yau123', 'hych@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1391', 'He Anqi123', 'heanqi@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1392', 'Helen Lee123', 'helenle@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1393', 'Yan Lan123', 'ylan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1394', 'Hirano Momoka123', 'momokahirano@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1395', 'Wang Yuning123', 'yuniwa93@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1396', 'Kikuchi Shino123', 'kikshino@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1397', 'Ishida Ryota123', 'ryotaishi127@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1398', 'Lei Lan123', 'leil@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1399', 'Maruyama Misaki123', 'maruyama1955@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1400', 'Chiang Ka Fai123', 'chkaf5@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1401', 'Cao Shihan123', 'cashihan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1402', 'Cho On Na123', 'onnac214@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1403', 'Saito Hikaru123', 'hsai512@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1404', 'Shi Lu123', 'shilu@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1405', 'Shimizu Tsubasa123', 'tsubasashimizu5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1406', 'Ito Shino123', 'shinoi@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1407', 'Song Rui123', 'ruiso@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1408', 'Steve Moore123', 'steve425@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1409', 'Miu Sum Wing123', 'sumwingm@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1410', 'Fong Ka Man123', 'fongkm@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1411', 'Jacob Sullivan123', 'jacosullivan10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1412', 'Inoue Hikaru123', 'hikaruinoue@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1413', 'Joseph Griffin123', 'josegr10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1414', 'Julia King123', 'julkin@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1415', 'Kobayashi Itsuki123', 'kobayashii@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1416', 'Jiang Jiehong123', 'jijiang47@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1417', 'Andrew Johnson123', 'johnsandrew@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1418', 'Shing Ka Keung123', 'shingkakeung@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1419', 'Kong On Na123', 'onnako8@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1420', 'Craig Porter123', 'craigpo@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1421', 'Victor Warren123', 'victowarren8@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1422', 'Shing Chiu Wai123', 'chiuwaishin6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1423', 'Ku Cho Yee123', 'kcy@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1424', 'Henry Gutierrez123', 'henrygutierrez@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1425', 'Cheng Shihan123', 'shicheng@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1426', 'Tian Ziyi123', 'tian317@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1427', 'Sakai Riku123', 'rikus@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1428', 'Jerry Payne123', 'jerry86@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1429', 'Takada Sakura123', 'takadasakura11@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1430', 'Hung Ming Sze123', 'mingszehu@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1431', 'Debbie Robinson123', 'robinsondebbie@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1432', 'Amanda Robinson123', 'amanda1993@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1433', 'Sylvia Walker123', 'ws7@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1434', 'Lam Kwok Wing123', 'kwokwinglam309@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1435', 'Leung Ho Yin123', 'leung1998@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1436', 'Lo Chi Yuen123', 'lochiyuen6@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1437', 'Cheung Ho Yin123', 'cho10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1438', 'Josephine Dixon123', 'dixon515@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1439', 'Ku Fat123', 'fatku@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1440', 'Wada Seiko123', 'seikwada3@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1441', 'Tse Chi Ming123', 'tsech94@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1442', 'Chan Kwok Kuen123', 'chankk116@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1443', 'Mak Tin Wing123', 'tinwingm@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1444', 'Meng Anqi123', 'menganqi209@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1445', 'Lui Chiu Wai123', 'chiuwlui@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1446', 'Du Yunxi123', 'yunxidu49@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1447', 'Nakamori Momoe123', 'nakamorimomoe@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1448', 'Sheh Wai Han123', 'sheh929@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1449', 'Miura Riku123', 'rikum@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1450', 'Albert Kelly123', 'alberk5@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1451', 'Sheh Kwok Ming123', 'kwokmingsheh@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1452', 'Ueda Rena123', 'ueda1023@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1453', 'Ando Rena123', 'rena@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1454', 'Wong On Na123', 'wonon@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1455', 'Maeda Kenta123', 'kenta5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1456', 'Tian Xiaoming123', 'tian79@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1457', 'Ho Tin Wing123', 'hotinwing@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1458', 'Ishii Hazuki123', 'ishiihazu@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1459', 'Maeda Hikari123', 'hikamaeda1219@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1460', 'Patrick Rodriguez123', 'patr@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1461', 'Uchida Mai123', 'maiuchida@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1462', 'He Ziyi123', 'he1954@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1463', 'Luo Jialun123', 'luo904@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1464', 'Wan Wai Yee123', 'waiyee59@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1465', 'Goto Hikari123', 'gotohi@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1466', 'Mui Chun Yu123', 'muicy@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1467', 'Henry Robertson123', 'robhenry@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1468', 'Meng Lik Sun123', 'lsm1121@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1469', 'Miyazaki Itsuki123', 'mitsuki06@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1470', 'Hara Ayano123', 'hay1018@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1471', 'Sakurai Miu123', 'miu4@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1472', 'Jiang Xiuying123', 'jiangx8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1473', 'Fong Hok Yau123', 'hyf810@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1474', 'Imai Ayano123', 'imaia@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1475', 'To Wai Man123', 'to3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1476', 'Han Wai Yee123', 'wyh10@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1477', 'Miyazaki Riku123', 'miyazaki50@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1478', 'Su Yunxi123', 'su1223@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1479', 'Shao Zhiyuan123', 'zhiyuansha@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1480', 'Kinoshita Aoshi123', 'aoshikinoshita@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1481', 'Carmen Gordon123', 'cg4@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1482', 'Harada Itsuki123', 'itsukih@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1483', 'Fang Shihan123', 'fangshihan@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1484', 'Liu Lu123', 'lliu1@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1485', 'Phillip Ryan123', 'phillr2003@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1486', 'Yau Kwok Ming123', 'yaukm@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1487', 'So Sum Wing123', 'sosw4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1488', 'Feng Xiuying123', 'xf2@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1489', 'Ishii Seiko123', 'seikoi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1490', 'Matsuda Yuna123', 'yunam@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1491', 'Shao Lu123', 'lushao@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1492', 'Sakamoto Hazuki123', 'sakamotohazuk@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1493', 'Ma Zhennan123', 'mzh608@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1494', 'Jacob Hunt123', 'huntjacob5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1495', 'Sasaki Mitsuki123', 'sasakmitsuki@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1496', 'Mo Fu Shing123', 'mo1954@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1497', 'Christopher Vargas123', 'christopherv@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1498', 'Hara Kenta123', 'kenta10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1499', 'Fujita Mai123', 'mai222@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1500', 'Aoki Nanami123', 'aoki116@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1501', 'Wang Zitao123', 'wangzitao@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1502', 'Takeuchi Kenta123', 'takeuke@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1503', 'Sugiyama Momoka123', 'sugiyama825@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1504', 'Kikuchi Riku123', 'riku4@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1505', 'Takahashi Momoka123', 'takahashimomok@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1506', 'Tanaka Minato123', 'minato2@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1507', 'Rachel Cox123', 'cox212@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1508', 'Duan Shihan123', 'duanshihan05@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1509', 'Kinoshita Yuto123', 'kinoshitayu5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1510', 'Mo Xiaoming123', 'moxiaom@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1511', 'Shing Siu Wai123', 'swsh@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1512', 'Xue Zhiyuan123', 'zxue1@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('0', 'GGSAYEED', 'sayeed5443@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('4', 'rayancsebuet', 'rayanbuet@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1513', 'Ralph Foster123', 'ralphfo1102@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1514', 'Allen Cox123', 'cal3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1515', 'Matsumoto Miu123', 'mium@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1516', 'Endo Daichi123', 'endodaichi@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1517', 'Goto Minato123', 'gotominat@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1518', 'Meng Tak Wah123', 'mtakwah@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1519', 'Mao Jiehong123', 'jiehm@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1520', 'Jiang Anqi123', 'jianga1@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1521', 'Goto Ayato123', 'gotoayato2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1522', 'Carmen Robinson123', 'carmen1004@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1523', 'Randall Ramirez123', 'ramrandall@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1524', 'Fong Yun Fat123', 'fonyunfat1229@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1525', 'Sakurai Sara123', 'saras60@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1526', 'Taniguchi Itsuki123', 'taniguchi322@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1527', 'Carrie Davis123', 'carrie10@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1528', 'Loui Sau Man123', 'loui9@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1529', 'Jiang Ziyi123', 'ziyijiang@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1530', 'Scott Campbell123', 'cscott@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1531', 'Suzuki Kasumi123', 'ksuzuki@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1532', 'Donald Foster123', 'fosdonald@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1533', 'Suzuki Ren123', 'rensuz@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1534', 'Choi Ka Man123', 'kaman1980@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1535', 'Yeung Hiu Tung123', 'yeunghiutung@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1536', 'Takeuchi Sara123', 'takeuchisar1976@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1537', 'Mo Lu123', 'mo419@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1538', 'Ando Hana123', 'hanaand@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1539', 'Goto Mitsuki123', 'gotomitsuki130@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1540', 'Ishikawa Riku123', 'rikui@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1541', 'Kondo Ayato123', 'kondoa@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1542', 'Nishimura Seiko123', 'nishimura4@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2202', 'MD. SAYEED123', 'sayeedzaman@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2203', 'MD. ZAMAN123', 'ssdgg@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2204', 'MD. FAISAL ZAMAN123', 'fzdgg@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1678', 'Connie Alexander123', 'ca44@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1679', 'Lu Anqi123', 'luanq@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1680', 'Siu Ka Fai123', 'siukafai@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1681', 'Hazel Hunter123', 'hahunter65@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1682', 'Harry Harrison123', 'hh308@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1683', 'Ruth Evans123', 'ruthev101@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1684', 'Ruth Rose123', 'ruth6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1685', 'Long Rui123', 'rulong@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1686', 'Frances Gibson123', 'gf90@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1687', 'Jose Soto123', 'jso10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1688', 'Yao Lu123', 'yaolu4@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1689', 'Bradley Rogers123', 'bradleyrogers2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1690', 'Wong Hui Mei123', 'huimeiwong115@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1691', 'Ishida Aoshi123', 'aoishida@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1692', 'Hu Jialun123', 'jialun203@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1693', 'To Wai Han123', 'towh@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1694', 'Martin Payne123', 'martinpa2@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1695', 'Melissa Castillo123', 'melissacastillo96@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1696', 'Julia Chavez123', 'cjulia80@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1697', 'Maeda Ren123', 'mren1@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1698', 'Matsui Akina123', 'matsuiakina@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1699', 'To Lai Yan123', 'lyto1991@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1700', 'He Zhiyuan123', 'hzhiyuan@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1701', 'Wada Eita123', 'eitawada@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1702', 'Cao Lan123', 'lan6@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1703', 'Norma Salazar123', 'salazar807@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1704', 'Zou Xiaoming123', 'zoxia@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1705', 'Takahashi Yuna123', 'takahashiyuna10@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1706', 'Peng Jiehong123', 'jiehong1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1707', 'Tanaka Daisuke123', 'tanakadaisu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1708', 'Xiang Jiehong123', 'xjiehong@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1709', 'Julie Guzman123', 'guzmaj@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1710', 'Okamoto Hina123', 'hinaokam1@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1711', 'Ono Ayano123', 'ayao@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1712', 'Wang Anqi123', 'wananqi@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1713', 'Steve Jimenez123', 'jsteve10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1714', 'Qiu Anqi123', 'qa1965@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1715', 'Liang Jialun123', 'ljialun@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1716', 'Luo Zitao123', 'zluo86@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1717', 'Tao Suk Yee123', 'taosy807@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1718', 'Liang Ziyi123', 'liangz@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1719', 'Fujii Mitsuki123', 'mitsukifuj@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1720', 'Mak Yun Fat123', 'makyf@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1721', 'Tan Jialun123', 'tanjialun4@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1722', 'Dai Xiuying123', 'xiuyida@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1723', 'Chow Lik Sun123', 'liksunc90@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1724', 'Yang Shihan123', 'yangs@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1725', 'Ng Sai Wing123', 'swn6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1726', 'Deng Jialun123', 'jialund@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1727', 'Wong Tak Wah123', 'takwahw@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1728', 'Dale Morris123', 'morris1@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1729', 'Deng Lu123', 'ludeng7@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1730', 'Jin Lan123', 'jinlan7@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1731', 'Anne Hill123', 'annh715@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1732', 'Lui Yun Fat123', 'luiyf@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1733', 'Jeff Hicks123', 'jeffhicks3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1734', 'Hsuan Ling Ling123', 'llh02@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1735', 'Randy Cox123', 'randyco@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1736', 'Sugiyama Miu123', 'sugim@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1737', 'Ono Ikki123', 'ikkiono65@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1738', 'Wong Wai Man123', 'wonwm@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1739', 'Gu Jialun123', 'jialungu@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1740', 'Cho Ka Fai123', 'chokf@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1741', 'Shen Xiaoming123', 'shen11@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1742', 'Yokoyama Hina123', 'hinyokoyama@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1743', 'Jonathan Gomez123', 'gomez20@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1744', 'Fan Sze Yu123', 'syfa@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1745', 'Maria Sullivan123', 'maria78@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1746', 'Tang Shihan123', 'shihatang@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1747', 'Ng Ming123', 'ngmin@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1748', 'Maeda Misaki123', 'maeda64@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1749', 'Joshua Freeman123', 'freemjoshua4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1750', 'Wong Chiu Wai123', 'wongchiuwai@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1751', 'Tao Ho Yin123', 'hytao@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1752', 'Willie Hicks123', 'hicks6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1753', 'John Ward123', 'wj212@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1754', 'Yeung Ka Keung123', 'yeungkk@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1755', 'Ellen Nichols123', 'nellen@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1756', 'Yeow Ho Yin123', 'yeowhoyin1@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1757', 'Ito Momoka123', 'itom304@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1758', 'Otsuka Yuto123', 'oyut@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1759', 'Dale Gordon123', 'dalegordon4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1760', 'Dong Yunxi123', 'doyunx@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1761', 'Tao Chung Yin123', 'tcy08@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1762', 'Matsui Tsubasa123', 'tsubamats@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1763', 'Nakamori Hana123', 'nakhan@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1764', 'Choi Lik Sun123', 'chliksun75@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1765', 'Koon Ming123', 'mingkoo3@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1766', 'Ye Lan123', 'lye@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1767', 'Cui Lan123', 'clan@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1768', 'Xiang Jialun123', 'jialxia@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1769', 'Lee Wing Fat123', 'lewf@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1770', 'Benjamin Foster123', 'foben7@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1771', 'Murakami Akina123', 'murakamiakin@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1772', 'Aoki Mio123', 'mioaoki1986@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1773', 'Chic Chun Yu123', 'ccy@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1774', 'Xia Lan123', 'xiala531@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1775', 'Wang Jiehong123', 'wjieho9@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1776', 'Lau Kar Yan123', 'karyan1019@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1777', 'Tao Rui123', 'rtao@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1778', 'Kam Hok Yau123', 'kahy@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1779', 'Xu Yuning123', 'yxu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1780', 'Dai Ho Yin123', 'hoyind@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1781', 'Kam Wai Man123', 'waiman516@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1782', 'Shimada Kaito123', 'kaitoshimada@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1783', 'Lee Munoz123', 'lee4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1784', 'Okamoto Daisuke123', 'okd@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1785', 'Guo Jiehong123', 'gjiehong@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1786', 'Maeda Eita123', 'eima1118@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1787', 'Patricia Hughes123', 'patriciahug@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1788', 'Ng Cho Yee123', 'ncy@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1789', 'Gary Wagner123', 'wagnerg@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1790', 'Yuen Wing Fat123', 'winy7@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1791', 'Lam Ka Ling123', 'kalingl@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1792', 'Lo Ming123', 'lom2@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1793', 'Joshua Rogers123', 'joshuarogers2@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1794', 'Lee Ching Wan123', 'cwlee1968@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1795', 'Mao Yunxi123', 'yunxmao502@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1796', 'Man Wai Yee123', 'mwy@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1797', 'Herbert Bryant123', 'herbert2@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1798', 'Michelle Murphy123', 'murphy86@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1799', 'Frances Cole123', 'cofrances@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1800', 'Christina Mendoza123', 'mchri@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1801', 'Ishii Tsubasa123', 'itsubasa@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1802', 'Ishikawa Nanami123', 'ishikna3@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1803', 'Shing Fu Shing123', 'shinfs@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1804', 'Sakai Kasumi123', 'ksak75@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1805', 'Peggy Gomez123', 'pegomez85@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1806', 'Danielle Silva123', 'silvadanie11@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1807', 'Gladys Harrison123', 'glhar@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1808', 'Kwong Kwok Wing123', 'kwkw40@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1809', 'Jean Kim123', 'jek@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('3', '12345', 'sayeed@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('5', '123456', 'sayeed@yahooo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('6', 'ggsayeed', 'sayeedzaman@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('7', 'zamangg', 'ssdgg@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('8', 'fiszwwssss', 'fzdgg@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1030', 'Lu Xiuying123', 'xiuyinglu10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1031', 'Hashimoto Rena123', 'renaha@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1032', 'Chiang Fat123', 'fatc117@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1033', 'Ku Sai Wing123', 'saiwing129@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1034', 'Ti Ka Fai123', 'tkafai2009@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1035', 'Fong Wai Yee123', 'fong803@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1036', 'Hsuan Suk Yee123', 'hsuansukyee@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1037', 'Gerald Wagner123', 'gerald7@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1038', 'Ying Ting Fung123', 'tingfungying@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1039', 'Cai Zhiyuan123', 'caz1@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1040', 'Jennifer Nguyen123', 'nguyenjennifer@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1041', 'Wu Ka Fai123', 'wu10@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1042', 'Hui Wai Yee123', 'wyhui@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1043', 'Sakurai Ayato123', 'sakuraiayato@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1044', 'Xiao Anqi123', 'xiaoanqi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1045', 'Henry Wood123', 'wood1@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1046', 'Han Cho Yee123', 'cyhan1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1047', 'Ding Lan123', 'dl91@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1048', 'Janice Vasquez123', 'janicvasquez@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1049', 'Yung Wing Fat123', 'yung45@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1050', 'Iwasaki Hazuki123', 'iwh@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1051', 'Lu Ziyi123', 'luziyi128@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1052', 'Uchida Itsuki123', 'uchidit@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1053', 'Masuda Ayato123', 'ayato10@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1054', 'Zhao Zitao123', 'zhao727@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1055', 'Okamoto Sakura123', 'okamotosakur@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1056', 'Wei Yuning123', 'wei424@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1057', 'Cai Zitao123', 'czitao@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1058', 'Meng Kar Yan123', 'mengky@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1059', 'Wong Wing Fat123', 'wingfatwon@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1060', 'Arai Mitsuki123', 'mitsuki822@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1061', 'Sakurai Sakura123', 'sakuras7@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1062', 'Chen Rui123', 'ruchen802@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1063', 'Hayashi Tsubasa123', 'tsubasahaya09@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1064', 'Ma Chiu Wai123', 'mchiuwai8@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1065', 'Ding Zhennan123', 'zhennding510@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1066', 'Chang Fat123', 'fatch@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1067', 'Matsumoto Airi123', 'airim@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1068', 'Susan Rodriguez123', 'rodriguezsusan1207@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1069', 'Ishikawa Miu123', 'ishmiu@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1070', 'Luis Hawkins123', 'hawkluis9@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1071', 'Sato Daisuke123', 'sad527@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1072', 'Dai Tak Wah123', 'takwahdai7@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1073', 'Tam Tsz Ching123', 'tszchingt@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1074', 'Chiang Tsz Hin123', 'tszhinc@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1075', 'Wong Tsz Hin123', 'tszhin6@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1076', 'Dai Yuning123', 'dyuning@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1077', 'Judy Holmes123', 'holmes1940@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1078', 'Howard Hill123', 'hillhoward07@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1079', 'Sugiyama Daichi123', 'dsug1215@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1080', 'Kwok Wing Fat123', 'kwok7@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1081', 'Joshua Kelley123', 'kelleyjoshu@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1082', 'Nishimura Ayano123', 'nayano@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1083', 'Robin Cook123', 'cookro308@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1084', 'Edith Hunter123', 'hunteredith1980@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1085', 'Tsang Tin Lok123', 'tltsan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1086', 'Yamazaki Miu123', 'miuyamazaki@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1087', 'Kwong Cho Yee123', 'kcho@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1088', 'Taniguchi Airi123', 'airitanig@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1089', 'Xue Zitao123', 'xzitao@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1090', 'Tsang Sai Wing123', 'tsangsaiwing10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1091', 'Song Xiaoming123', 'songxia43@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1092', 'Liao Jialun123', 'jialunliao@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1093', 'Gu Shihan123', 'shigu@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1094', 'Wanda Clark123', 'clarkwanda@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1095', 'Lai Siu Wai123', 'siuwai00@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1096', 'Kelly Russell123', 'kellyrussell5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1097', 'Chen Shihan123', 'shihan42@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1098', 'Paula Crawford123', 'paulac@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1099', 'Nancy Wilson123', 'nancywilson@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1100', 'Matsumoto Itsuki123', 'itsukimatsumoto72@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1101', 'Shing Ka Man123', 'shingkam@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1102', 'Tanaka Itsuki123', 'itan@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1103', 'Wang Zhiyuan123', 'zhiwa@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1104', 'Irene Morris123', 'mirene514@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1105', 'Yamaguchi Hazuki123', 'yamaguchihazu@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1106', 'Jiang Zhennan123', 'zhj@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1107', 'Qian Yuning123', 'yuningq@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1108', 'Yin Zitao123', 'yin1971@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1109', 'Liu Jiehong123', 'jiehongl120@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1110', 'Hara Daisuke123', 'daisuke709@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1111', 'Sakamoto Yota123', 'syota78@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1112', 'Chiang Hiu Tung123', 'hiutungchiang1218@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1113', 'Kevin Murray123', 'kevimurray03@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1114', 'Kam Ling Ling123', 'kamlingling@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1115', 'Matsui Takuya123', 'takuyamatsui3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1116', 'Chen Ziyi123', 'ziyichen@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1117', 'Keith Robertson123', 'rkeith@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1118', 'Tian Lu123', 'tianlu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1119', 'Tony Wood123', 'wt1@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1120', 'Wong Cho Yee123', 'cywong7@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1121', 'Sano Ryota123', 'sanoryo@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1122', 'Mario Alexander123', 'male219@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1123', 'Kwan On Kay123', 'kwaok108@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1124', 'Guo Zitao123', 'guozitao724@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1125', 'Qiu Jiehong123', 'qiujie@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1126', 'Takeuchi Shino123', 'st5@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1127', 'Zhu Xiuying123', 'xiuyingzhu@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1128', 'Arai Ryota123', 'arr@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1129', 'Xiang Xiaoming123', 'xxi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1130', 'Luo Yunxi123', 'yunxiluo@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1131', 'Yan Anqi123', 'yananqi530@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1132', 'William Young123', 'youngwilliam3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1133', 'Lam On Kay123', 'lamok@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1134', 'Xu Lu123', 'xulu@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1135', 'Kato Misaki123', 'katomis10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1136', 'Xu Anqi123', 'xa929@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1137', 'Stanley Rice123', 'stanlrice@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1138', 'Takeuchi Akina123', 'taka@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1139', 'Sato Ikki123', 'sikki@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1140', 'Gong Jialun123', 'goj@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1141', 'Imai Mitsuki123', 'immitsuki@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1142', 'Danielle Barnes123', 'danielleba419@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1143', 'Murakami Rena123', 'renamurak@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1144', 'Antonio Rodriguez123', 'rodriguez112@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1145', 'Lo Kwok Yin123', 'kyl64@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1146', 'Tsui Chun Yu123', 'chtsu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1147', 'Steve Woods123', 'wstev@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1148', 'Ku Wai Man123', 'kuwaiman@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1149', 'Joanne Ramos123', 'ramojoa@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1150', 'Okamoto Ryota123', 'rokamoto@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1151', 'Kikuchi Ryota123', 'kryota3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1152', 'Chiang On Kay123', 'onkaychian@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1153', 'Wong Ching Wan123', 'chingwanwo@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1154', 'Qin Xiaoming123', 'xiqin@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1155', 'Monica Mason123', 'monica2@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1156', 'Tam Sai Wing123', 'swta@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1157', 'Li Yuning123', 'liy@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1158', 'Cynthia Hicks123', 'hicks1989@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1159', 'Leslie Simmons123', 'lesliesimmons@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1160', 'Alfred Mendoza123', 'mendoza9@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1161', 'Ueda Hina123', 'ueh@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1162', 'Xu Xiaoming123', 'xux@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1163', 'Lo Suk Yee123', 'sukyee6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1164', 'Barry Washington123', 'washington5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1165', 'Arthur Moore123', 'moorearth8@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1166', 'Mok Ming123', 'mingmo@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1167', 'Nakagawa Momoka123', 'momokanak10@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1168', 'Leung Yun Fat123', 'leyf@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1169', 'Wan Wai Han123', 'waihan13@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1170', 'Li Rui123', 'ruili@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1171', 'Matsuda Ikki123', 'ikkmats84@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1172', 'Yam Hiu Tung123', 'yam9@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1173', 'Evelyn Palmer123', 'palmeevelyn@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1174', 'Luo Rui123', 'luorui1@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1175', 'Tang Zhiyuan123', 'zt1979@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1176', 'Tina Grant123', 'tinag@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1177', 'Iwasaki Ayato123', 'iwasakiayato305@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1178', 'Sarah Nichols123', 'nichosara@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1179', 'Kong Sau Man123', 'smkong@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1180', 'Fujii Sakura123', 'sakufujii@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1181', 'Yamada Takuya123', 'takuyayamada6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1182', 'Rose Tucker123', 'rtuck@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1183', 'Tang Cho Yee123', 'tcy@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1184', 'Man Yu Ling123', 'yulman4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1185', 'Susan Wright123', 'susanwrigh@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1186', 'Tammy Vasquez123', 'tvasquez619@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1187', 'Suzuki Yuito123', 'suzuki13@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1543', 'Okamoto Misaki123', 'misaokam@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1544', 'Manuel Martin123', 'manumartin@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1545', 'Lu Zhennan123', 'zhennanlu@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1546', 'Fujita Ayato123', 'fayato1020@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1547', 'Lok Wai San123', 'wslok@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1548', 'Huang Jialun123', 'jihuang03@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1549', 'Yan Xiaoming123', 'xiaomingyan6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1550', 'Dong Zitao123', 'dongzitao@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1551', 'Imai Rena123', 'imairena@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1552', 'Zhou Xiaoming123', 'zhouxiaoming7@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1553', 'Barbara Burns123', 'barbaraburns@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1554', 'Tanaka Nanami123', 'nanami53@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1555', 'Yamamoto Akina123', 'akinayamamoto74@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1556', 'Chiang Chiu Wai123', 'cwch1@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1557', 'Sakurai Kazuma123', 'skazuma1027@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1558', 'Cheng Tak Wah123', 'chetakwah@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1559', 'Xue Lu123', 'xue610@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1560', 'Nakajima Kenta123', 'nake@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1561', 'Tian Zhiyuan123', 'zhiyuan107@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1562', 'William Gonzalez123', 'gonzalezw@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1563', 'Jiang Zhiyuan123', 'jiang1022@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1564', 'Virginia Stone123', 'stone48@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1565', 'Mo Sai Wing123', 'swmo@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1566', 'Yao Ziyi123', 'yaoziyi504@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1567', 'Eleanor Perez123', 'eleanor1117@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1568', 'Barry Meyer123', 'meyerbarry@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1569', 'Wong Sze Yu123', 'syw2@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1570', 'Francisco Wright123', 'wrfran@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1571', 'Watanabe Yuna123', 'watanabeyun@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1572', 'Tong Wai Yee123', 'waiyeet@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1573', 'Lok Kwok Wing123', 'lokkw@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1574', 'Hou Rui123', 'ruihou16@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1575', 'Louise Watson123', 'watsonl1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1576', 'Ng Chung Yin123', 'chungyinng@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1577', 'Lok Sze Kwan123', 'skl1206@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1578', 'Hsuan Yu Ling123', 'hsuan1@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1579', 'Rose Garcia123', 'garciarose409@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1580', 'Chu Wing Suen123', 'chuws3@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1581', 'Kojima Rena123', 'kojir@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1582', 'Choi Kar Yan123', 'karyanch@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1583', 'Yeung Wing Kuen123', 'wingkuen723@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1584', 'Hashimoto Daisuke123', 'hashimoto327@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1585', 'Yin Anqi123', 'anqiyin@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1586', 'James Bell123', 'belljames1116@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1587', 'Zeng Ziyi123', 'zezi514@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1588', 'Zeng Shihan123', 'shihanzeng@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1589', 'Che Yun Fat123', 'cheyu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1590', 'Hirano Hina123', 'hinahirano@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1591', 'Lam Wai San123', 'lamws@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1592', 'Saito Hazuki123', 'hazusaito@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1593', 'Chung Wing Fat123', 'wingfatchung8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1594', 'Goto Airi123', 'aigoto2005@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1595', 'Au Lai Yan123', 'lyau1979@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1596', 'Yau Chung Yin123', 'cyya@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1597', 'Shen Lan123', 'shl6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1598', 'Liao Tsz Ching123', 'tcliao@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1599', 'Heung Suk Yee123', 'sukyeeh1977@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1600', 'Ma Ho Yin123', 'mahoyin425@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1601', 'Tang Ho Yin123', 'tanghy@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1602', 'Victor Freeman123', 'freemanvic713@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1603', 'Kwan Ming123', 'kwanming311@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1604', 'Jeffrey Roberts123', 'roberts9@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1605', 'Brenda Fernandez123', 'brendfernandez@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1606', 'Duan Ziyi123', 'ziyiduan@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1607', 'Tang Xiuying123', 'xitan8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1608', 'Sit Chi Ming123', 'cmsit@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1609', 'Fukuda Takuya123', 'fukut713@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1610', 'Koo On Na123', 'onna2@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1611', 'Jesus Payne123', 'jepa@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1612', 'Wu Shihan123', 'wushihan@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1613', 'Chow Wing Fat123', 'winchow@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1614', 'Frances Freeman123', 'ffran@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1615', 'Choi Ming123', 'ming01@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1616', 'Nakamura Mitsuki123', 'mitsukin@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1617', 'Stephen Ross123', 'ross3@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1618', 'Tang Yuning123', 'ytang15@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1619', 'Takeda Momoka123', 'takeda1@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1620', 'Yamada Ren123', 'yamadar@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1621', 'Brenda Collins123', 'collinsbrend609@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1622', 'Sun Zhiyuan123', 'suzhiyuan16@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1623', 'Jia Ziyi123', 'jiaz@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1624', 'Jacob Porter123', 'jacobpor1024@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1625', 'Yuen Hok Yau123', 'hyy430@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1626', 'Ono Minato123', 'omin@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1627', 'Fred Taylor123', 'tayfr506@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1628', 'Nicole Jordan123', 'nicojorda@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1629', 'Meng Ling Ling123', 'linglingmeng82@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1630', 'Daniel Payne123', 'paynedaniel@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1631', 'Meng Ka Ming123', 'mekaming6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1632', 'Han Ziyi123', 'hzi@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1633', 'Shimizu Rena123', 'reshim@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1634', 'Yokoyama Yamato123', 'yokoyamay11@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1635', 'Christina Patterson123', 'pac@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1636', 'Randy Ellis123', 'ranellis3@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1637', 'Yue Ming123', 'mingyue@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1638', 'Yung Wing Kuen123', 'wingkuenyun3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1639', 'Saito Itsuki123', 'isai1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1640', 'Todd Castro123', 'toddca@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1641', 'Han Suk Yee123', 'sukyeh@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1642', 'Nakayama Takuya123', 'nakayama903@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1643', 'Xie Yuning123', 'yuning9@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1644', 'Mario Kim123', 'marioki@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1645', 'Han Zhiyuan123', 'hanzhiy@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1646', 'Fu Jialun123', 'jialunfu814@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1647', 'Jerry Wood123', 'woodjerry@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1648', 'Gu Rui123', 'rui1013@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1649', 'Tong Ka Fai123', 'kafai10@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1650', 'Sugiyama Ayato123', 'ayatsugi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1651', 'Yip Yun Fat123', 'yunfat64@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1652', 'Takahashi Hikari123', 'takahashih@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1653', 'Yamazaki Hikaru123', 'hikaryama@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1654', 'Chang Lu123', 'luch@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1655', 'Lui Wai Lam123', 'wllu919@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1656', 'Martha Gomez123', 'gomm1977@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1657', 'Koo Wai Han123', 'koowh1998@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1658', 'Zhou Xiuying123', 'xz412@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1659', 'Carolyn Roberts123', 'carroberts@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1660', 'Luo Xiuying123', 'xl73@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1661', 'Daniel Robinson123', 'darobinson@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1662', 'Nakano Ren123', 'nren10@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1663', 'Yung Lik Sun123', 'liksunyun63@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1664', 'Sugiyama Kenta123', 'sugikenta1955@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1665', 'Murata Yuto123', 'muratay903@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1666', 'Yau Fat123', 'yafat@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1667', 'Paul Allen123', 'allenpa86@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1668', 'Fong Ka Ming123', 'fongkaming@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1669', 'Ho Kwok Yin123', 'ho60@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1670', 'Mui Chiu Wai123', 'chiuwaim1979@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1671', 'Kathleen Kennedy123', 'kekathleen8@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1672', 'Debra Brown123', 'dbrown@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1673', 'Fan Zhennan123', 'fazhennan@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1674', 'Yin Chi Ming123', 'chiming1997@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1675', 'Liao Jiehong123', 'liao93@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1676', 'Alfred Freeman123', 'alfredfre@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1677', 'Hsuan Kwok Yin123', 'hkwokyin@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1001', 'Liao Kwok Kuen123', 'kwokkuen89@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1002', 'Kwan Ka Fai123', 'kafaikw@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1003', 'Yuen Kwok Yin123', 'kwokyiny@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1004', 'Ishikawa Akina123', 'aishik@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1005', 'Todd Murphy123', 'tm1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1007', 'Ma Ziyi123', 'ziyi2020@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1008', 'Dawn Reed123', 'redawn@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1009', 'Xia Zitao123', 'zxi5@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1010', 'Tsang Chi Ming123', 'tscm@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1011', 'Tan Zhennan123', 'tan615@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1012', 'Yin Cho Yee123', 'yinchoyee@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1013', 'Xiong Zhennan123', 'xiongzhennan8@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1014', 'Che On Na123', 'che9@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1015', 'Yuen Chun Yu123', 'chunyuyu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1016', 'Peter Bryant123', 'brypeter@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1017', 'Dong Xiaoming123', 'dongx@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1018', 'Fu Zhiyuan123', 'zhiyuanfu10@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1019', 'Ng Ting Fung123', 'tingfungng707@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1020', 'Sasaki Daichi123', 'daichisasak@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1021', 'Nakamura Sara123', 'saranakamura@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1022', 'Su Zhennan123', 'su97@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1023', 'Ren Zitao123', 'zitaor@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1024', 'Jonathan Wagner123', 'jonathan5@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1025', 'Zeng Zhiyuan123', 'zengz4@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1026', 'Shi Zhennan123', 'shizh@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1027', 'Ng Chieh Lun123', 'ncl6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1028', 'Sit Ming123', 'mingsit40@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1029', 'Ruth Cooper123', 'cru@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1188', 'Phyllis Ramirez123', 'phyllis109@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1189', 'Takagi Hikaru123', 'hikarutakagi@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1190', 'Ding Lu123', 'lu913@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1191', 'Mark Ortiz123', 'ortizm@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1192', 'Takahashi Riku123', 'triku@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1193', 'Cui Rui123', 'curui415@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1194', 'Martin Tran123', 'tranmarti@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1195', 'Inoue Kaito123', 'kaito831@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1196', 'Mori Daisuke123', 'daisuke525@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1197', 'Alexander Evans123', 'evansalexander70@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1198', 'Lois Romero123', 'romelois@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1199', 'Gu Xiuying123', 'gux1108@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1200', 'Wei Zhennan123', 'wezhennan3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1201', 'Xue Xiuying123', 'xiuxue@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1202', 'Randall Holmes123', 'holmesrandall09@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1203', 'Mak Wai San123', 'makwaisan3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1204', 'Yam Siu Wai123', 'yamsw@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1205', 'Jerry Silva123', 'jersi713@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1206', 'Chiang Ching Wan123', 'chiang1995@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1207', 'Joanne Wright123', 'wjoanne9@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1208', 'Miyazaki Hazuki123', 'mhaz5@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1209', 'Choi Wing Sze123', 'cwingsze@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1210', 'Wendy Martinez123', 'mawendy@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1211', 'Uchida Minato123', 'minato501@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1212', 'Joyce Alexander123', 'joyceale@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1213', 'Lo On Kay123', 'look706@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1214', 'Jiang Xiaoming123', 'xiaojiang@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1215', 'Cheng Ka Man123', 'cheng3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1216', 'Harada Kenta123', 'kentaharada1949@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1217', 'Ma Wai Han123', 'wama7@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1218', 'Tao Chun Yu123', 'taocy@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1219', 'Kwong Chiu Wai123', 'kcw@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1220', 'Kwong Wing Suen123', 'wingsuen05@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1221', 'Deborah Edwards123', 'edwards1@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1222', 'Shi Jiehong123', 'jiehong47@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1223', 'Ku Suk Yee123', 'syku@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1224', 'Ando Ryota123', 'andoryota@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1225', 'Xue Lan123', 'xl829@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1226', 'Yamada Ikki123', 'yamadikki1128@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1227', 'Ueda Daichi123', 'daichiue3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1228', 'Chen Yuning123', 'yuningchen6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1229', 'Nakamura Eita123', 'nakaeit73@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1230', 'Yamashita Aoi123', 'aoiya@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1231', 'Taniguchi Hazuki123', 'hat@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1232', 'Lai Wing Kuen123', 'laiwi1959@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1233', 'Loui Wai Yee123', 'louiwaiyee@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1234', 'Brandon Perry123', 'bper@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1235', 'Zeng Xiaoming123', 'xiaoming702@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1236', 'Ando Sara123', 'ando5@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1237', 'Chung Ling Ling123', 'chung41@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1238', 'Ota Yuito123', 'otyuito@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1239', 'Han Siu Wai123', 'siuwai12@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1240', 'Gerald Phillips123', 'phillips53@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1241', 'Kato Aoshi123', 'aoshk@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1242', 'Yau Hok Yau123', 'hokyauyau@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1243', 'Carmen Medina123', 'medinacarmen@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1244', 'Saito Ikki123', 'ikki4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1245', 'Cheng Wing Sze123', 'cws@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1246', 'Noguchi Misaki123', 'misanoguchi@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1247', 'Tiffany Graham123', 'graham87@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1248', 'Meng On Kay123', 'meonkay@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1249', 'Man Fu Shing123', 'manfushing20@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1250', 'Yamazaki Akina123', 'yamazakina1115@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1251', 'Ono Itsuki123', 'onitsuki@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1252', 'Pak Ka Keung123', 'pakkakeung@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1253', 'Chin Lai Yan123', 'laiyanchin923@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1254', 'Juan Romero123', 'romero1022@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1255', 'Joel Gonzalez123', 'joegonz@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1256', 'James Hill123', 'james1992@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1257', 'Wei Yunxi123', 'ywei@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1258', 'Heung Sze Kwan123', 'skheung68@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1259', 'Murakami Nanami123', 'murakamin56@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1260', 'Ruth Howard123', 'ruthhowa228@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1261', 'Diane Wallace123', 'wad@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1262', 'Miura Hana123', 'miurah@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1263', 'Kong Suk Yee123', 'sykong123@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1264', 'Qin Jiehong123', 'qinjieh46@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1265', 'Chiang Ka Ming123', 'ckm@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1266', 'Kondo Seiko123', 'kondo40@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1267', 'Pak Chun Yu123', 'pakchu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1268', 'Sato Daichi123', 'dsat@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1269', 'Donald Gordon123', 'gordondonal@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1270', 'Mok On Na123', 'onna914@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1271', 'Otsuka Kenta123', 'otsukkent8@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1272', 'Yuen Tin Wing123', 'yuentw@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1273', 'Martin Reynolds123', 'rmart411@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1274', 'Endo Yamato123', 'yamato2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1275', 'Sit Hui Mei123', 'huimeisit7@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1276', 'Hsuan Ka Ming123', 'hsuankaming109@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1277', 'Li Jiehong123', 'jieli8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1278', 'Hui Fu Shing123', 'huifushing42@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1279', 'Cheung Lik Sun123', 'lscheu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1280', 'Lillian Harrison123', 'lillianharrison@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1281', 'Samuel Romero123', 'samuelrome@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1282', 'Ishii Shino123', 'shinoishii210@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1283', 'Cynthia Wilson123', 'cynthiawilso@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1284', 'Keith Owens123', 'owenskei@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1285', 'Su Zitao123', 'zsu9@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1286', 'Fu Ting Fung123', 'fu2000@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1287', 'Ichikawa Mai123', 'mai202@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1288', 'Janet Carter123', 'cajanet@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1289', 'Chen Anqi123', 'chenanqi@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1290', 'Edwin Hughes123', 'edwhug@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1291', 'Bobby Munoz123', 'munozbob@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1292', 'Lin Jiehong123', 'linj52@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1293', 'Eva Payne123', 'pe2@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1294', 'Fujii Misaki123', 'fmisak@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1295', 'Choi Kwok Kuen123', 'kwokkuenc428@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1296', 'Hu Jiehong123', 'jiehonghu89@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1297', 'Fujita Tsubasa123', 'futs97@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1298', 'Lois Hamilton123', 'loihami5@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1299', 'Shimada Hina123', 'shina@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1300', 'Wu Hui Mei123', 'wu1940@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1301', 'To Chung Yin123', 'to5@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1302', 'Harold Morris123', 'haroldmorri6@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1303', 'Miu Tin Wing123', 'twmiu@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1304', 'Ku Wing Sze123', 'wsku@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1305', 'Esther Tran123', 'et1003@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1306', 'Anthony Clark123', 'claranthony901@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1307', 'Yuan Xiuying123', 'xiuyingyuan@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1308', 'Lu Jiehong123', 'lujiehong822@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1309', 'Joe Griffin123', 'griffinjoe@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1310', 'Fukuda Ren123', 'ren96@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1311', 'Mario Gomez123', 'marigomez@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1312', 'Fan Xiuying123', 'fanxiuyi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1313', 'Ono Rin123', 'ono83@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1314', 'Dong Xiuying123', 'xiuying61@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1315', 'Hu Zitao123', 'huz@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1316', 'Wan Ming Sze123', 'mswan4@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1317', 'Fan Kwok Kuen123', 'kwokkuen2020@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1318', 'Qiu Ziyi123', 'qziyi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1319', 'Fan Ziyi123', 'ziyi6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1320', 'Harada Akina123', 'harada78@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1321', 'Shi Lan123', 'shilan@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1322', 'Lam Sai Wing123', 'swlam@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1323', 'Dawn Cole123', 'dawncol@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1324', 'Ku Tsz Hin123', 'thku1226@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1325', 'Sakurai Ren123', 'sakren2@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1326', 'Ito Eita123', 'itoe1114@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1327', 'Frank Munoz123', 'munozfran1023@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1328', 'Arimura Kazuma123', 'kazumaarimura@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1329', 'Jane Romero123', 'jr42@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1330', 'Man Tsz Ching123', 'mtszching@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1331', 'Chris Ramirez123', 'chrisra@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1332', 'Tang Rui123', 'taru1@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1333', 'Kono Hina123', 'kono5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1334', 'Virginia Silva123', 'siv@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1335', 'Fong Wing Sze123', 'fongwingsze2008@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1336', 'Inoue Mitsuki123', 'mitsukii17@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1337', 'Yamamoto Yuto123', 'yutyama@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1338', 'Kong Lai Yan123', 'konglaiyan@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1339', 'Lok Wai Yee123', 'waiyeelok4@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1340', 'Kwok Wai Lam123', 'kwokwl@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1341', 'Matsui Kazuma123', 'kazumatsui8@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1342', 'Theresa Chavez123', 'theresa1986@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1343', 'Yuen Chiu Wai123', 'yuencw@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1344', 'Yang Zhiyuan123', 'zhiyuanyan@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1345', 'Bobby Garcia123', 'garcibob@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1346', 'Ma Anqi123', 'ma2@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1347', 'Jerry Graham123', 'jerry6@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1348', 'Lui Wing Kuen123', 'wklui@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1349', 'Qiu Yuning123', 'qiuy@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1350', 'Frank Miller123', 'millerfrank8@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000918', '972WcwShao Jiehong123', 'shaojieh@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000919', '972WcwFujita Yamato123', 'fyamato@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000920', '972WcwKinoshita Yuito123', 'kinoshita9@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000921', '972WcwLau Ching Wan123', 'chingwanla@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000922', '972WcwJoseph Simpson123', 'josephs60@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000923', '972WcwHao Jialun123', 'jiaha@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000924', '972WcwDale Weaver123', 'weavdale1021@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000925', '972WcwAngela Moreno123', 'moang@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000926', '972WcwMaruyama Takuya123', 'takuya1@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000927', '972WcwOgawa Kazuma123', 'kazuma6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000928', '972WcwDu Jialun123', 'djialun@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000929', '972WcwHao Xiaoming123', 'xiaominghao@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000930', '972WcwJesse Gibson123', 'gibsoje@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000931', '972WcwMiyamoto Rena123', 'miyamotorena@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000932', '972WcwWu Jiehong123', 'jiehowu620@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000933', '972WcwHo Sum Wing123', 'hosumwing@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000934', '972WcwLori Russell123', 'russelllori@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000935', '972WcwHu Zhennan123', 'huz10@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000936', '972WcwSong Zhiyuan123', 'zhiyuansong7@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000937', '972WcwChang Xiaoming123', 'xiaoming5@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000938', '972WcwDeng Zhennan123', 'dengzhennan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000939', '972WcwShing Wai San123', 'waisans@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000940', '972WcwNicholas Fernandez123', 'nichofernandez@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000941', '972WcwHeung Kwok Yin123', 'heung53@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000942', '972WcwChiba Sara123', 'sarachiba@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000943', '972WcwKwong Ka Fai123', 'kwong1216@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000944', '972WcwPang Lai Yan123', 'lypan609@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000945', '972WcwEndo Sakura123', 'endosakura@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000946', '972WcwGao Zhennan123', 'gazhen1987@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000947', '972WcwWu Jialun123', 'wuji@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000948', '972WcwFong Fu Shing123', 'fofushing86@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000949', '972WcwMeng Yunxi123', 'yunximeng5@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000950', '972WcwFong Ching Wan123', 'chinfo@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000951', '972WcwKwok Chieh Lun123', 'kwokcl@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000952', '972WcwNorman Freeman123', 'norman66@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000953', '972WcwHsuan Sai Wing123', 'swhsuan1108@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000954', '972WcwHenry Wright123', 'wrighth@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000955', '972WcwJin Yuning123', 'jin2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000956', '972WcwWong Ka Fai123', 'wongkf211@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000957', '972WcwShi Yunxi123', 'yunxi1946@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000958', '972WcwHo Sze Yu123', 'szeyuho05@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000959', '972WcwJerry Webb123', 'webb1@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000960', '972WcwKenneth Jackson123', 'kennethjac508@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000961', '972WcwAaron Lewis123', 'lewis12@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000962', '972WcwKoon Ho Yin123', 'hoyinkoon4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000963', '972WcwDai Ka Ming123', 'dkaming@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000964', '972WcwMarjorie Guzman123', 'marjorieguz@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000965', '972WcwSandra Rose123', 'sandrar7@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000966', '972WcwNakamura Daichi123', 'dainak1976@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000967', '972WcwLau Sze Kwan123', 'szekwanlau@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000968', '972WcwKato Ayano123', 'kata@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000969', '972WcwChoi Tsz Ching123', 'tcchoi511@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000970', '972WcwKwan Hiu Tung123', 'kwan2003@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000971', '972WcwFujii Hina123', 'hfuj4@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000972', '972WcwYang Lu123', 'yang13@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000973', '972WcwIshii Ayato123', 'ishayato2018@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000974', '972WcwYe Lu123', 'yelu@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000975', '972WcwRen Zitao123', 'zitao525@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000976', '972WcwKato Rin123', 'rink17@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000977', '972WcwBrandon Griffin123', 'grbrandon@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000978', '972WcwAnthony Anderson123', 'anderson9@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000979', '972WcwWang Xiaoming123', 'waxiaoming@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000980', '972WcwKwong Sai Wing123', 'kwongsaiwi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000981', '972WcwWei Yuning123', 'weiyun429@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000982', '972WcwMasuda Rena123', 'renamasuda@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000983', '972WcwYu Shihan123', 'yshiha@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000984', '972WcwWada Mitsuki123', 'mitsuki3@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000985', '972WcwVictor Robertson123', 'rvictor@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000986', '972WcwBobby Jackson123', 'jacksonbobb@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000987', '972WcwMiura Shino123', 'miurashi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000988', '972WcwYu Yuning123', 'yuyuni7@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000989', '972WcwConnie Barnes123', 'conniebarne218@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000990', '972WcwLiang Yunxi123', 'yunxi7@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000992', '972WcwHan Cho Yee123', 'hanchoyee@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000993', '972WcwJohn Ford123', 'jf19@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000994', '972WcwNishimura Minato123', 'nishimura3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000995', '972WcwTamura Nanami123', 'nanamit62@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000996', '972WcwChen Ziyi123', 'ziyi519@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000997', '972WcwKwong Ho Yin123', 'kwong907@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000998', '972WcwDeng Shihan123', 'dengshiha@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000999', '972WcwAlice Griffin123', 'grialic616@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100001000', '972WcwMD. NUR UDDIN SAIMON123', 'saimonnuruddin@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100001002', '972Wcwsayeed123', 'sayeed@yahooo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100001004', '972WcwMD. SAYEEDUZZAMAN123', 'sayeed5443@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100001005', '972WcwMD. RAYAN ISLAM123', 'ggrayan@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000425', '972WcwOkamoto Takuya123', 'okamotot@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000426', '972WcwIkeda Miu123', 'mikeda1001@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000427', '972WcwYung Hok Yau123', 'hyyu5@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000428', '972WcwJiang Zhiyuan123', 'zhij8@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000429', '972WcwWei Xiuying123', 'xiuying1976@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000430', '972WcwHasegawa Sara123', 'shasegawa@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000431', '972WcwLoui Ming123', 'loui914@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000432', '972WcwIto Hikari123', 'hito1994@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000433', '972WcwDu Yunxi123', 'yunxidu58@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000434', '972WcwManuel Hill123', 'hillmanuel1214@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000435', '972WcwThomas Thomas123', 'ththom43@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000436', '972WcwAaron Davis123', 'aarondavis@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000437', '972WcwWilliam Martin123', 'mwil1230@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000438', '972WcwSakai Hikari123', 'sahikari5@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000439', '972WcwYamamoto Hina123', 'hinayamamoto69@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000440', '972WcwTang Wai San123', 'waisantang@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000441', '972WcwTam Chun Yu123', 'tamcy@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000442', '972WcwChang Yunxi123', 'yunxchang1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000443', '972WcwZhao Zitao123', 'zzha7@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000444', '972WcwJohn Ramos123', 'rjohn@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000445', '972WcwDing Yunxi123', 'yunxid@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000446', '972WcwLok Kar Yan123', 'karyan314@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000447', '972WcwTang Ling Ling123', 'tlingling@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000448', '972WcwSakai Kazuma123', 'ksakai@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000449', '972WcwWong Tsz Hin123', 'tszhwong@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000450', '972WcwMarcus Alexander123', 'marcale@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000451', '972WcwFujii Riku123', 'rikufuj@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000452', '972WcwDeng Lu123', 'ludeng1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000453', '972WcwNakano Daichi123', 'daichnakano@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000454', '972WcwSteve Ford123', 'steve116@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000455', '972WcwJuan Grant123', 'gjuan10@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000456', '972WcwCindy Allen123', 'cindyalle1005@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000457', '972WcwMan Tsz Hin123', 'mantszhin@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000458', '972WcwOtsuka Yuito123', 'otsukyuito2@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000459', '972WcwChan Sze Yu123', 'sychan8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000460', '972WcwMo Shihan123', 'shihanmo@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000461', '972WcwCheung Wai Han123', 'waihan76@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000462', '972WcwJohn Woods123', 'johnwo@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000463', '972WcwLeung Wai Han123', 'leung8@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000464', '972WcwAlexander Mendoza123', 'mendozaalexander@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000465', '972WcwKondo Sara123', 'konsara@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000466', '972WcwHeung Wai Han123', 'whheung@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000467', '972WcwNakamura Yuna123', 'ny9@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000468', '972WcwHarada Misaki123', 'misakharada@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000469', '972WcwFan Lu123', 'lufan02@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000470', '972WcwMurakami Mitsuki123', 'mitmurakami@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000471', '972WcwFujii Ryota123', 'fur@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000472', '972WcwFu Lan123', 'laf@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000473', '972WcwYamaguchi Airi123', 'yamaguchia8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000474', '972WcwJanet Rose123', 'rosejanet6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000475', '972WcwTaniguchi Shino123', 'shinta9@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000476', '972WcwSasaki Itsuki123', 'itsus@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000477', '972WcwIkeda Kazuma123', 'kazumikeda6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000478', '972WcwWong Tin Lok123', 'tinwo@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000479', '972WcwEdna Sanchez123', 'sanchezedna5@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000480', '972WcwSheh Ka Ming123', 'kamingsh51@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000481', '972WcwWan Kwok Ming123', 'wakm@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000482', '972WcwDawn Dunn123', 'dund3@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000483', '972WcwXiong Anqi123', 'anqixiong@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000484', '972WcwSato Hazuki123', 'hazuki1028@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000485', '972WcwPak Ling Ling123', 'linglingpak@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000486', '972WcwKinoshita Yuto123', 'yuto527@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000487', '972WcwDing Ziyi123', 'ziyi4@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000488', '972WcwYamamoto Ren123', 'renyamamoto1127@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000489', '972WcwFang Xiaoming123', 'fang10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000490', '972WcwTakagi Hikaru123', 'hiktakagi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000491', '972WcwLeslie Coleman123', 'lcoleman@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000492', '972WcwWang Lu123', 'luwang@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000493', '972WcwZheng Zitao123', 'zizheng@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000494', '972WcwIkeda Hana123', 'hik@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000495', '972WcwYing Tsz Ching123', 'yintszching@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000496', '972WcwJiang Xiuying123', 'xiuyingjiang901@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000497', '972WcwLuis Baker123', 'luba926@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000498', '972WcwHenry Sanchez123', 'henrs@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000499', '972WcwKwan Sum Wing123', 'kwasumwing@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000500', '972WcwDonald Cox123', 'coxdonald@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000501', '972WcwArai Mai123', 'arai61@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000502', '972WcwJudith Reed123', 'reedjudith@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000503', '972WcwLok Wing Suen123', 'lowingsuen@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000504', '972WcwXu Lan123', 'lan4@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000505', '972WcwChan Yun Fat123', 'chan1215@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000506', '972WcwSun Lu123', 'sunlu@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000507', '972WcwBrandon Dixon123', 'dixobrandon@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000508', '972WcwIto Yuna123', 'iyuna1994@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000509', '972WcwMatsuda Hikari123', 'hmatsu630@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000510', '972WcwSakai Daisuke123', 'daisuke1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000511', '972WcwGregory Myers123', 'myegregory@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000512', '972WcwTakahashi Hikari123', 'hikaritakah1016@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000513', '972WcwMiura Ren123', 'miurre@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000514', '972WcwYamaguchi Ryota123', 'yamar511@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000515', '972WcwJesse Marshall123', 'marshall9@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000516', '972WcwHuang Jiehong123', 'jiehohuang603@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000517', '972WcwChang Yu Ling123', 'ylch@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000518', '972WcwRandall Ortiz123', 'ranortiz10@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000519', '972WcwMa Tsz Ching123', 'tcm@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000520', '972WcwZhong Xiuying123', 'xz214@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000521', '972WcwRussell Romero123', 'russell8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000522', '972WcwWong Sze Yu123', 'szeyuwo1108@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000523', '972WcwYamamoto Mitsuki123', 'ymi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000524', '972WcwMatsuda Ayato123', 'ayatoma131@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000525', '972WcwKono Hikari123', 'hikakono@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000526', '972WcwNoguchi Hina123', 'hnoguchi@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000527', '972WcwCarrie Watson123', 'carriew@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000528', '972WcwFujiwara Hazuki123', 'fujhazu1210@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000529', '972WcwErnest Webb123', 'ewe4@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000530', '972WcwKono Seiko123', 'konoseiko@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000531', '972WcwOgawa Miu123', 'mo523@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000532', '972WcwHirano Eita123', 'hirano1008@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000533', '972WcwLam Kwok Yin123', 'kwokyin1964@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000534', '972WcwShao Anqi123', 'anqishao2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000535', '972WcwStephanie Boyd123', 'boydstephanie@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000536', '972WcwAnnie Reyes123', 'anreyes1966@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000537', '972WcwYamazaki Hina123', 'hiyam510@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000538', '972WcwPeng Zhiyuan123', 'peng8@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000539', '972WcwClara Crawford123', 'clara10@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000540', '972WcwDai Lan123', 'landai@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000541', '972WcwHu Zitao123', 'hu804@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000542', '972WcwDorothy Mills123', 'dorothymil324@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000543', '972WcwRosa Kim123', 'kimrosa@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000544', '972WcwMori Aoi123', 'mori1208@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000545', '972WcwWatanabe Ikki123', 'watanabei@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000546', '972WcwYuen Tsz Hin123', 'tszhinyuen@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000547', '972WcwJohnny Black123', 'blackjohnny@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000548', '972WcwHara Yota123', 'hara416@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000549', '972WcwChow Chiu Wai123', 'chochiuwai@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000550', '972WcwHung Ka Ling123', 'hkl@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000551', '972WcwTaniguchi Yuto123', 'yutaniguchi5@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000552', '972WcwMiyamoto Akina123', 'ami75@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000553', '972WcwAndrew Castro123', 'acast@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000554', '972WcwSu Zhennan123', 'suzhenn@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000555', '972WcwTaniguchi Riku123', 'taniguchi18@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000556', '972WcwRaymond Green123', 'raymond84@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000557', '972WcwTakeda Kasumi123', 'takedakasumi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000558', '972WcwYung Chi Ming123', 'chiming1029@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000559', '972WcwZeng Zhiyuan123', 'zhiyuanzen1985@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000560', '972WcwPan Yuning123', 'ypa8@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000561', '972WcwKondo Ikki123', 'ikki2018@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000562', '972WcwYu Xiuying123', 'xiuyu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000563', '972WcwTao Jiehong123', 'jtao@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000564', '972WcwFujii Kasumi123', 'kfu50@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000565', '972WcwKong Zitao123', 'zkong@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000566', '972WcwWang Rui123', 'wang1958@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000567', '972WcwNathan Cole123', 'colenathan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000568', '972WcwWei Zitao123', 'weizi@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000569', '972WcwRoger Hawkins123', 'rogerhawkins1@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000570', '972WcwGary Ross123', 'roga8@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000571', '972WcwJulia Mason123', 'jumaso2011@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000572', '972WcwLee Cho Yee123', 'leechoyee826@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000573', '972WcwAndo Daichi123', 'dan@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000574', '972WcwAllen Walker123', 'allenwalker@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000575', '972WcwAntonio Reyes123', 'areyes@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000576', '972WcwHeung Wai Man123', 'wmheung@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000577', '972WcwPhyllis Cole123', 'pcole107@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000578', '972WcwTiffany Ross123', 'tiffaro97@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000579', '972WcwBarbara Collins123', 'barcollins@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000580', '972WcwDai Xiaoming123', 'xiaomingd1222@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000581', '972WcwCui Lan123', 'cui10@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000582', '972WcwMeng Tsz Hin123', 'tsme927@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000583', '972WcwYin Zitao123', 'yinzitao8@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000584', '972WcwTong Kwok Wing123', 'kwokwington@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000585', '972WcwLee Ka Fai123', 'leekafai@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000586', '972WcwInoue Minato123', 'inoueminato1965@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000587', '972WcwMori Takuya123', 'tmo56@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000588', '972WcwNakagawa Ren123', 'rnakagawa@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000589', '972WcwGong Zhiyuan123', 'zhiyuan10@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000590', '972WcwNancy Richardson123', 'nancy07@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000591', '972WcwAnne Anderson123', 'anan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000592', '972WcwChin Wai Man123', 'chinwm5@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000593', '972WcwYe Anqi123', 'anqi10@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000594', '972WcwNakajima Yuna123', 'nakajimay@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000595', '972WcwSylvia Bell123', 'sylvibell7@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000596', '972WcwKong Sum Wing123', 'kosw@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000597', '972WcwVictoria Anderson123', 'vanderson@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000598', '972WcwHao Anqi123', 'hao415@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000599', '972WcwEllen Stephens123', 'ste@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000600', '972WcwMok Ka Ming123', 'kmmo@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000601', '972WcwLoui Ming Sze123', 'mingszelou@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000602', '972WcwBeverly Vasquez123', 'vasquezb@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000603', '972WcwNakamori Misaki123', 'nmisaki4@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000604', '972WcwSato Ikki123', 'sato8@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000605', '972WcwMa Anqi123', 'anqima71@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000606', '972WcwFlorence Patel123', 'patelflorence1966@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000607', '972WcwHui Wai Lam123', 'huiwl@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000608', '972WcwArimura Tsubasa123', 'tsar1945@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1810', 'Timothy Payne123', 'timopa@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1811', 'Ogawa Hina123', 'ogawhina@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1812', 'Tracy Ruiz123', 'tracy1103@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1813', 'Nomura Yuna123', 'ynomur224@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1814', 'Yamamoto Eita123', 'eitayamamoto@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1815', 'Nakagawa Hikari123', 'nakagawahikari9@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1816', 'Ando Kenta123', 'ake@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1817', 'Xiong Yunxi123', 'xiongy@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1818', 'Chiang Sze Kwan123', 'csz@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1819', 'Rose Martinez123', 'rosemartinez@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1820', 'Richard Hernandez123', 'richard4@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1821', 'Sakurai Yuito123', 'yuitosakurai4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1822', 'Fu Zhennan123', 'fzhennan10@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1823', 'Hsuan Fat123', 'fath123@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1824', 'Sano Kenta123', 'sanokenta57@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1825', 'Gu Zhiyuan123', 'zhiyuang@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1826', 'Xie Lan123', 'laxie7@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1827', 'Tang Jiehong123', 'tang74@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1828', 'Joel Kelly123', 'kellyjoel@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1829', 'Zhang Lan123', 'lanz@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1830', 'Wong Fat123', 'wong3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1831', 'Hazel Black123', 'blackhaz@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1832', 'Victoria Rivera123', 'vri81@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1833', 'Cheng Ling Ling123', 'cll319@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1834', 'Juan Morgan123', 'juan1972@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1835', 'Fukuda Hina123', 'hfuku@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1836', 'Kikuchi Yamato123', 'kikucyama@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1837', 'Yin Ming123', 'mingyin@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1838', 'Ichikawa Nanami123', 'ichiknana48@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1839', 'Yuen Wai Man123', 'ywaiman@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1840', 'Lin Yuning123', 'liyun727@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1841', 'Gong Xiuying123', 'xg1991@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1842', 'Noguchi Itsuki123', 'noguchi220@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1843', 'Eddie Wagner123', 'wedd@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1844', 'Charles Payne123', 'paynecharles@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1845', 'Sit Yu Ling123', 'yuling50@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1846', 'Yau On Na123', 'onyau4@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1847', 'Jeffrey Jackson123', 'jeffrjacks@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1848', 'Chin Wing Sze123', 'cwingsze@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1849', 'Yu Xiaoming123', 'xiayu@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1850', 'Hsuan Tin Wing123', 'tinwinghs1966@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1851', 'Nishimura Yuto123', 'yuto705@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1852', 'Jean Harris123', 'jeanha2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1853', 'Meng Chung Yin123', 'mency@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1854', 'Wang Xiaoming123', 'wangxiaoming@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1855', 'Wei Jialun123', 'wejialun@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1856', 'Kikuchi Ikki123', 'ikki320@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1857', 'Yung Hok Yau123', 'hokyy10@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1858', 'Tao Ting Fung123', 'ttf@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1859', 'Ishikawa Rena123', 'renaishik@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1860', 'Zhao Zhennan123', 'zhzhennan@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1861', 'Cheng Yuning123', 'chengyu1945@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1862', 'Dai Ling Ling123', 'lld@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1863', 'Dawn Moreno123', 'morenod@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1864', 'Lam Wing Fat123', 'wingfatlam118@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1865', 'Takada Miu123', 'tmiu905@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1866', 'Dai Wai Lam123', 'dai829@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1867', 'Ando Ayano123', 'andoayano310@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1868', 'Leslie Collins123', 'collins62@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1869', 'John Miller123', 'johnmill@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1870', 'Antonio Dunn123', 'dunnantonio6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1871', 'Lau Wing Sze123', 'wingszelau@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1872', 'Lu Yunxi123', 'yunxilu5@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1873', 'Sarah Hughes123', 'shughes@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1874', 'Ishida Yuto123', 'ishida3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1875', 'Shimada Aoshi123', 'shimadaaoshi@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1876', 'Fan Zhiyuan123', 'zhiyuanfa82@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1877', 'Kikuchi Aoshi123', 'akikuchi@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1878', 'Lai Kwok Ming123', 'kwokming4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1879', 'Kwong Hok Yau123', 'khy@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1880', 'Diane Hayes123', 'hayes3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1881', 'Francisco Brown123', 'francbrown4@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1882', 'Meng Wing Fat123', 'wfmen@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1883', 'Wei Xiuying123', 'weixiuying@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1884', 'Zeng Anqi123', 'anqi1129@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1885', 'Ichikawa Daisuke123', 'daisuke74@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1886', 'Hsuan Ka Man123', 'kmh@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1887', 'Chang Shihan123', 'shichan@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1888', 'Rose Flores123', 'rose1@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1889', 'Carolyn Butler123', 'butlercarol@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1890', 'Xie Lu123', 'xie7@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1891', 'Tse Wai Han123', 'tsewh@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1892', 'Ng Kwok Yin123', 'ngky@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1893', 'Judith Thompson123', 'judithth@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1894', 'Jose Collins123', 'collijo@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1895', 'Takada Hina123', 'hina20@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1896', 'Tin Cho Yee123', 'choyeeti@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1897', 'Keith Stone123', 'stone1126@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1898', 'Arai Eita123', 'eita2013@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1899', 'Sano Miu123', 'samiu7@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1900', 'Hu Zhiyuan123', 'huzhiyuan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1901', 'Ma Tsz Hin123', 'math45@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1902', 'Matsumoto Kenta123', 'kenta1221@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1903', 'Jeremy Hayes123', 'jeremha@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1904', 'Sarah Lopez123', 'lopezsar@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1905', 'Ren Ziyi123', 'renziyi2@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1906', 'Zhou Jiehong123', 'zhji@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1907', 'Gloria Aguilar123', 'ag1979@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1908', 'Leung On Na123', 'onleu930@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1909', 'Liao Xiaoming123', 'liaoxi1980@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1910', 'Wong Tsz Ching123', 'wontszching48@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1911', 'Sit Lik Sun123', 'sls2@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1912', 'Nicole Schmidt123', 'schmidtnic@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1913', 'Meng Ziyi123', 'mengziy80@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1914', 'Sato Sakura123', 'sakurasato7@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1915', 'Cui Lu123', 'lc227@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1916', 'Jack Kim123', 'jakim@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1917', 'Yokoyama Ryota123', 'yryo@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1918', 'Matsui Momoe123', 'matsuimomoe@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1919', 'Kono Takuya123', 'takuyako@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1920', 'Xu Jialun123', 'jixu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1921', 'Sun Jialun123', 'jialunsun@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1922', 'Hsuan On Kay123', 'onkayhsu5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1923', 'Morita Miu123', 'mormiu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1924', 'Ma Yuning123', 'yuninm913@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1925', 'Che Wai Lam123', 'wailamc8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1926', 'Tsang Chung Yin123', 'cytsan@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1927', 'Abe Daichi123', 'daichi914@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1928', 'Shi Anqi123', 'ashi328@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1929', 'Ronald Grant123', 'ronald7@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1930', 'Maruyama Hikari123', 'maruyhikari@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1931', 'Hung Chi Yuen123', 'hungchiy818@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1932', 'Roy Robinson123', 'royrobinson512@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1933', 'Yin Ka Keung123', 'ykk1978@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1934', 'Frank Turner123', 'frant@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1935', 'Ichikawa Yuito123', 'ichikawayuit2@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1936', 'Zou Lan123', 'zoulan@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1937', 'Siu Hok Yau123', 'hokyaus@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1938', 'Kathryn Hughes123', 'hugheskath9@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1939', 'Tong Hok Yau123', 'hokyau1031@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1940', 'Tse Suk Yee123', 'sukyeetse3@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1941', 'Theresa Rodriguez123', 'thererod@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1942', 'Liang Zitao123', 'lzi@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1943', 'Kinoshita Mai123', 'kinoshitamai@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1944', 'Kathy Bailey123', 'baileyk7@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1945', 'Wada Sara123', 'sarwada@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1946', 'Nakajima Ryota123', 'nakajima221@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1947', 'Zhong Zhiyuan123', 'zhiyuanzho@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1948', 'Kwan Yu Ling123', 'yuling6@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1949', 'Peggy Rivera123', 'rivpegg@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1950', 'Endo Yuito123', 'endoyuito@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1951', 'Saito Ren123', 'rens@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1952', 'Kimura Airi123', 'kimurairi1005@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1953', 'Okada Takuya123', 'takuya7@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1954', 'Yuen Sau Man123', 'yuensauman@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1955', 'Kong Zitao123', 'zitaokon9@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1956', 'Xiang Lu123', 'xianglu@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1957', 'Fujiwara Tsubasa123', 'tsubasafujiwara49@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1958', 'Hao Yuning123', 'haoy@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1959', 'Lau Kwok Wing123', 'lkwokwing@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1960', 'Dawn Anderson123', 'anderda@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1961', 'Duan Zhiyuan123', 'duan722@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1962', 'Kono Kaito123', 'kaitokon@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1963', 'Tang Xiaoming123', 'tangxiaoming@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1964', 'Donna Moore123', 'moordonna1@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1965', 'Murata Ren123', 'mren@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1966', 'Joel Foster123', 'joelfos101@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1967', 'Kikuchi Momoka123', 'momokikuchi00@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1968', 'Leonard Wright123', 'wrightle@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1969', 'Tsang Hui Mei123', 'hmtsang116@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1970', 'April Bailey123', 'aprib@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1971', 'Otsuka Momoka123', 'mo5@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1972', 'Juan Schmidt123', 'juaschmidt10@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1973', 'Chow Ka Ling123', 'klc10@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1974', 'Yin Tak Wah123', 'yintw@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1975', 'Ruth Hall123', 'harut@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1976', 'Sato Tsubasa123', 'sts6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1977', 'Ryan Watson123', 'watsonryan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1978', 'Cynthia Gibson123', 'cynthia205@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1979', 'Tony Thomas123', 'thomatony@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1980', 'Yamada Daichi123', 'daichyamad@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1981', 'Cui Jialun123', 'jialun4@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1982', 'Kinoshita Nanami123', 'knanam6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1983', 'Vincent Mills123', 'mills7@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1984', 'Yoshida Mio123', 'miyoshida@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1985', 'Miu Chung Yin123', 'chungyin78@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1986', 'Randall Rose123', 'randrose710@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1987', 'Lam Chi Ming123', 'chimingl@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1988', 'Shirley Tucker123', 'shirleyt301@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1989', 'Qian Jiehong123', 'qianji@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1990', 'Kwong Ching Wan123', 'cwk6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1991', 'Takeda Itsuki123', 'takeda77@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1992', 'Zou Zitao123', 'zou5@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1993', 'Che Kwok Kuen123', 'kwokkuench828@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1994', 'Jiang Lan123', 'jiang807@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1995', 'Lok Yun Fat123', 'lok10@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1996', 'Ng Yu Ling123', 'ngyl@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1997', 'Bradley Munoz123', 'mbradley@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1998', 'Dennis Williams123', 'dwill6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('1999', 'Ruby Wood123', 'woodruby@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2000', 'Jeffery Lee123', 'leejeffe@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2001', 'Juanita Herrera123', 'heju55@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2002', 'Yuen Ming123', 'yuenming@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2003', 'Ueno Sakura123', 'ues2@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2004', 'Zhao Shihan123', 'shihanzha1978@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2005', 'Wong Wai San123', 'wswo13@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2006', 'Zou Shihan123', 'zos@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2007', 'Dong Ziyi123', 'ziyidong7@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2008', 'Ng Yun Fat123', 'yfng3@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2009', 'Theodore Hawkins123', 'theohawkins1224@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2010', 'Nomura Tsubasa123', 'nomurats@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2011', 'Lam Hok Yau123', 'hyla90@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2012', 'Hao Jiehong123', 'jiehoha@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2013', 'Arai Miu123', 'miuarai@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2014', 'Yuan Lan123', 'yuanla@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2015', 'Nakamori Miu123', 'namiu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2016', 'Duan Zitao123', 'duanzitao2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2017', 'Gao Lan123', 'galan@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2018', 'Tracy Thomas123', 'ttracy@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2019', 'Hayashi Hina123', 'hayashihin1011@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2020', 'Robin Russell123', 'rorussell@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2021', 'Li Xiuying123', 'xiuying73@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2022', 'Andrea Salazar123', 'andrea10@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2023', 'Lisa Watson123', 'watsonlisa707@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2024', 'Siu Wai Man123', 'waiman1978@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2025', 'Cho Ting Fung123', 'tingfung1023@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2026', 'Josephine Griffin123', 'griffinj4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2027', 'Takagi Mio123', 'miota61@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2028', 'Kobayashi Yuito123', 'yk85@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2029', 'Ti Wing Fat123', 'wft1031@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2030', 'Zhu Lu123', 'lu116@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2031', 'Kam Chung Yin123', 'chungyin8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2032', 'Louis James123', 'lojames9@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2033', 'Gerald Morales123', 'morales411@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2034', 'Iwasaki Kasumi123', 'iwasakasumi12@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2035', 'To Wing Kuen123', 'wingkuen6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2036', 'Siu Ming123', 'sium@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2037', 'Hara Ayato123', 'haraayat@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2038', 'Pan Xiaoming123', 'xiaoming711@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2039', 'Sylvia Woods123', 'sylviawoods@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2040', 'Saito Riku123', 'saito5@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2041', 'Fan Sze Kwan123', 'fsk@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2042', 'Wong Tin Wing123', 'wtinwing@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2043', 'Zhong Anqi123', 'anqizh47@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2044', 'Hasegawa Seiko123', 'seikoh@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2045', 'Loui Wai Man123', 'loui201@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2046', 'Kathleen Martinez123', 'martinezkathleen4@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2047', 'Tamura Kenta123', 'tamura80@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2048', 'Carrie White123', 'carriwhite71@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2049', 'Yeow Ka Ling123', 'yeowkaling@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2050', 'Ma Jiehong123', 'jiehongma1@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2051', 'Andrea Bennett123', 'bennetta@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2052', 'Hui Ka Ling123', 'huikaling2@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2053', 'Ma Wing Fat123', 'mwingfat@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2054', 'Ronald Lee123', 'leer@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2055', 'Russell Vargas123', 'vargas1023@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2056', 'Ueda Kaito123', 'ueda1962@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2057', 'Micheal Cruz123', 'crmicheal@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2058', 'Su Shihan123', 'ssu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2059', 'Yamamoto Mio123', 'mioyamamoto@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2060', 'Fujiwara Mio123', 'fujiwaramio427@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2061', 'Lai Yun Fat123', 'lai229@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2062', 'Yip Ming123', 'miyip6@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2063', 'Long Zhennan123', 'zhennanlong@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2064', 'Nakano Rin123', 'nrin8@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2065', 'Chen Jialun123', 'jialunc@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2066', 'Miu Tak Wah123', 'miutw3@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2067', 'Terry Patel123', 'terryp@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2068', 'Yuen Ho Yin123', 'yuenhy@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2069', 'Qian Lu123', 'qilu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2070', 'Mao Zhennan123', 'zhemao@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2071', 'Mo Wing Suen123', 'winmo@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2072', 'Xia Rui123', 'xirui@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2073', 'Xiang Yunxi123', 'yunxixiang@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2074', 'Xiong Lan123', 'xionglan2018@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2075', 'Miyazaki Mai123', 'miyamai2013@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2076', 'Cheung Lai Yan123', 'laiyan813@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2077', 'Rhonda Thomas123', 'thomas613@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2078', 'Lau Sai Wing123', 'saiwinglau1998@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2079', 'Maeda Itsuki123', 'maitsuki@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2080', 'Jimmy Allen123', 'ja10@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2081', 'Li Anqi123', 'anqli3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2082', 'Amy Gibson123', 'amygibson@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2083', 'So Wing Fat123', 'sowingfat@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2084', 'Crystal Meyer123', 'crystal06@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2085', 'Yuen Hiu Tung123', 'hiutung9@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2086', 'Phyllis Brown123', 'phyllisbro1224@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2087', 'Ueda Yota123', 'yueda@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2088', 'Jesse Vargas123', 'jesvargas@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2089', 'Chang Anqi123', 'achang@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2090', 'Yoshida Kazuma123', 'ykazum@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2091', 'Kam Kwok Yin123', 'kwokyinkam@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2092', 'Stephen Gutierrez123', 'stephengutie@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2093', 'Wong Chi Yuen123', 'cyw6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2094', 'Hashimoto Aoi123', 'hashimotoaoi@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2095', 'Lin Xiuying123', 'xiuylin925@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2096', 'Mok Tak Wah123', 'mtakwah@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2097', 'Cao Yunxi123', 'cy7@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2098', 'Sara Bryant123', 'bsara@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2099', 'Yoshida Mai123', 'yoshida203@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2100', 'Lu Zhiyuan123', 'zhiyuanlu@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2101', 'Yin Xiaoming123', 'yinx@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2102', 'Long Lu123', 'llong@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2103', 'Edna Coleman123', 'coleme@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2104', 'Morita Sara123', 'sara1991@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2105', 'Lu Lan123', 'lulan@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2106', 'Christina Romero123', 'romerochri@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2107', 'Yeung Hok Yau123', 'hokyauyeung@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2108', 'Sasaki Takuya123', 'sasakitak@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2109', 'Shen Shihan123', 'shihanshen85@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2110', 'Yu Shihan123', 'yushih1@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2111', 'Lui Ka Ling123', 'kaling63@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2112', 'Connie Wright123', 'wright505@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2113', 'Gloria Kim123', 'gloria70@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2114', 'Ikeda Takuya123', 'ikeda52@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2115', 'Hirano Ren123', 'hirano41@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2116', 'Arthur Griffin123', 'arthurgriffin1@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2117', 'Jane Stone123', 'stonej6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2118', 'Takeda Eita123', 'tae430@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2119', 'Nakamura Daichi123', 'ndai704@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2120', 'Fu Siu Wai123', 'sif3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2121', 'Lok Sze Yu123', 'lok414@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2122', 'Steve Webb123', 'stevew@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2123', 'Zhou Rui123', 'ruizh8@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2124', 'Gregory Ward123', 'wardg@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2125', 'Carmen Marshall123', 'carmen4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2126', 'Feng Yuning123', 'fengyunin@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2127', 'Yuen Siu Wai123', 'swyue113@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2128', 'Nakamori Momoka123', 'momokanakamori@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2129', 'Chen Zitao123', 'zitch722@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2130', 'Ono Mitsuki123', 'mitsukio609@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2131', 'Siu Ting Fung123', 'siu204@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2132', 'Tong Sze Yu123', 'syt7@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2133', 'Goto Rena123', 'gore5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2134', 'Lu Xiaoming123', 'luxiaoming@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2135', 'Feng Lu123', 'lufen@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2136', 'Raymond Aguilar123', 'ara@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2137', 'Carmen Gray123', 'carmengray@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2138', 'Sakurai Hina123', 'hina5@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2139', 'Siu Ka Man123', 'kaman10@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2140', 'Bruce Boyd123', 'bruceb@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2141', 'Michael Nichols123', 'mnic@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2142', 'Norma Kelley123', 'kelley416@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2143', 'Grace Kelly123', 'kegrace50@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2144', 'Uchida Kazuma123', 'kazumauch93@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2145', 'Lee Fu Shing123', 'fushingl@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2146', 'Kikuchi Miu123', 'kikuchimiu@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2147', 'Shao Jiehong123', 'jisha@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2148', 'Maruyama Kasumi123', 'kmaruy@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2149', 'Deborah Silva123', 'silvadeborah@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2150', 'Fong Chi Yuen123', 'fonchiyuen4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2151', 'Ding Xiaoming123', 'dixiaoming8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2152', 'Hasegawa Mio123', 'mih6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2153', 'Christopher Schmidt123', 'chsch1208@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2154', 'Han Yuning123', 'yuningha1986@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2155', 'Alice Phillips123', 'alice4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2156', 'Donald Salazar123', 'sdona@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2157', 'Kwong Sau Man123', 'kwong3@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2158', 'Wan Sze Kwan123', 'szekwan05@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2159', 'Ren Lu123', 'lre@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2160', 'Tse Ching Wan123', 'tsechingwan2004@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2161', 'Tsui Tin Wing123', 'tstw@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2162', 'Edna Hunter123', 'edna120@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2163', 'Fang Yuning123', 'yuningfang@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2164', 'Mo Yunxi123', 'moyunxi1@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2165', 'Yoshida Tsubasa123', 'yoshidatsubasa@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2166', 'Tam Kwok Ming123', 'kwokming524@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2167', 'Sato Aoi123', 'satoaoi@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2168', 'Feng Lan123', 'lanfeng@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2169', 'Chin Kwok Kuen123', 'ckk@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2170', 'Fukuda Itsuki123', 'fukudaitsu78@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2171', 'Victoria Gardner123', 'gardnvic603@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2172', 'Lau Tak Wah123', 'takwahlau@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2173', 'Gong Zhennan123', 'gozhennan@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2174', 'Chu Wing Sze123', 'chws1965@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2175', 'Shimizu Takuya123', 'shtakuya@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2176', 'Deng Jiehong123', 'dengjiehong@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2177', 'Ho Wing Suen123', 'hows@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2178', 'Kelly Smith123', 'kellysmith@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2179', 'Fong Tin Lok123', 'tinlokf5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2180', 'Sarah Dunn123', 'sarahdunn@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2181', 'Takagi Itsuki123', 'it07@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2182', 'Arai Mio123', 'marai2@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2183', 'Abe Yuto123', 'abey2@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2184', 'Johnny Ross123', 'johross@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2185', 'Ruth Morris123', 'rmorri@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2186', 'Shimada Miu123', 'shimadamiu88@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2187', 'Ashley Murphy123', 'murphyashley@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2188', 'Ye Zitao123', 'yezitao@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2189', 'Eric Ross123', 'reric@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2190', 'Nakajima Mai123', 'nama@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2191', 'Harada Daisuke123', 'daisuke5@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2192', 'Miyazaki Ikki123', 'ikm@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2193', 'Alexander Torres123', 'torres51@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2194', 'Kwan Chung Yin123', 'chungyin10@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2195', 'Arthur Bailey123', 'arthur4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2196', 'Norman Gibson123', 'normgibson@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2198', 'Yamada Hazuki123', 'hya@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2200', 'Sit Chun Yu123', 'sicy@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2201', 'MD. RAIHAN SOBHAN123', 'mdraihansobhan34@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('2205', 'Abu Taleb123', 'talebgg@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000000', '972WcwImai Akina123', 'akina528@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000001', '972WcwLok Ting Fung123', 'tfl@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000002', '972WcwTsui Wai San123', 'waisan4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000003', '972WcwIto Hazuki123', 'hazuki4@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000004', '972WcwNakamori Yuto123', 'yutonak@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000005', '972WcwGrace Hernandez123', 'hernandez8@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000006', '972WcwIshii Daisuke123', 'idaisuke@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000007', '972WcwMak Wai Lam123', 'wailammak@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000008', '972WcwQin Zhennan123', 'zqin@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000009', '972WcwPhilip Hernandez123', 'hernphilip@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000010', '972WcwChung Hiu Tung123', 'chung01@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000011', '972WcwYamazaki Daisuke123', 'daisuyama4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000012', '972WcwKu Chun Yu123', 'cyku216@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000013', '972WcwQiu Xiaoming123', 'xiaomingq66@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000014', '972WcwNoguchi Eita123', 'noguchieit@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000015', '972WcwDai Kwok Ming123', 'kmdai3@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000016', '972WcwZhou Zitao123', 'zhouzitao@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000017', '972WcwGuo Xiaoming123', 'guxiaoming@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000018', '972WcwFrancis Robinson123', 'francis919@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000019', '972WcwAnn Sullivan123', 'annsullivan3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000020', '972WcwMo Kar Yan123', 'mkaryan@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000021', '972WcwLiao Sum Wing123', 'liasumwing@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000022', '972WcwTang Fu Shing123', 'fstan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000023', '972WcwAngela Collins123', 'collinsangel430@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000024', '972WcwXia Xiaoming123', 'xiaxiao@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000025', '972WcwLok Ka Keung123', 'kakeung7@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000026', '972WcwBilly Meyer123', 'billymey1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000027', '972WcwMarcus Cooper123', 'marcus627@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000028', '972WcwAaron Kim123', 'aaronki425@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000029', '972WcwFu Yuning123', 'fu7@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000030', '972WcwMan Wing Fat123', 'wingfat106@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000031', '972WcwLai Tak Wah123', 'takwah628@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000032', '972WcwNoguchi Hikari123', 'hikari98@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000033', '972WcwMan Chieh Lun123', 'chiehlunm@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000034', '972WcwDale Nelson123', 'dale93@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000035', '972WcwYamashita Hina123', 'hiyam@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000036', '972WcwHu Lu123', 'luhu9@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000037', '972WcwNancy Hunt123', 'nancy5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000038', '972WcwCarolyn Shaw123', 'shac@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000039', '972WcwRen Ziyi123', 'reziyi@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000040', '972WcwNg Lai Yan123', 'ngly1204@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000041', '972WcwCheng Zitao123', 'zitaocheng1975@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000042', '972WcwFong Kwok Ming123', 'fongkm@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000043', '972WcwEvelyn Brooks123', 'evelyn3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000044', '972WcwTakeda Aoshi123', 'ataked5@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000045', '972WcwYuen Ka Man123', 'kmyuen@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000046', '972WcwTo On Kay123', 'onkay87@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000047', '972WcwYip Chi Yuen123', 'chiyuen8@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000048', '972WcwKoo On Na123', 'kooonna@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000049', '972WcwTam Wai Yee123', 'wytam@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000050', '972WcwTang Rui123', 'rutang@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000051', '972WcwCarol Hicks123', 'hca66@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000052', '972WcwGoto Hikaru123', 'hgoto10@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000053', '972WcwArimura Seiko123', 'arimura70@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000054', '972WcwJose Gibson123', 'jose201@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000055', '972WcwWatanabe Tsubasa123', 'wtsubasa@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000056', '972WcwAllen Herrera123', 'aherrera00@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000057', '972WcwSato Hikari123', 'hikarisato84@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000058', '972WcwTang Ching Wan123', 'tanchingwan70@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000059', '972WcwJoanne Green123', 'jogree13@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000060', '972WcwFong Tsz Ching123', 'tcf@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000061', '972WcwPatrick Harris123', 'patharr52@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000062', '972WcwCao Shihan123', 'caoshihan@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000063', '972WcwTang Sum Wing123', 'swtang309@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000064', '972WcwDai Zhennan123', 'zhennan9@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000065', '972WcwKwan Tin Wing123', 'kwan1018@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000066', '972WcwJudith Bell123', 'belljudi@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000067', '972WcwChoi Wing Sze123', 'choiwingsze6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000068', '972WcwHirano Misaki123', 'mhi1120@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000069', '972WcwKelly Webb123', 'kewebb1945@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000070', '972WcwSylvia Mason123', 'smason@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000071', '972WcwSu Yuning123', 'yuninsu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000072', '972WcwWu Sai Wing123', 'saiwingwu74@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000073', '972WcwSong Rui123', 'songru@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000074', '972WcwEdith Smith123', 'edithsmith57@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000075', '972WcwYam Ming123', 'my10@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000076', '972WcwPan Jiehong123', 'panjieho8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000077', '972WcwNomura Mitsuki123', 'mno@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000078', '972WcwKu Fat123', 'kufat@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000079', '972WcwYokoyama Momoka123', 'yokoyama1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000080', '972WcwCheryl Medina123', 'cheryl5@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000081', '972WcwHarry Murray123', 'harry41@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000082', '972WcwTang On Kay123', 'taok@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000083', '972WcwIchikawa Nanami123', 'ichiknanami74@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000084', '972WcwJeffrey Rose123', 'rosejeffrey@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000171', '972WcwNakamura Hikaru123', 'nakamura117@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000085', '972WcwHan Zitao123', 'hanzitao@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000170', '972WcwTakahashi Riku123', 'takriku310@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000172', '972WcwRhonda Vargas123', 'varrhonda1015@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000173', '972WcwYuen Sai Wing123', 'swyue1026@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000174', '972WcwWu Lu123', 'wulu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000175', '972WcwCarlos Wallace123', 'wcarlos@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000176', '972WcwZhang Rui123', 'ruizh@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000177', '972WcwWei Shihan123', 'shihan8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000178', '972WcwRoy Peterson123', 'rpeterson3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000179', '972WcwEdna Fox123', 'efox@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000180', '972WcwYuen Ka Fai123', 'yuekf@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000181', '972WcwLeung Wing Kuen123', 'leung1102@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000182', '972WcwMorita Ren123', 'mr1992@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000183', '972WcwTong Hiu Tung123', 'tonghiutu@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000184', '972WcwFu Zitao123', 'zitaofu98@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000185', '972WcwLawrence Stone123', 'lawstone@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000186', '972WcwAlexander Daniels123', 'alexanderd6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000187', '972WcwNg Wing Fat123', 'ngwf@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000188', '972WcwKu Wai Han123', 'waihanku@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000189', '972WcwMike Jenkins123', 'jenkins421@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000190', '972WcwTse Sau Man123', 'tsesm6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000191', '972WcwChoi Chiu Wai123', 'choicw@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000192', '972WcwWanda Ellis123', 'waell@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000193', '972WcwLau Wing Fat123', 'wingfat80@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000194', '972WcwAndrew Green123', 'andrew6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000195', '972WcwHarada Kaito123', 'kaithara@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000196', '972WcwLee Cox123', 'cole@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000197', '972WcwGary Mason123', 'garymas@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000198', '972WcwIshii Mai123', 'ishiimai805@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000199', '972WcwJustin Hamilton123', 'hamiltonjustin@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000200', '972WcwYuan Jiehong123', 'jieyu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000201', '972WcwFu Anqi123', 'fu4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000202', '972WcwChad White123', 'chadwhite514@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000203', '972WcwJiang Ziyi123', 'zj1968@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000204', '972WcwKoyama Yuna123', 'yunakoyama1212@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000205', '972WcwMeng On Na123', 'onm69@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000206', '972WcwTse Yu Ling123', 'tseyl@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000207', '972WcwShi Rui123', 'shi42@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000208', '972WcwShen Ziyi123', 'zs93@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000209', '972WcwLu Jiehong123', 'lu1986@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000210', '972WcwYu Lu123', 'luy424@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000211', '972WcwBrian Kim123', 'kim1107@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000212', '972WcwFred Henry123', 'fredhenry@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000213', '972WcwSun Lan123', 'lansun@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000214', '972WcwChan Sai Wing123', 'chan526@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000215', '972WcwLoui Wai Man123', 'waimanlo9@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000216', '972WcwDong Jialun123', 'dojialun@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000217', '972WcwJiang Lan123', 'jlan622@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000218', '972WcwPeng Zhennan123', 'pengzhennan@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000219', '972WcwLoui Chieh Lun123', 'louicl@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000220', '972WcwMa Xiaoming123', 'maxiao@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000221', '972WcwFu Hui Mei123', 'fuhuimei8@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000222', '972WcwSakai Yota123', 'yotas5@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000223', '972WcwFlorence Myers123', 'myers59@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000224', '972WcwRobert Bailey123', 'brobert@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000225', '972WcwJiang Lu123', 'lujiang@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000226', '972WcwChang Shihan123', 'shihan9@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000227', '972WcwTi Wai Man123', 'ti6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000228', '972WcwFeng Yuning123', 'fengyuning@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000229', '972WcwEdward Warren123', 'edwardwa@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000230', '972WcwRicky Nelson123', 'rnels831@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000231', '972WcwMario Stone123', 'marstone@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000232', '972WcwSarah Hicks123', 'sarahhicks@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000233', '972WcwKwan Tsz Ching123', 'kwatszching@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000234', '972WcwDiane Wood123', 'wodiane715@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000235', '972WcwMarcus Garza123', 'garzam@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000236', '972WcwMori Riku123', 'rikumo4@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000237', '972WcwTse Tsz Hin123', 'thts@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000238', '972WcwMatsui Minato123', 'mmatsui9@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000239', '972WcwBrian Davis123', 'briand@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000240', '972WcwMui Ka Fai123', 'kfm926@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000241', '972WcwEmily Hunter123', 'hunte@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000242', '972WcwYamamoto Riku123', 'riyam@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000243', '972WcwHo On Kay123', 'onkayho@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000244', '972WcwHara Kazuma123', 'harakazum@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000245', '972WcwYin Jiehong123', 'jieyin5@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000246', '972WcwOno Aoshi123', 'onaoshi@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000247', '972WcwOkada Eita123', 'okadaeita1004@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000248', '972WcwLong Xiuying123', 'xiuylon5@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000249', '972WcwSherry Griffin123', 'shergriffin@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000250', '972WcwOno Yuna123', 'yunaon10@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000251', '972WcwXu Ziyi123', 'ziyxu@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000252', '972WcwEric Campbell123', 'campbell7@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000253', '972WcwChiba Yota123', 'yochi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000254', '972WcwHeung Kwok Wing123', 'heungkwokwing2@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000257', '972WcwYuen Siu Wai123', 'swyuen8@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000255', '972WcwGoto Momoka123', 'momokgoto@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000256', '972WcwSamuel Henry123', 'shenry09@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000258', '972WcwKondo Momoka123', 'kondomomoka@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000259', '972WcwXiong Ziyi123', 'ziyixiong@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000260', '972WcwYamamoto Ryota123', 'ryotayam@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000261', '972WcwFujita Ayato123', 'ayato45@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000262', '972WcwMori Rena123', 'mrena5@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000263', '972WcwKong Lu123', 'luk@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000264', '972WcwCai Zitao123', 'zitaocai821@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000265', '972WcwDoris Sanders123', 'doris6@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000266', '972WcwChang Zhiyuan123', 'zhiyuanc@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000267', '972WcwJack Brooks123', 'jab@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000268', '972WcwTaniguchi Aoshi123', 'ta501@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000269', '972WcwKaneko Kazuma123', 'kazkaneko4@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000270', '972WcwSakai Kenta123', 'sakaikenta@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000271', '972WcwYue Wai Lam123', 'wailamyue325@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000272', '972WcwYamaguchi Nanami123', 'ny4@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000273', '972WcwTodd Snyder123', 'toddsnyder919@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000274', '972WcwSato Yuito123', 'syui2@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000275', '972WcwSasaki Mai123', 'maisasaki9@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000276', '972WcwJoel Powell123', 'pjoel4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000277', '972WcwPeng Ziyi123', 'ziyipe9@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000278', '972WcwOtsuka Mai123', 'mai10@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000279', '972WcwTang Anqi123', 'tanga@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000280', '972WcwNoguchi Akina123', 'noguchiaki@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000281', '972WcwSugiyama Eita123', 'eitasugiyama@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000282', '972WcwYin Jialun123', 'jyin@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000283', '972WcwJonathan Robinson123', 'jonrobin724@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000284', '972WcwNakagawa Hina123', 'hinanaka7@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000285', '972WcwShi Shihan123', 'shi74@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000286', '972WcwSarah Soto123', 'sarahs@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000287', '972WcwUeno Daisuke123', 'daisuue1031@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000288', '972WcwSugiyama Hazuki123', 'sugiyamahazuki@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000289', '972WcwSuzuki Mai123', 'maisuz@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000290', '972WcwChung Ting Fung123', 'tingfung18@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000291', '972WcwXue Zhiyuan123', 'zhiyuanxue325@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000292', '972WcwShi Jialun123', 'jialunshi@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000293', '972WcwKoo Tin Lok123', 'kotl@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000294', '972WcwLuo Xiuying123', 'xiuying10@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000295', '972WcwArai Daisuke123', 'ardaisuke@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000296', '972WcwAnn Romero123', 'ar55@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000297', '972WcwNicholas Aguilar123', 'naguilar@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000298', '972WcwIto Yuito123', 'iyuito@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000299', '972WcwChad Rose123', 'rosechad4@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000300', '972WcwYuen Ming123', 'myuen@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000301', '972WcwZhu Zitao123', 'zhzitao@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000302', '972WcwDanielle Hill123', 'hidanielle@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000303', '972WcwJiang Anqi123', 'anqijian@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000304', '972WcwKikuchi Ayano123', 'kayano@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000305', '972WcwOta Sara123', 'otasara@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000306', '972WcwLin Jiehong123', 'jiehong1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000307', '972WcwHe Zitao123', 'hezitao@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000308', '972WcwWu Anqi123', 'anqiwu@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000309', '972WcwSit Chun Yu123', 'sit4@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000310', '972WcwOta Ikki123', 'otaikki3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000311', '972WcwLiang Lan123', 'liangla@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000312', '972WcwKu Chieh Lun123', 'ku228@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000313', '972WcwIshikawa Yuna123', 'yuna4@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000314', '972WcwLui Tsz Hin123', 'lui1@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000315', '972WcwCarol Evans123', 'evanc@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000316', '972WcwYu Lan123', 'ylan75@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000317', '972WcwAnita Grant123', 'grananita@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000318', '972WcwNakamura Sara123', 'nakamsa86@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000319', '972WcwIkeda Aoshi123', 'aoshi9@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000320', '972WcwSakai Hikaru123', 'sakaihikaru@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000321', '972WcwManuel Holmes123', 'mholm@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000322', '972WcwRuth Anderson123', 'andersonru14@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000323', '972WcwMao Yuning123', 'maoyuni07@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000324', '972WcwCheung Chi Ming123', 'cheungcm19@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000325', '972WcwPeter Woods123', 'woodp@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000326', '972WcwChe Ching Wan123', 'chechingwan2@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000327', '972WcwFujita Hikari123', 'fujh324@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000328', '972WcwMorita Hikari123', 'mhikari@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000329', '972WcwFrances Watson123', 'watsf4@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000330', '972WcwRichard Morris123', 'rimorris1948@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000331', '972WcwTheresa Reed123', 'rethere@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000332', '972WcwFujiwara Miu123', 'fujiwaramiu8@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000333', '972WcwYuen Hui Mei123', 'yuhm@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000334', '972WcwJudith Wagner123', 'wagnerjudit7@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000335', '972WcwShimizu Kazuma123', 'shimizukazuma@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000336', '972WcwMelissa Tucker123', 'metucker2@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000337', '972WcwJane Ramirez123', 'ramirjane@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000338', '972WcwKaneko Shino123', 'shikan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000339', '972WcwGao Yuning123', 'gyuning@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000342', '972WcwKojima Takuya123', 'ktakuya125@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000340', '972WcwRuth Taylor123', 'taylorruth@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000341', '972WcwTammy Reed123', 'tamr317@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000343', '972WcwQiu Ziyi123', 'ziyqi723@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000344', '972WcwDenise Perry123', 'denisper00@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000345', '972WcwCai Xiaoming123', 'xcai@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000346', '972WcwQiu Jiehong123', 'qijiehong@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000347', '972WcwHsuan Tin Lok123', 'hsuan04@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000348', '972WcwYokoyama Hikaru123', 'hikaru10@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000349', '972WcwFujii Momoka123', 'fumom@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000350', '972WcwTodd Bell123', 'bell05@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000351', '972WcwTang Xiuying123', 'tangxi1@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000352', '972WcwGong Yunxi123', 'yunxigong@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000353', '972WcwHou Anqi123', 'houanqi@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000354', '972WcwMiura Miu123', 'miuramiu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000355', '972WcwLiao Wai San123', 'wsliao12@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000356', '972WcwLu Shihan123', 'shihan1960@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000357', '972WcwChang Chung Yin123', 'chanchungyin515@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000358', '972WcwSiu Wai Man123', 'waimans809@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000359', '972WcwKaneko Hana123', 'hankan@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000360', '972WcwPatricia Shaw123', 'sp429@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000361', '972WcwSiu Chun Yu123', 'cys509@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000362', '972WcwMo Xiaoming123', 'ximo6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000363', '972WcwLi Xiuying123', 'xiuying4@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000364', '972WcwLei Ziyi123', 'zlei@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000365', '972WcwFrancisco Webb123', 'webfrancisco2@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000366', '972WcwMaeda Yota123', 'maedyota@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000367', '972WcwZhu Rui123', 'zhu3@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000368', '972WcwTang Kwok Kuen123', 'kwokkuent48@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000369', '972WcwDorothy Long123', 'dlo615@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000370', '972WcwFrances Johnson123', 'frj610@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000371', '972WcwOno Miu123', 'miono@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000372', '972WcwLei Zhiyuan123', 'leiz821@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000373', '972WcwTse Wai Man123', 'tsewm@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000374', '972WcwLu Anqi123', 'anqi2012@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000375', '972WcwYam Yun Fat123', 'yyunfat110@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000376', '972WcwXia Anqi123', 'anqixi4@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000377', '972WcwLiao Zitao123', 'liaozitao1105@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000378', '972WcwGrace Castro123', 'grace1@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000379', '972WcwHu Shihan123', 'shihanhu87@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000380', '972WcwLeung Tin Lok123', 'tlleung@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000381', '972WcwDong Zitao123', 'zitaodong@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000382', '972WcwEndo Ren123', 'ren10@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000383', '972WcwEdna Butler123', 'eb5@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000384', '972WcwKikuchi Hina123', 'kikuchihina@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000385', '972WcwArimura Ayano123', 'ayano421@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000386', '972WcwHsuan Wai Lam123', 'wailamhsuan1117@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000387', '972WcwKao Wing Suen123', 'wskao@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000388', '972WcwSato Hikaru123', 'satohi@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000389', '972WcwMori Hana123', 'hamori@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000390', '972WcwTam Tin Lok123', 'tatinlok@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000391', '972WcwYue Kwok Kuen123', 'yue2016@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000392', '972WcwIshida Aoshi123', 'ishidaaosh@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000393', '972WcwZhong Anqi123', 'zhonganqi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000394', '972WcwYung Yun Fat123', 'yfyung87@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000395', '972WcwCheng Yunxi123', 'yucheng1967@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000396', '972WcwXia Zhennan123', 'xiaz@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000397', '972WcwMasuda Sara123', 'sarama@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000398', '972WcwChu Chi Ming123', 'chucm@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000399', '972WcwTang Lu123', 'tlu1957@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000400', '972WcwPak Wing Kuen123', 'wingkpa@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000401', '972WcwSheh Chung Yin123', 'cysheh1@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000402', '972WcwHui Fat123', 'hfat@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000403', '972WcwTang Yuning123', 'yutang@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000404', '972WcwSamuel Griffin123', 'samuel45@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000405', '972WcwHeung Kwok Kuen123', 'kkheung@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000406', '972WcwVincent Schmidt123', 'schvi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000407', '972WcwHsuan Yun Fat123', 'yfhsuan@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000408', '972WcwAndrea Cooper123', 'coopeandrea9@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000409', '972WcwWu Ho Yin123', 'wuhoyin@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000410', '972WcwMui Wai Yee123', 'waiyeemu05@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000411', '972WcwLeung Tin Wing123', 'ltw5@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000412', '972WcwLei Shihan123', 'leish509@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000413', '972WcwYuen Wing Sze123', 'wsyu130@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000414', '972WcwYoshida Hazuki123', 'hazuki1130@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000415', '972WcwSo Fat123', 'sofat@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000416', '972WcwXia Shihan123', 'shihanxia3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000417', '972WcwLok Kwok Wing123', 'lokkw@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000418', '972WcwSakamoto Airi123', 'saairi@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000419', '972WcwSugawara Daichi123', 'sugawaradaichi925@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000420', '972WcwChang Wai Han123', 'waihanch@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000421', '972WcwPatricia Wood123', 'patriw521@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000422', '972WcwKimberly Ferguson123', 'ferguson10@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000423', '972WcwLouise Nelson123', 'nelouise6@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000424', '972WcwGregory Rose123', 'gregory413@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000086', '972WcwZhang Zitao123', 'zitaoz@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000087', '972WcwShi Xiaoming123', 'xiaoming1004@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000088', '972WcwMiguel Howard123', 'howmigu1955@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000089', '972WcwMui Wai Han123', 'waihan4@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000090', '972WcwSakamoto Daichi123', 'daichisak@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000091', '972WcwSylvia Ortiz123', 'sylviaort@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000092', '972WcwKimura Momoka123', 'kimuramomoka82@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000093', '972WcwSano Kenta123', 'kentsa@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000094', '972WcwTong Tin Wing123', 'totinwing@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000095', '972WcwFeng Jialun123', 'fenj@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000096', '972WcwTamura Shino123', 'tamshino@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000097', '972WcwHenry Howard123', 'howarhenry1962@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000098', '972WcwWang Xiuying123', 'xiuywang81@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000099', '972WcwLoui Tin Lok123', 'loutinlok7@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000100', '972WcwZhu Lu123', 'lzh4@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000101', '972WcwTian Jiehong123', 'tianjiehong@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000102', '972WcwDuan Zhennan123', 'duanzhenn@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000103', '972WcwCheng Chiu Wai123', 'chchiuwai@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000104', '972WcwUeno Yuito123', 'yuitou@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000105', '972WcwShimizu Hazuki123', 'shimizu84@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000106', '972WcwSandra Miller123', 'msand@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000107', '972WcwKao Sze Kwan123', 'kaszek@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000108', '972WcwTi Wai Yee123', 'waiyee8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000109', '972WcwDiane Sanders123', 'dsan@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000110', '972WcwLau Tsz Ching123', 'tclau@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000111', '972WcwYip Hok Yau123', 'yip1031@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000112', '972WcwTong Lik Sun123', 'liksunto@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000113', '972WcwYamaguchi Mai123', 'yamaguchimai@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000114', '972WcwHeung Tsz Hin123', 'thheung@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000115', '972WcwLuo Xiaoming123', 'luox@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000116', '972WcwJoshua Gibson123', 'gibsonjoshua@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000117', '972WcwHuang Lu123', 'luhuang@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000118', '972WcwChin Ka Keung123', 'chinkk@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000119', '972WcwSugawara Rena123', 'rsugawara1945@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000120', '972WcwStanley Bryant123', 'stanleybrya@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000121', '972WcwStephen Chavez123', 'chavez328@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000122', '972WcwKojima Ikki123', 'ikkik@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000123', '972WcwDing Zitao123', 'zdin@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000124', '972WcwIshikawa Nanami123', 'ishnanam1974@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000125', '972WcwShimada Momoe123', 'momoesh@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000126', '972WcwXie Xiuying123', 'xiexiuying@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000127', '972WcwMeng Jiehong123', 'jiehom@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000128', '972WcwWong Wing Kuen123', 'wkwong1230@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000129', '972WcwHao Yuning123', 'yunha10@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000130', '972WcwMarcus Morgan123', 'morganmarcu718@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000131', '972WcwLee Tran123', 'tranlee1023@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000132', '972WcwYuen Chi Yuen123', 'chiyuen8@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000133', '972WcwXue Xiuying123', 'xiuyingxu@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000134', '972WcwNakano Miu123', 'miu10@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000135', '972WcwEllen Lewis123', 'lewise@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000136', '972WcwBenjamin Robinson123', 'robinsonbenjamin405@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000137', '972WcwSuzuki Yuna123', 'yunas603@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000138', '972WcwKoon Sze Yu123', 'koonsy@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000139', '972WcwRobert Tucker123', 'tuckerrobert6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000140', '972WcwZou Rui123', 'zru00@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000141', '972WcwTao Anqi123', 'anqitao@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000142', '972WcwTang Sze Yu123', 'tangsy@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000143', '972WcwSu Jiehong123', 'jiehs@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000144', '972WcwNg Ka Keung123', 'kakeungng@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000145', '972WcwDanny Alvarez123', 'dannyalvarez@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000146', '972WcwHeather Bennett123', 'heatb6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000147', '972WcwTang Wing Suen123', 'tanwings2008@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000148', '972WcwJia Lu123', 'lujia68@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000149', '972WcwMok Ching Wan123', 'chinmo@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000150', '972WcwKato Yamato123', 'yamatokato8@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000151', '972WcwCui Ziyi123', 'ziyic@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000152', '972WcwNg Kwok Ming123', 'kwokmingng1009@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000153', '972WcwChiba Yuito123', 'yuitoc@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000154', '972WcwChung Ka Fai123', 'chkafai78@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000155', '972WcwMasuda Yuto123', 'masudayuto@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000156', '972WcwXiong Lan123', 'lan4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000157', '972WcwMonica Cole123', 'colemoni@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000158', '972WcwElaine Mills123', 'elam@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000159', '972WcwZou Zhiyuan123', 'zouz804@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000160', '972WcwDeng Yunxi123', 'deng91@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000161', '972WcwEthel Medina123', 'me94@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000162', '972WcwFrank West123', 'wefrank629@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000163', '972WcwNakayama Kazuma123', 'kanakay@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000164', '972WcwLawrence Jordan123', 'lawrencejo@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000165', '972WcwWan Tsz Ching123', 'tszchingwa@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000166', '972WcwAndrew Daniels123', 'andrew1@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000167', '972WcwAlice Ortiz123', 'ortiz305@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000168', '972WcwXiong Jialun123', 'jixion@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000169', '972WcwInoue Momoe123', 'inouemo@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000849', '972WcwSakai Ayato123', 'ayatsakai@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000850', '972WcwLu Zitao123', 'lzit@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000851', '972WcwRebecca Soto123', 'rebesoto@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000852', '972WcwHara Shino123', 'shinohara203@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000853', '972WcwKwong Ming Sze123', 'mskwong1006@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000854', '972WcwKimberly Parker123', 'parkerkimberly@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000855', '972WcwChoi Tin Wing123', 'twchoi6@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000856', '972WcwMaeda Nanami123', 'nanmaed@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000857', '972WcwHazel Rodriguez123', 'hazrodr222@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000858', '972WcwUeno Aoshi123', 'aoshiueno@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000859', '972WcwXiao Xiuying123', 'xxiuy@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000860', '972WcwChic Cho Yee123', 'chiccy3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000861', '972WcwTsang Sum Wing123', 'tsang66@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000862', '972WcwWong Ka Man123', 'kamanw@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000863', '972WcwZhao Xiuying123', 'xiuyingzhao@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000864', '972WcwLucille Rogers123', 'lucillerogers7@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000865', '972WcwEleanor Garcia123', 'eleanorgar@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000866', '972WcwTheodore Hall123', 'theodore3@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000867', '972WcwAndo Rena123', 'ar308@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000868', '972WcwLeung Siu Wai123', 'siuwaileung2@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000869', '972WcwDai Xiuying123', 'dai42@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000870', '972WcwYau Ho Yin123', 'yau1956@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000871', '972WcwMo Hui Mei123', 'hmmo@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000872', '972WcwMasuda Hina123', 'hinamasuda1953@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000873', '972WcwKathy Harrison123', 'harrisonkat@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000874', '972WcwNakayama Takuya123', 'takuyan115@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000875', '972WcwJulie Jenkins123', 'jejulie401@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000876', '972WcwFong Ka Fai123', 'kafaifong56@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000877', '972WcwZhao Zhennan123', 'zhennzhao1020@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000878', '972WcwShing Fat123', 'fs10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000879', '972WcwSakamoto Sakura123', 'sakamotosaku@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000880', '972WcwMiura Mai123', 'miumai@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000881', '972WcwCheng Wing Fat123', 'wincheng@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000882', '972WcwErnest Mills123', 'millernest@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000883', '972WcwShi Anqi123', 'shian@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000884', '972WcwSugawara Seiko123', 'sugasei@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000885', '972WcwHeung Lik Sun123', 'lsheung71@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000886', '972WcwJustin Ruiz123', 'justin331@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000887', '972WcwApril Phillips123', 'phillapril@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000888', '972WcwYan Ziyi123', 'ziyi71@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000889', '972WcwYang Jiehong123', 'jyang02@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000890', '972WcwCarl Gardner123', 'carlg@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000891', '972WcwMonica Martinez123', 'monica4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000892', '972WcwHan On Kay123', 'hanok1013@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000893', '972WcwClifford Hill123', 'clifhill@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000894', '972WcwXu Zhennan123', 'zhxu2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000895', '972WcwPang Ka Keung123', 'pang10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000896', '972WcwSheila Walker123', 'walkers7@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000897', '972WcwSylvia Herrera123', 'sylviahe@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000898', '972WcwChin Fat123', 'chinfat@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000899', '972WcwTakada Ren123', 'takada328@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000900', '972WcwHe Yunxi123', 'yunxihe@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000901', '972WcwSaito Hina123', 'hinasa628@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000902', '972WcwGoto Hazuki123', 'hazukigoto227@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000903', '972WcwChic Ka Keung123', 'chickk@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000904', '972WcwSun Jiehong123', 'jies@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000905', '972WcwHui Wai Man123', 'wmhu@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000906', '972WcwDing Zhiyuan123', 'dz803@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000907', '972WcwHarada Takuya123', 'htakuya922@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000908', '972WcwTse Wai Lam123', 'tsewl813@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000909', '972WcwFrank Martin123', 'fm1996@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000910', '972WcwGong Lu123', 'lug2@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000911', '972WcwAoki Nanami123', 'aoki10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000912', '972WcwSharon Campbell123', 'camsha6@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000913', '972WcwAmy Campbell123', 'amycamp3@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000914', '972WcwChe Kwok Wing123', 'chekwokwing4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000915', '972WcwImai Minato123', 'minato1946@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000916', '972WcwCho Wai San123', 'cws03@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000917', '972WcwKoo Hui Mei123', 'huikoo@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000609', '972WcwMatthew Barnes123', 'barnesmatthew@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000610', '972WcwFan Yu Ling123', 'yulingfan@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000611', '972WcwArai Ikki123', 'aik@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000612', '972WcwYamada Eita123', 'yeita3@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000613', '972WcwHeung Wing Sze123', 'hewingsze@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000614', '972WcwJane Romero123', 'rojan7@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000615', '972WcwNakamura Itsuki123', 'itsukinakamura5@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000616', '972WcwHuang Zitao123', 'zithu@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000617', '972WcwLee Walker123', 'walkerle@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000618', '972WcwStephen Owens123', 'stephen2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000619', '972WcwWan Chieh Lun123', 'wancl909@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000620', '972WcwTaniguchi Itsuki123', 'itstaniguchi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000621', '972WcwChang Ka Man123', 'kamanchang@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000622', '972WcwMartha Russell123', 'marru70@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000623', '972WcwShimizu Kaito123', 'shimkai@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000624', '972WcwKudo Kaito123', 'kudokait@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000625', '972WcwIto Ayano123', 'ayaito1995@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000626', '972WcwAnnie Russell123', 'anrusse8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000627', '972WcwCheung Sum Wing123', 'cheungsw@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000628', '972WcwSato Momoka123', 'smomok@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000629', '972WcwFujita Hazuki123', 'fujihazuki@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000630', '972WcwTracy Howard123', 'trahowar@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000631', '972WcwJuan Kelly123', 'kelly710@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000632', '972WcwEddie Wells123', 'wellse1950@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000633', '972WcwMiyazaki Hikari123', 'miyhikari1993@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000634', '972WcwKinoshita Daisuke123', 'kinoshitadai@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000635', '972WcwLai Wing Suen123', 'laiwing@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000636', '972WcwAlexander Reyes123', 'reyea@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000637', '972WcwMak Wai San123', 'makws2004@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000638', '972WcwMurakami Yuito123', 'ymurakami@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000639', '972WcwHu Xiaoming123', 'xihu@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000640', '972WcwUeno Mai123', 'mueno@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000641', '972WcwHou Xiaoming123', 'hou3@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000642', '972WcwSit Wing Fat123', 'sitwf9@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000643', '972WcwMatsumoto Yuto123', 'ymatsumoto64@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000644', '972WcwChe Yun Fat123', 'cyf@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000645', '972WcwKoo Kwok Wing123', 'kookw@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000646', '972WcwStanley Boyd123', 'boydstanley@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000647', '972WcwMarjorie Martin123', 'mma@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000648', '972WcwSakamoto Seiko123', 'sesak@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000649', '972WcwMeng Sze Yu123', 'symeng79@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000650', '972WcwApril Gomez123', 'aprilgomez@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000651', '972WcwLi Anqi123', 'anqi96@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000652', '972WcwMo On Na123', 'onm1993@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000653', '972WcwKobayashi Eita123', 'eikobay@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000654', '972WcwLiu Lu123', 'lli@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000655', '972WcwChen Yuning123', 'chenyuni1007@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000656', '972WcwYuan Lan123', 'lyuan7@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000657', '972WcwNg Sum Wing123', 'sumwingn611@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000658', '972WcwGlenn Herrera123', 'ghe1985@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000659', '972WcwChow Hok Yau123', 'hokyau214@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000660', '972WcwHasegawa Misaki123', 'hasegawa215@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000661', '972WcwJesse Jones123', 'jessejone@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000662', '972WcwMorita Ayato123', 'morita12@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000663', '972WcwIshii Sakura123', 'ishiisakura@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000664', '972WcwShi Zitao123', 'szitao@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000665', '972WcwLam Sze Yu123', 'lam2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000666', '972WcwChow Tak Wah123', 'chowtw@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000667', '972WcwMarvin Hunter123', 'hunterm@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000668', '972WcwShing Ka Fai123', 'shikafai@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000669', '972WcwLok Tak Wah123', 'loktw3@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000670', '972WcwFu Jialun123', 'jialuf@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000671', '972WcwKondo Rena123', 'kondo411@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000672', '972WcwMan Kar Yan123', 'kyman40@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000673', '972WcwJia Zhennan123', 'jia1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000674', '972WcwYuen Ka Ling123', 'yuenkaling8@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000675', '972WcwNakano Ren123', 'nakanoren@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000676', '972WcwFong Tin Wing123', 'fontw@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000677', '972WcwWalter Miller123', 'millerwalter7@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000678', '972WcwCarol Munoz123', 'mucarol2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000679', '972WcwScott Baker123', 'sbaker79@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000680', '972WcwJames Warren123', 'jamewarr@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000681', '972WcwLong Ziyi123', 'long16@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000682', '972WcwLu Zhennan123', 'lu423@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000683', '972WcwUeno Misaki123', 'uenomisaki1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000684', '972WcwDon Webb123', 'dweb@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000685', '972WcwManuel Fernandez123', 'fernandezmanuel13@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000686', '972WcwStephanie Martin123', 'martinstephanie@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000687', '972WcwIshii Hana123', 'hana5@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000688', '972WcwNg Sai Wing123', 'nsaiwing@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000689', '972WcwYuen Sze Kwan123', 'yuen405@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000690', '972WcwHashimoto Airi123', 'hairi@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000691', '972WcwTao Zhennan123', 'zhennan1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000692', '972WcwMo Lu123', 'mo114@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000693', '972WcwLoui Ling Ling123', 'lll@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000694', '972WcwNakamura Kasumi123', 'nkasu2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000695', '972WcwYuen Ting Fung123', 'tfyuen@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000696', '972WcwTamura Daisuke123', 'tamuradaisu@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000697', '972WcwJia Jialun123', 'jiji@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000698', '972WcwMeng Zhennan123', 'mengzh@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000699', '972WcwGao Lu123', 'gaolu8@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000700', '972WcwTakagi Miu123', 'mitakagi4@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000701', '972WcwLong Jiehong123', 'longjieh@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000702', '972WcwXu Shihan123', 'shihanxu@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000703', '972WcwOno Yota123', 'yotaono@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000704', '972WcwZhong Lan123', 'zhongla@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000705', '972WcwJeremy Young123', 'jeremy@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000706', '972WcwLei Xiuying123', 'leixiuy@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000707', '972WcwFlorence Hamilton123', 'hamilflorence@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000708', '972WcwCheng Wai Man123', 'waiman7@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000709', '972WcwZhao Ziyi123', 'zz03@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000710', '972WcwChen Lan123', 'chenlan@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000711', '972WcwLok Sum Wing123', 'loksw58@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000712', '972WcwSiu Wai Lam123', 'siwl1129@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000713', '972WcwMartha Crawford123', 'martha5@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000714', '972WcwLoui On Kay123', 'louiok@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000715', '972WcwGlenn Baker123', 'glenb2012@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000716', '972WcwJudith Patterson123', 'pjudith@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000717', '972WcwEugene Long123', 'longeugene@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000718', '972WcwMa Fat123', 'fama@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000719', '972WcwMui Wai Man123', 'wmm4@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000720', '972WcwXiong Xiaoming123', 'xiaoxio128@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000721', '972WcwFang Yuning123', 'yuning00@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000722', '972WcwPeng Anqi123', 'ape6@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000723', '972WcwBryan Roberts123', 'bryan3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000724', '972WcwTong Tsz Ching123', 'tctong10@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000725', '972WcwQian Zhennan123', 'zqian52@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000726', '972WcwKam Suk Yee123', 'sukyee83@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000727', '972WcwTan Shihan123', 'tans2@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000728', '972WcwShen Yunxi123', 'shen6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000729', '972WcwYokoyama Ayato123', 'ayaty@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000730', '972WcwChung Chun Yu123', 'cychung85@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000731', '972WcwDu Zhennan123', 'zhennandu@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000732', '972WcwTsui On Kay123', 'tok@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000733', '972WcwKoo Ka Ming123', 'koo407@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000734', '972WcwTan Yunxi123', 'yunxi317@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000735', '972WcwLarry Bell123', 'larbell1217@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000736', '972WcwLi Lu123', 'lil@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000737', '972WcwGao Shihan123', 'shihgao@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000738', '972WcwDoris Baker123', 'dorb1209@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000739', '972WcwKoon Kwok Ming123', 'kokwokming@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000740', '972WcwSu Zitao123', 'suzitao@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000741', '972WcwMarilyn Moreno123', 'marilynmoreno2019@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000742', '972WcwLu Zhiyuan123', 'zhlu@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000743', '972WcwYamashita Eita123', 'yeita@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000744', '972WcwKwok Wai Han123', 'whkwo819@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000745', '972WcwChu Fat123', 'chufat@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000746', '972WcwWu Zhiyuan123', 'zhiyuan423@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000747', '972WcwTsang Sze Kwan123', 'sktsang10@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000748', '972WcwTsui Hiu Tung123', 'tsui704@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000749', '972WcwAnita Sanchez123', 'anitas@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000750', '972WcwChristine Mills123', 'chrimill121@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000751', '972WcwYuen Kwok Wing123', 'yuekwo@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000752', '972WcwZou Zhennan123', 'zzo906@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000753', '972WcwJudith Peterson123', 'peterjudith14@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000754', '972WcwLeung Wai Man123', 'waimanleu6@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000755', '972WcwXiao Zitao123', 'xiazitao52@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000756', '972WcwKikuchi Yuito123', 'kikuchi97@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000757', '972WcwIwasaki Yuna123', 'iwasakiyuna@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000758', '972WcwGlenn Taylor123', 'gletaylor@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000759', '972WcwIshida Daichi123', 'isdaich@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000760', '972WcwAnthony Graham123', 'grahamanthony@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000761', '972WcwYeung Wai Man123', 'ywm@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000762', '972WcwWanda Jordan123', 'wandajo1947@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000763', '972WcwHashimoto Kasumi123', 'haskasumi@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000764', '972WcwMurakami Kenta123', 'kentam@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000765', '972WcwStanley Snyder123', 'stasnyde7@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000766', '972WcwSaito Mio123', 'miosaito4@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000767', '972WcwDouglas Rivera123', 'driver@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000768', '972WcwYamamoto Aoshi123', 'yaoshi2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000769', '972WcwWei Zhennan123', 'weizhen11@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000770', '972WcwJonathan Gray123', 'jonathangr@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000771', '972WcwMiura Takuya123', 'takuyam1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000772', '972WcwSasaki Hikaru123', 'sasakihikar1978@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000773', '972WcwSato Hina123', 'sahin@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000774', '972WcwIshikawa Ayano123', 'aishi9@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000775', '972WcwLaura Robinson123', 'laurro@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000776', '972WcwZhou Rui123', 'zhou1997@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000777', '972WcwNg Wai Yee123', 'waiyeeng1984@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000778', '972WcwCui Xiaoming123', 'cuxiaoming@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000779', '972WcwGuo Shihan123', 'shig@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000780', '972WcwLuis Murray123', 'murral@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000781', '972WcwYuen Ming Sze123', 'mingszeyuen@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000782', '972WcwLoui Lai Yan123', 'lly@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000783', '972WcwLiu Xiuying123', 'lxiuy81@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000784', '972WcwKeith Dunn123', 'dunnk8@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000785', '972WcwSu Lan123', 'sulan1@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000786', '972WcwHung Wing Kuen123', 'hwk@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000787', '972WcwStephanie Ward123', 'warstephanie@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000788', '972WcwWan Kwok Yin123', 'wankwokyin1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000789', '972WcwInoue Kasumi123', 'inouekasumi@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000790', '972WcwKudo Daichi123', 'kudo326@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000791', '972WcwUeda Kazuma123', 'ukazu920@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000792', '972WcwGong Rui123', 'rugong220@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000793', '972WcwHui Ming Sze123', 'huims@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000794', '972WcwTo Wing Suen123', 'wingsuento3@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000795', '972WcwHarold Wilson123', 'hawilson@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000796', '972WcwEllen Ward123', 'wardell4@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000797', '972WcwMiguel Mills123', 'miguelmil@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000798', '972WcwLok Kwok Kuen123', 'lokkk@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000799', '972WcwRobin Ruiz123', 'rro66@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000800', '972WcwSakamoto Ikki123', 'saikki119@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000801', '972WcwXie Yuning123', 'xieyuning8@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000802', '972WcwTao Ka Ming123', 'taokaming@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000803', '972WcwZhong Shihan123', 'shizhong2@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000804', '972WcwJiang Xiaoming123', 'jxiaoming@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000805', '972WcwShannon Diaz123', 'shannondiaz@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000806', '972WcwMak Ka Keung123', 'makkk@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000807', '972WcwGlenn Young123', 'youngglenn@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000808', '972WcwPatricia Dixon123', 'dixonpat@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000809', '972WcwWang Zhiyuan123', 'wangz327@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000810', '972WcwEva Dixon123', 'deva@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000811', '972WcwCho Sze Yu123', 'chszeyu4@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000812', '972WcwZhao Jiehong123', 'zhaojie@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000813', '972WcwMo Zitao123', 'zitaomo330@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000814', '972WcwVictor Ross123', 'rossvi@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000815', '972WcwKelly Kelley123', 'kekelly1127@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000816', '972WcwMak On Kay123', 'maonkay@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000817', '972WcwFrancis Griffin123', 'grifrancis@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000818', '972WcwCurtis Webb123', 'webbcurtis216@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000819', '972WcwYuan Anqi123', 'anqi1119@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000820', '972WcwDuan Jiehong123', 'djiehong707@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000821', '972WcwBarbara Wood123', 'wob53@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000822', '972WcwKeith Fisher123', 'fisher1974@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000823', '972WcwJiang Jialun123', 'jialunjia@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000824', '972WcwXia Zitao123', 'zitao4@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000825', '972WcwMak Sze Yu123', 'makszeyu@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000826', '972WcwWong Sai Wing123', 'wongsw@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000827', '972WcwLok Sze Kwan123', 'lokszekwan@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000828', '972WcwMa Sau Man123', 'saumanma@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000829', '972WcwEndo Sara123', 'endosar@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000830', '972WcwImai Yamato123', 'yamatoimai8@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000831', '972WcwJoan Murphy123', 'joan321@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000832', '972WcwHan Yun Fat123', 'hayunfat@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000833', '972WcwMurata Momoe123', 'murata414@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000834', '972WcwRen Xiuying123', 'renxiuy@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000835', '972WcwYuen Yu Ling123', 'yuen921@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000836', '972WcwTroy Young123', 'young3@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000837', '972WcwMo Wing Sze123', 'wsm@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000838', '972WcwMiu Wing Sze123', 'miuwingsze@icloud.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000839', '972WcwKinoshita Rin123', 'rikinoshita@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000840', '972WcwBrandon Payne123', 'paybra@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000841', '972WcwDeng Lan123', 'dlan@yahoo.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000842', '972WcwPaula Gordon123', 'gordonp@mail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000843', '972WcwJason Wright123', 'jasonw10@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000844', '972WcwSteven Hamilton123', 'sth4@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000845', '972WcwOkamoto Rin123', 'okamotorin1@gmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000846', '972WcwHu Yuning123', 'yhu@outlook.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000847', '972WcwChang Fu Shing123', 'changfs@hotmail.com');
INSERT INTO "C##TDC"."USERS" VALUES ('100000848', '972WcwIshikawa Yuto123', 'yuto1215@icloud.com');

-- ----------------------------
-- Function structure for ACCEPT_APPOINTMENT
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ACCEPT_APPOINTMENT" AS
BEGIN
	UPDATE APPOINTMENTS
	SET APPOINTMENT_STATUS = 'ACCEPTED'
  WHERE APPOINTMENT_ID = AP_ID;

END;
/

-- ----------------------------
-- Function structure for ADD_APPOINTMENT
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_APPOINTMENT" AS
BEGIN 
	
	SELECT COUNT(*) INTO CNT FROM APPOINTMENTS; 
	IF CNT>0 THEN
		SELECT MAX(APPOINTMENT_ID) INTO ID 
		FROM APPOINTMENTS;
	ELSE 
		ID:=0; 
	END IF; 
	
	
	ID:= ID+1;
	 
	SELECT USER_ID INTO P_ID 
	FROM PATIENTS
	WHERE PHONE_NUMBER = P_NUM;
	
	SELECT USER_ID INTO D_ID
	FROM DOCTORS
	WHERE DOCTOR_NAME = D_NAME;	
	
	INSERT INTO APPOINTMENTS(APPOINTMENT_ID, APPOINT_DATE,PAYMENT_STATUS, PATIENT_ID, DOCTOR_ID, APPOINTMENT_STATUS) 
	VALUES(ID, AP_DATE, 'UNPAID', P_ID, D_ID,'WAITING');  

END;
/

-- ----------------------------
-- Function structure for ADD_DEPARTMENT
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_DEPARTMENT" AS
BEGIN

	SELECT COUNT(*) INTO CNT FROM DEPARTMENTS; 
	IF CNT>0 THEN
		SELECT MAX(DEPARTMENT_ID) INTO ID 
		FROM DEPARTMENTS;
	ELSE 
		ID:=0; 
	END IF; 
	
	ID:= ID+1; 
	
	INSERT INTO DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME) 
	VALUES(ID, D_NAME) ; 
	
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
END;
/

-- ----------------------------
-- Function structure for ADD_DISEASE
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_DISEASE" AS
BEGIN

	SELECT COUNT(*) INTO CNT FROM DIAGNOSIS; 
	IF CNT>0 THEN
		SELECT MAX(DISEASE_ID) INTO ID 
		FROM DIAGNOSIS;
	ELSE 
		ID:=0; 
	END IF; 
	
	ID:= ID+1; 
	
	INSERT INTO DIAGNOSIS(DISEASE_ID, DISEASE_NAME, COMMON_SYMPTOMS) 
	VALUES(ID, D_NAME, SYMP) ; 
	
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
END;
/

-- ----------------------------
-- Function structure for ADD_DOCTOR
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_DOCTOR" AS
BEGIN

	SELECT COUNT(*) INTO DPT_CNT
	FROM DEPARTMENTS
	WHERE DEPARTMENT_NAME = DPT_NAME; 
	
	IF DPT_CNT=0 THEN 
		ADD_DEPARTMENT(DPT_NAME); 
	END IF; 
	
	SELECT DEPARTMENT_ID INTO DPT_ID
	FROM DEPARTMENTS
	WHERE DEPARTMENT_NAME = DPT_NAME; 
	
	SELECT COUNT(*) INTO CNT FROM DOCTORS; 
	IF CNT>0 THEN
			SELECT MAX(USER_ID) INTO ID 
			FROM DOCTORS; 
	ELSE 
		ID:=0; 
	END IF; 
	ID:= ID+1;
	
	ADD_USER(ID, PASS, MAIL); 
	
	INSERT INTO DOCTORS(USER_ID, DOCTOR_NAME, EMAIL, QUALIFICATION, RATING , DEPARTMENT_ID) 
	VALUES(ID, D_NAME, MAIL, QUAL, 5, DPT_ID ) ; 
	
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
END;
/

-- ----------------------------
-- Function structure for ADD_HOSPITAL
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_HOSPITAL" AS
BEGIN
	SELECT MAX(HOSPITAL_ID) INTO ID 
	FROM HOSPITALS; 
	
	SELECT COUNT(*) INTO CNT FROM HOSPITALS ; 
	IF CNT>0 THEN
		SELECT MAX(HOSPITAL_ID) INTO ID 
		FROM HOSPITALS; 
	ELSE 
		ID:=0; 
	END IF; 
	
	ID:= ID+1; 
	
	L_ID:= 0; 
	
	FOR C IN (SELECT LOCATION_ID, CITY FROM LOCATIONS)
	LOOP
		IF C.CITY= H_CITY THEN
			L_ID:= C.LOCATION_ID; 
		END IF ;
	END LOOP;
	
	IF L_ID=0 THEN 
		L_ID:= ADD_LOCATION(H_CITY); 
	END IF; 
		
	
	INSERT INTO HOSPITALS(HOSPITAL_ID, HOSPITAL_NAME, LOCATION_ID) 
	VALUES(ID, NAME, L_ID) ; 

END;
/

-- ----------------------------
-- Function structure for ADD_LOCATION
-- ----------------------------
CREATE OR REPLACE
FUNCTION "C##TDC"."ADD_LOCATION" AS
BEGIN

	
	SELECT COUNT(*) INTO CNT FROM LOCATIONS; 
	IF CNT>0 THEN
		SELECT MAX(LOCATION_ID) INTO ID 
		FROM LOCATIONS;
	ELSE 
		ID:=0; 
	END IF; 
	
	
	ID:= ID+1; 
	
	INSERT INTO LOCATIONS(LOCATION_ID, CITY) 
	VALUES(ID, L_NAME) ; 
	RETURN ID; 
END;
/

-- ----------------------------
-- Function structure for ADD_MEDICINE
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_MEDICINE" AS
BEGIN

	SELECT COUNT(*) INTO CNT FROM MEDICINES; 
	IF CNT>0 THEN
		SELECT MAX(MEDICINE_ID) INTO ID 
		FROM MEDICINES;
	ELSE 
		ID:=0; 
	END IF; 
	
	ID:= ID+1; 
	
	INSERT INTO MEDICINES(MEDICINE_ID, MEDICINE_NAME, COMPANY_NAME, MEDICINE_TYPE, MEDICINE_COST) 
	VALUES(ID, M_NAME, C_NAME, M_TYPE, M_COST) ; 
	
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
END;
/

-- ----------------------------
-- Function structure for ADD_NEW_TEST
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_NEW_TEST" AS
BEGIN

	SELECT COUNT(*) INTO CNT FROM PATHOLOGY; 
	IF CNT>0 THEN
		SELECT MAX(TEST_ID) INTO ID 
		FROM PATHOLOGY;
	ELSE 
		ID:=0; 
	END IF; 
	
	ID:= ID+1; 
	
	INSERT INTO PATHOLOGY(TEST_ID, TEST_NAME, TEST_COST) 
	VALUES(ID, T_NAME, T_COST) ; 
	
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
END;
/

-- ----------------------------
-- Function structure for ADD_PATIENT
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_PATIENT" AS
BEGIN

	SELECT COUNT(*) INTO CNT FROM PATIENTS; 
	IF CNT>0 THEN
			SELECT MAX(USER_ID) INTO ID 
			FROM PATIENTS; 
	ELSE 
		ID:=0; 
	END IF; 
	
	
	ID:= ID+1; 
	
	
	SELECT COUNT(*) INTO L_ID 
	FROM LOCATIONS
	WHERE CITY= LOCATION; 
	
	
	IF L_ID=0 THEN 
		L_ID:= ADD_LOCATION(LOCATION); 
	END IF; 
	
	ADD_USER(ID, PASS, MAIL); 
	
	INSERT INTO PATIENTS(USER_ID, PATIENT_NAME, DATE_OF_BIRTH, PHONE_NUMBER, GENDER , LOCATION, EMAIL) 
	VALUES(ID, P_NAME, BDATE, PHONE, GENDER, LOCATION, MAIL ) ; 
	
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
END;
/

-- ----------------------------
-- Function structure for ADD_PAYMENT
-- ----------------------------
CREATE OR REPLACE
FUNCTION "C##TDC"."ADD_PAYMENT" AS
BEGIN

	
	SELECT COUNT(*) INTO CNT FROM PAYMENTS; 
	IF CNT>0 THEN
		SELECT MAX(PAYMENT_ID) INTO ID 
		FROM PAYMENTS;
	ELSE 
		ID:=0; 
	END IF; 
	
	ID:= ID+1;
	
	TOT_FEE:= D_FEE+M_COST+A_FEE;
	
	VT:= TOT_FEE*0.1;
	TOT_FEE:= TOT_FEE+VT; 
	
	INSERT INTO PAYMENTS(PAYMENT_ID, APPOINTMENT_ID, DOCTORS_FEE, MEDICINE_COST, ADMIN_FEE, VAT, TOTAL_FEE) 
	VALUES(ID, A_ID, D_FEE, M_COST, A_FEE, VT, TOT_FEE) ;
	
	 
	RETURN TOT_FEE; 
END;
/

-- ----------------------------
-- Function structure for ADD_PHARMACY
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_PHARMACY" AS
BEGIN
	
	SELECT COUNT(*) INTO CNT FROM PHARMACIES; 
	IF CNT>0 THEN
		SELECT MAX(PHARMACY_ID) INTO ID 
		FROM PHARMACIES; 
	ELSE 
		ID:=0; 
	END IF; 
	ID:= ID+1; 
	
	L_ID:= 0; 
	
	FOR C IN (SELECT LOCATION_ID, CITY FROM LOCATIONS)
	LOOP
		IF C.CITY= P_CITY THEN
			L_ID:= C.LOCATION_ID; 
		END IF ;
	END LOOP;
	
	IF L_ID=0 THEN 
		L_ID:= ADD_LOCATION(P_CITY); 
	END IF; 
		
	
	INSERT INTO PHARMACIES(PHARMACY_ID, PHARMACY_NAME, LOCATION_ID) 
	VALUES(ID, NAME, L_ID) ; 

END;
/

-- ----------------------------
-- Function structure for ADD_PRESCRIPTION
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_PRESCRIPTION" AS
BEGIN

	SELECT COUNT(*) INTO CNT FROM PRESCRIPTIONS; 
	IF CNT>0 THEN
		SELECT MAX(PRESCRIPTION_ID) INTO ID 
		FROM PRESCRIPTIONS;
	ELSE 
		ID:=0; 
	END IF; 
	
	ID:= ID+1; 
	
	INSERT INTO PRESCRIPTIONS(PRESCRIPTION_ID, APPOINTMENT_ID, COMMENTS) 
	VALUES(ID, A_ID, CMNT) ; 
	
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
END;
/

-- ----------------------------
-- Function structure for ADD_REFFERRAL
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_REFFERRAL" AS
BEGIN 
	
	
	SELECT COUNT(*) INTO CNT FROM REFFERRALS; 
	IF CNT>0 THEN
		SELECT MAX(REFFERRAL_ID) INTO ID 
		FROM REFFERRALS;
	ELSE 
		ID:=0; 
	END IF; 
	ID:= ID+1; 
	
	SELECT PATIENT_ID INTO P_ID FROM APPOINTMENTS
	WHERE A_ID = APPOINTMENT_ID; 
	
	ADD_APPOINTMENT(P_ID, R_TO_ID, R_DATE); 
	
	INSERT INTO REFFERRALS(REFFERRAL_ID, APPOINTMENT_ID,REFFERRED_TO, REFFERRAL_DATE) 
	VALUES(ID, A_ID,R_TO_ID, R_DATE); 
END;
/

-- ----------------------------
-- Function structure for ADD_TEST_TO_PRESCRIPTION
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_TEST_TO_PRESCRIPTION" AS
BEGIN	
	
	SELECT TEST_ID INTO T_ID 
	FROM PATHOLOGY
	WHERE TEST_NAME= T_NAME; 
	
	INSERT INTO MM_PRS_INCLUDES_PTH(PRESCRIPTION_ID, TEST_ID) 
	VALUES(PR_ID, T_ID) ; 
END;
/

-- ----------------------------
-- Function structure for ADD_USER
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."ADD_USER" AS
BEGIN	
	INSERT INTO USERS(USER_ID, PASSWORD, EMAIL) 
	VALUES(ID, PASS, MAIL) ; 
END;
/

-- ----------------------------
-- Function structure for DELETE_DOCTOR
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."DELETE_DOCTOR" AS
BEGIN
	
	DELETE FROM DOCTORS
	WHERE USER_ID= D_ID; 

END;
/

-- ----------------------------
-- Function structure for DELETE_PATIENT
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."DELETE_PATIENT" AS
BEGIN
	DELETE FROM PATIENTS
	WHERE USER_ID= P_ID; 
END;
/

-- ----------------------------
-- Function structure for DIAGNOSE_DISEASE
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."DIAGNOSE_DISEASE" AS
BEGIN	
	
	SELECT DISEASE_ID INTO DS_ID 
	FROM DIAGNOSIS
	WHERE DISEASE_NAME= DS_NAME; 
	
	INSERT INTO MM_DISEASES_FOUND_IN_PRESCRIPTIONS(PRESCRIPTION_ID, DISEASE_ID) 
	VALUES(PR_ID, DS_ID) ; 
END;
/

-- ----------------------------
-- Function structure for GET_TOTAL_FUND
-- ----------------------------
CREATE OR REPLACE
FUNCTION "C##TDC"."GET_TOTAL_FUND" AS
BEGIN
	
	TOT_FEE:=0; 
	
	FOR P IN (SELECT TOTAL_FEE FROM PAYMENTS) 
	LOOP 
		TOT_FEE:= TOT_FEE+ P.TOTAL_FEE; 
		
	END LOOP; 
	
	RETURN TOT_FEE; 
END;
/

-- ----------------------------
-- Function structure for GET_TOTAL_INCOME_OF_DOCTOR
-- ----------------------------
CREATE OR REPLACE
FUNCTION "C##TDC"."GET_TOTAL_INCOME_OF_DOCTOR" AS
BEGIN
	TOT_INCOME:=0; 

	FOR P IN (SELECT APPOINTMENT_ID, DOCTORS_FEE FROM PAYMENTS) 
	LOOP 
		FOR A IN (SELECT APPOINTMENT_ID, DOCTOR_ID  
	FROM APPOINTMENTS )
		LOOP 
			IF A.DOCTOR_ID = D_ID AND P.APPOINTMENT_ID=A.APPOINTMENT_ID THEN 
				TOT_INCOME:= TOT_INCOME+ P.DOCTORS_FEE;
			END IF;
		END LOOP;  
		 
	END LOOP; 
	
	RETURN TOT_INCOME; 
END;
/

-- ----------------------------
-- Function structure for GIVE_REVIEW
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."GIVE_REVIEW" AS
BEGIN 
	
	SELECT COUNT(*) INTO CNT FROM REVIEWS; 
	IF CNT>0 THEN
		SELECT MAX(REVIEW_ID) INTO ID 
		FROM REVIEWS;
	ELSE 
		ID:=0; 
	END IF; 
	ID:= ID+1; 

	SELECT DOCTOR_ID INTO D_ID
	FROM APPOINTMENTS
	WHERE APPOINTMENT_ID= AP_ID; 
	
	DBMS_OUTPUT.PUT_LINE(D_ID); 
	
	SELECT COUNT(*) INTO Total_Appointment
	FROM APPOINTMENTS
	WHERE DOCTOR_ID= D_ID; 
	
	DBMS_OUTPUT.PUT_LINE(Total_Appointment); 
	
	SELECT RATING INTO OLD_RATING
	FROM DOCTORS
	WHERE USER_ID = D_ID; 
	
	DBMS_OUTPUT.PUT_LINE(OLD_RATING);
	
	IF Total_Appointment>1 THEN
		NEW_RATING:= ((OLD_RATING*(Total_Appointment-1))+STARS)/(Total_Appointment); 
	ELSE 
		NEW_RATING:= STARS; 
	END IF; 
	
	
	DBMS_OUTPUT.PUT_LINE(NEW_RATING);
	
		UPDATE DOCTORS 
		SET RATING = NEW_RATING
		WHERE USER_ID = D_ID;


	
		INSERT INTO REVIEWS(REVIEW_ID,APPOINTMENT_ID, STAR_GIVEN, COMMENTS) 
	VALUES(ID, AP_ID, STARS, COMMENTS);  

END;
/

-- ----------------------------
-- Function structure for PAY_APPOINTMENT_FEE
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."PAY_APPOINTMENT_FEE" AS
BEGIN
	UPDATE APPOINTMENTS 
	SET PAYMENT_STATUS = 'PAID'
  WHERE APPOINTMENT_ID = AP_ID;

END;
/

-- ----------------------------
-- Function structure for PUBLISH_TEST_REPORT
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."PUBLISH_TEST_REPORT" AS
BEGIN

	SELECT TEST_ID INTO T_ID 
	FROM PATHOLOGY
	WHERE TEST_NAME= T_NAME; 

	SELECT COUNT(*) INTO CNT FROM RECORDS; 
	IF CNT>0 THEN
		SELECT MAX(RECORD_ID) INTO ID 
		FROM RECORDS;
	ELSE 
		ID:=0; 
	END IF; 
	
	ID:= ID+1; 
	
	INSERT INTO RECORDS 
	VALUES(ID, P_ID, T_ID, RSLT) ; 
	
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
END;
/

-- ----------------------------
-- Function structure for SEARCH_BY_DEPARTMENT
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."SEARCH_BY_DEPARTMENT" AS
BEGIN

	SELECT DEPARTMENT_ID INTO D_ID
	FROM DEPARTMENTS
	WHERE DEPARTMENT_NAME= D_NAME; 
	
	FOR D IN (SELECT DOCTOR_NAME, EMAIL, QUALIFICATION, RATING, DEPARTMENT_ID FROM DOCTORS) 
	LOOP 
		IF D.DEPARTMENT_ID = D_ID THEN
			DBMS_OUTPUT.PUT_LINE('NAME : ' || D.DOCTOR_NAME || ' ,    ' || 'Email : ' || D.EMAIL || ',    ' || 'Qualification : ' || D.QUALIFICATION ||',   ' || 'Rating: ' || D.RATING ) ;			
		END IF; 
		
	END LOOP; 
	
END;
/

-- ----------------------------
-- Function structure for SEARCH_HOSPITAL_BY_LOCATION
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."SEARCH_HOSPITAL_BY_LOCATION" AS
BEGIN

	SELECT LOCATION_ID INTO L_ID
	FROM LOCATIONS
	WHERE CITY= LCTN; 
	
	FOR P IN (SELECT HOSPITAL_ID, HOSPITAL_NAME, LOCATION_ID FROM HOSPITALS) 
	LOOP 
		IF P.LOCATION_ID = L_ID THEN
			DBMS_OUTPUT.PUT_LINE( P.HOSPITAL_NAME ) ;			
		END IF; 
		
	END LOOP; 
	
END;
/

-- ----------------------------
-- Function structure for SEARCH_NUMBER_OF_DOCTORS_BY_DEPARTMENT
-- ----------------------------
CREATE OR REPLACE
FUNCTION "C##TDC"."SEARCH_NUMBER_OF_DOCTORS_BY_DEPARTMENT" AS
BEGIN
	
	SELECT DEPARTMENT_ID INTO DPT_ID 
	FROM DEPARTMENTS
	WHERE DEPARTMENT_NAME= DPT_NAME; 
	
	SELECT COUNT(*) INTO CNT 
	FROM DOCTORS 
	WHERE DEPARTMENT_ID= DPT_ID; 
	 
	RETURN CNT; 
END;
/

-- ----------------------------
-- Function structure for SEARCH_PHARMACY_BY_LOCATION
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."SEARCH_PHARMACY_BY_LOCATION" AS
BEGIN

	SELECT LOCATION_ID INTO L_ID
	FROM LOCATIONS
	WHERE CITY= LCTN; 
	
	FOR P IN (SELECT PHARMACY_ID, PHARMACY_NAME, LOCATION_ID FROM PHARMACIES) 
	LOOP 
		IF P.LOCATION_ID = L_ID THEN
			DBMS_OUTPUT.PUT_LINE( P.PHARMACY_NAME ) ;			
		END IF; 
		
	END LOOP; 
	
END;
/

-- ----------------------------
-- Function structure for UPDATE_LOCATION
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."UPDATE_LOCATION" AS
BEGIN
	UPDATE PATIENTS 
	SET LOCATION = L
  WHERE USER_ID = P_ID;

END;
/

-- ----------------------------
-- Function structure for UPDATE_MAIL_OF_DOCTOR
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."UPDATE_MAIL_OF_DOCTOR" AS
BEGIN
	UPDATE DOCTORS 
	SET EMAIL = MAIL
  WHERE USER_ID = D_ID;

END;
/

-- ----------------------------
-- Function structure for UPDATE_QUALIFICATION_OF_DOCTOR
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."UPDATE_QUALIFICATION_OF_DOCTOR" AS
BEGIN
	UPDATE DOCTORS 
	SET QUALIFICATION = QUAL
  WHERE USER_ID = D_ID;

END;
/

-- ----------------------------
-- Function structure for UPDATE_SYMPTOM
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."UPDATE_SYMPTOM" AS
BEGIN
	
	SELECT DISEASE_ID INTO D_ID
	FROM DIAGNOSIS
	WHERE DISEASE_NAME= D_NAME; 
	
	
	SELECT COMMON_SYMPTOMS INTO OLD_SYMP
	FROM DIAGNOSIS
	WHERE DISEASE_NAME= D_NAME; 
	
	
	UPDATE DIAGNOSIS  
	SET COMMON_SYMPTOMS = OLD_SYMP || ',' || NEW_SYMP 
  WHERE DISEASE_ID = D_ID;

END;
/

-- ----------------------------
-- Function structure for WRITE_MEDICINE_INTO_PRESCRIPTION
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "C##TDC"."WRITE_MEDICINE_INTO_PRESCRIPTION" AS
BEGIN	
	
	SELECT MEDICINE_ID INTO MD_ID 
	FROM MEDICINES
	WHERE MEDICINE_NAME= MD_NAME AND MEDICINE_TYPE= MD_TYPE; 
	
	INSERT INTO MM_MDCN_IN_PRS(PRESCRIPTION_ID, MEDICINE_ID) 
	VALUES(PR_ID, MD_ID) ; 
	
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
END;
/

-- ----------------------------
-- Primary Key structure for table APPOINTMENTS
-- ----------------------------
ALTER TABLE "C##TDC"."APPOINTMENTS" ADD CONSTRAINT "SYS_C007757" PRIMARY KEY ("APPOINTMENT_ID");

-- ----------------------------
-- Checks structure for table APPOINTMENTS
-- ----------------------------
ALTER TABLE "C##TDC"."APPOINTMENTS" ADD CONSTRAINT "SYS_C007756" CHECK ("APPOINTMENT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."APPOINTMENTS" ADD CONSTRAINT "SYS_C007760" CHECK ("PATIENT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."APPOINTMENTS" ADD CONSTRAINT "SYS_C007761" CHECK ("DOCTOR_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."APPOINTMENTS" ADD CONSTRAINT "SYS_C007891" CHECK ("PATIENT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."APPOINTMENTS" ADD CONSTRAINT "SYS_C007892" CHECK ("DOCTOR_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table DELETED_DOCTORS
-- ----------------------------
ALTER TABLE "C##TDC"."DELETED_DOCTORS" ADD CONSTRAINT "SYS_C008044" PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Primary Key structure for table DELETED_PATIENTS
-- ----------------------------
ALTER TABLE "C##TDC"."DELETED_PATIENTS" ADD CONSTRAINT "SYS_C008042" PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Checks structure for table DELETED_PATIENTS
-- ----------------------------
ALTER TABLE "C##TDC"."DELETED_PATIENTS" ADD CONSTRAINT "SYS_C008041" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table DEPARTMENTS
-- ----------------------------
ALTER TABLE "C##TDC"."DEPARTMENTS" ADD CONSTRAINT "SYS_C007735" PRIMARY KEY ("DEPARTMENT_ID");

-- ----------------------------
-- Checks structure for table DEPARTMENTS
-- ----------------------------
ALTER TABLE "C##TDC"."DEPARTMENTS" ADD CONSTRAINT "SYS_C007734" CHECK ("DEPARTMENT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."DEPARTMENTS" ADD CONSTRAINT "SYS_C007894" CHECK ("DEPARTMENT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table DIAGNOSIS
-- ----------------------------
ALTER TABLE "C##TDC"."DIAGNOSIS" ADD CONSTRAINT "SYS_C007748" PRIMARY KEY ("DISEASE_ID");

-- ----------------------------
-- Checks structure for table DIAGNOSIS
-- ----------------------------
ALTER TABLE "C##TDC"."DIAGNOSIS" ADD CONSTRAINT "SYS_C007747" CHECK ("DISEASE_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."DIAGNOSIS" ADD CONSTRAINT "SYS_C007895" CHECK ("DISEASE_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table DOCTORS
-- ----------------------------
ALTER TABLE "C##TDC"."DOCTORS" ADD CONSTRAINT "SYS_C007733" PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Checks structure for table DOCTORS
-- ----------------------------
ALTER TABLE "C##TDC"."DOCTORS" ADD CONSTRAINT "SYS_C007730" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."DOCTORS" ADD CONSTRAINT "SYS_C007731" CHECK ("DOCTOR_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."DOCTORS" ADD CONSTRAINT "SYS_C007732" CHECK ("QUALIFICATION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."DOCTORS" ADD CONSTRAINT "SYS_C007896" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."DOCTORS" ADD CONSTRAINT "SYS_C007897" CHECK ("DOCTOR_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."DOCTORS" ADD CONSTRAINT "SYS_C007898" CHECK ("QUALIFICATION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."DOCTORS" ADD CONSTRAINT "SYS_C008012" CHECK ("DEPARTMENT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."DOCTORS" ADD CONSTRAINT "SYS_C008013" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table DOCTORS
-- ----------------------------
CREATE TRIGGER "C##TDC"."BACKUP_DELETED_DOCTORS" BEFORE DELETE ON "C##TDC"."DOCTORS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE

	U_ID NUMBER(10,0); 
	D_NAME VARCHAR2(255);  
	 
	MAIL VARCHAR2(255); 
	QUAL VARCHAR2(255); 
	RAT NUMBER(6,2); 
	DP_ID NUMBER(10); 

BEGIN
	U_ID := :OLD.USER_ID ;
	D_NAME := :OLD.DOCTOR_NAME ;
	MAIL:= :OLD.EMAIL;
	QUAL:= :OLD.QUALIFICATION;
	RAT:= :OLD.RATING;
	DP_ID:= :OLD.DEPARTMENT_ID; 

DBMS_OUTPUT.PUT_LINE('DELETED'); 

	INSERT INTO DELETED_DOCTORS(USER_ID, DOCTOR_NAME, EMAIL, QUALIFICATION, RATING, DEPARTMENT_ID)
	VALUES (U_ID,D_NAME, MAIL, QUAL, RAT, DP_ID);
END ;
/
CREATE TRIGGER "C##TDC"."UPDATE_MAIL_OF_DOCTORS" BEFORE UPDATE OF "EMAIL" ON "C##TDC"."DOCTORS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE

	U_ID NUMBER(10,0);  
	MAIL VARCHAR2(255); 

BEGIN
	U_ID := :OLD.USER_ID ;
	MAIL:=  :NEW.EMAIL; 

	UPDATE USERS 
	SET EMAIL = MAIL
	WHERE USER_ID= U_ID; 

END ;
/

-- ----------------------------
-- Primary Key structure for table HOSPITALS
-- ----------------------------
ALTER TABLE "C##TDC"."HOSPITALS" ADD CONSTRAINT "SYS_C007742" PRIMARY KEY ("HOSPITAL_ID");

-- ----------------------------
-- Checks structure for table HOSPITALS
-- ----------------------------
ALTER TABLE "C##TDC"."HOSPITALS" ADD CONSTRAINT "SYS_C007739" CHECK ("HOSPITAL_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."HOSPITALS" ADD CONSTRAINT "SYS_C007740" CHECK ("HOSPITAL_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."HOSPITALS" ADD CONSTRAINT "SYS_C007741" CHECK ("LOCATION_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."HOSPITALS" ADD CONSTRAINT "SYS_C007899" CHECK ("HOSPITAL_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."HOSPITALS" ADD CONSTRAINT "SYS_C007900" CHECK ("HOSPITAL_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."HOSPITALS" ADD CONSTRAINT "SYS_C007901" CHECK ("LOCATION_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table LOCATIONS
-- ----------------------------
ALTER TABLE "C##TDC"."LOCATIONS" ADD CONSTRAINT "SYS_C007738" PRIMARY KEY ("LOCATION_ID");

-- ----------------------------
-- Checks structure for table LOCATIONS
-- ----------------------------
ALTER TABLE "C##TDC"."LOCATIONS" ADD CONSTRAINT "SYS_C007736" CHECK ("LOCATION_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."LOCATIONS" ADD CONSTRAINT "SYS_C007737" CHECK ("CITY" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."LOCATIONS" ADD CONSTRAINT "SYS_C007902" CHECK ("LOCATION_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."LOCATIONS" ADD CONSTRAINT "SYS_C007903" CHECK ("CITY" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MEDICINES
-- ----------------------------
ALTER TABLE "C##TDC"."MEDICINES" ADD CONSTRAINT "SYS_C007744" PRIMARY KEY ("MEDICINE_ID");

-- ----------------------------
-- Checks structure for table MEDICINES
-- ----------------------------
ALTER TABLE "C##TDC"."MEDICINES" ADD CONSTRAINT "SYS_C007743" CHECK ("MEDICINE_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."MEDICINES" ADD CONSTRAINT "SYS_C007904" CHECK ("MEDICINE_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."MEDICINES" ADD CONSTRAINT "SYS_C008025" CHECK ("MEDICINE_COST" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MM_DISEASES_FOUND_IN_PRESCRIPTIONS
-- ----------------------------
ALTER TABLE "C##TDC"."MM_DISEASES_FOUND_IN_PRESCRIPTIONS" ADD CONSTRAINT "SYS_C008048" PRIMARY KEY ("PRESCRIPTION_ID");

-- ----------------------------
-- Checks structure for table MM_DISEASES_FOUND_IN_PRESCRIPTIONS
-- ----------------------------
ALTER TABLE "C##TDC"."MM_DISEASES_FOUND_IN_PRESCRIPTIONS" ADD CONSTRAINT "SYS_C008047" CHECK ("PRESCRIPTION_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MM_MDCN_IN_PRS
-- ----------------------------
ALTER TABLE "C##TDC"."MM_MDCN_IN_PRS" ADD CONSTRAINT "SYS_C008040" PRIMARY KEY ("PRESCRIPTION_ID", "MEDICINE_ID");

-- ----------------------------
-- Checks structure for table MM_MDCN_IN_PRS
-- ----------------------------
ALTER TABLE "C##TDC"."MM_MDCN_IN_PRS" ADD CONSTRAINT "SYS_C008038" CHECK ("PRESCRIPTION_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."MM_MDCN_IN_PRS" ADD CONSTRAINT "SYS_C008039" CHECK ("MEDICINE_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MM_PRS_INCLUDES_PTH
-- ----------------------------
ALTER TABLE "C##TDC"."MM_PRS_INCLUDES_PTH" ADD CONSTRAINT "SYS_C008037" PRIMARY KEY ("PRESCRIPTION_ID", "TEST_ID");

-- ----------------------------
-- Checks structure for table MM_PRS_INCLUDES_PTH
-- ----------------------------
ALTER TABLE "C##TDC"."MM_PRS_INCLUDES_PTH" ADD CONSTRAINT "SYS_C008035" CHECK ("PRESCRIPTION_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."MM_PRS_INCLUDES_PTH" ADD CONSTRAINT "SYS_C008036" CHECK ("TEST_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PATHOLOGY
-- ----------------------------
ALTER TABLE "C##TDC"."PATHOLOGY" ADD CONSTRAINT "SYS_C007750" PRIMARY KEY ("TEST_ID");

-- ----------------------------
-- Checks structure for table PATHOLOGY
-- ----------------------------
ALTER TABLE "C##TDC"."PATHOLOGY" ADD CONSTRAINT "SYS_C007749" CHECK ("TEST_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."PATHOLOGY" ADD CONSTRAINT "SYS_C007905" CHECK ("TEST_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PATIENTS
-- ----------------------------
ALTER TABLE "C##TDC"."PATIENTS" ADD CONSTRAINT "SYS_C007998" PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Checks structure for table PATIENTS
-- ----------------------------
ALTER TABLE "C##TDC"."PATIENTS" ADD CONSTRAINT "SYS_C007997" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table PATIENTS
-- ----------------------------
CREATE TRIGGER "C##TDC"."BACKUP_DELETED_PATIENTS" BEFORE DELETE ON "C##TDC"."PATIENTS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE

	U_ID NUMBER(10,0); 
	P_NAME VARCHAR2(255); 
	DOB VARCHAR2(500); 
	PHONE VARCHAR2(15); 
	SEX VARCHAR2(255); 
	CITY VARCHAR2(255); 
	MAIL VARCHAR2(255); 

BEGIN
	U_ID := :OLD.USER_ID ;
	P_NAME := :OLD.PATIENT_NAME ;
	DOB:= :OLD.DATE_OF_BIRTH; 
	PHONE:= :OLD.PHONE_NUMBER;
	SEX:= :OLD.GENDER; 
	CITY:= :OLD.LOCATION; 
	MAIL:= :OLD.EMAIL; 

	INSERT INTO DELETED_PATIENTS(USER_ID, PATIENT_NAME, DATE_OF_BIRTH, PHONE_NUMBER, GENDER, LOCATION, EMAIL)
	VALUES (U_ID,P_NAME,DOB,PHONE, SEX, CITY, MAIL );
END ;
/
CREATE TRIGGER "C##TDC"."UPDATE_MAIL_OF_PATIENTS" BEFORE UPDATE OF "EMAIL" ON "C##TDC"."PATIENTS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE

	U_ID NUMBER(10,0);  
	MAIL VARCHAR2(255); 

BEGIN
	U_ID := :OLD.USER_ID ;
	MAIL:=  :NEW.EMAIL; 

	UPDATE USERS 
	SET EMAIL = MAIL
	WHERE USER_ID= U_ID; 

END ;
/

-- ----------------------------
-- Primary Key structure for table PAYMENTS
-- ----------------------------
ALTER TABLE "C##TDC"."PAYMENTS" ADD CONSTRAINT "SYS_C008027" PRIMARY KEY ("PAYMENT_ID");

-- ----------------------------
-- Checks structure for table PAYMENTS
-- ----------------------------
ALTER TABLE "C##TDC"."PAYMENTS" ADD CONSTRAINT "SYS_C008026" CHECK ("PAYMENT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."PAYMENTS" ADD CONSTRAINT "SYS_C008028" CHECK ("APPOINTMENT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PHARMACIES
-- ----------------------------
ALTER TABLE "C##TDC"."PHARMACIES" ADD CONSTRAINT "SYS_C007771" PRIMARY KEY ("PHARMACY_ID");

-- ----------------------------
-- Checks structure for table PHARMACIES
-- ----------------------------
ALTER TABLE "C##TDC"."PHARMACIES" ADD CONSTRAINT "SYS_C007770" CHECK ("PHARMACY_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."PHARMACIES" ADD CONSTRAINT "SYS_C007913" CHECK ("PHARMACY_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PRESCRIPTIONS
-- ----------------------------
ALTER TABLE "C##TDC"."PRESCRIPTIONS" ADD CONSTRAINT "SYS_C007759" PRIMARY KEY ("PRESCRIPTION_ID");

-- ----------------------------
-- Checks structure for table PRESCRIPTIONS
-- ----------------------------
ALTER TABLE "C##TDC"."PRESCRIPTIONS" ADD CONSTRAINT "SYS_C007758" CHECK ("PRESCRIPTION_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."PRESCRIPTIONS" ADD CONSTRAINT "SYS_C007914" CHECK ("PRESCRIPTION_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table RECORDS
-- ----------------------------
ALTER TABLE "C##TDC"."RECORDS" ADD CONSTRAINT "SYS_C008046" PRIMARY KEY ("RECORD_ID");

-- ----------------------------
-- Checks structure for table RECORDS
-- ----------------------------
ALTER TABLE "C##TDC"."RECORDS" ADD CONSTRAINT "SYS_C008045" CHECK ("RECORD_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table REFFERRALS
-- ----------------------------
ALTER TABLE "C##TDC"."REFFERRALS" ADD CONSTRAINT "SYS_C008030" PRIMARY KEY ("REFFERRAL_ID");

-- ----------------------------
-- Checks structure for table REFFERRALS
-- ----------------------------
ALTER TABLE "C##TDC"."REFFERRALS" ADD CONSTRAINT "SYS_C008029" CHECK ("REFFERRAL_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table REVIEWS
-- ----------------------------
ALTER TABLE "C##TDC"."REVIEWS" ADD CONSTRAINT "SYS_C007753" PRIMARY KEY ("REVIEW_ID");

-- ----------------------------
-- Checks structure for table REVIEWS
-- ----------------------------
ALTER TABLE "C##TDC"."REVIEWS" ADD CONSTRAINT "SYS_C007751" CHECK ("REVIEW_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."REVIEWS" ADD CONSTRAINT "SYS_C007752" CHECK ("STAR_GIVEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."REVIEWS" ADD CONSTRAINT "SYS_C007920" CHECK ("REVIEW_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."REVIEWS" ADD CONSTRAINT "SYS_C007921" CHECK ("STAR_GIVEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."REVIEWS" ADD CONSTRAINT "SYS_C008011" CHECK ("APPOINTMENT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USERS
-- ----------------------------
ALTER TABLE "C##TDC"."USERS" ADD CONSTRAINT "SYS_C007721" PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Checks structure for table USERS
-- ----------------------------
ALTER TABLE "C##TDC"."USERS" ADD CONSTRAINT "SYS_C007719" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."USERS" ADD CONSTRAINT "SYS_C007720" CHECK ("PASSWORD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "C##TDC"."USERS" ADD CONSTRAINT "SYS_C007922" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
