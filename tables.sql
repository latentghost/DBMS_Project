DROP DATABASE IF EXISTS online_retail_store;
CREATE SCHEMA online_retail_store;

USE online_retail_store;


CREATE TABLE Adminn(
    Username VARCHAR(255) NOT NULL,
    Pass_word VARCHAR(255) NOT NULL,
    First_Name VARCHAR(255) NOT NULL,
    Middle_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY(Username)
);

#
# TABLE STRUCTURE FOR: Adminn
#

INSERT INTO `Adminn` (`Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`) VALUES ('destini.beier', '7193759f8b74b4a525cefdf3887b940ebd69d108', 'Kiana', 'Ismael', 'Blanda');



CREATE TABLE Person (
    User_ID INT AUTO_INCREMENT NOT NULL,
    Username VARCHAR(255) NOT NULL,
    Pass_word VARCHAR(255) NOT NULL,
    First_Name VARCHAR(255) NOT NULL,
    Middle_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    Email_ID VARCHAR(255) NOT NULL,
    Is_Card_Saved VARCHAR(255) NOT NULL,
    Card_no BIGINT,
    Name_on_Card VARCHAR(255),
    Expire_Date DATE,
    Is_UPI_Saved VARCHAR(255) NOT NULL,
    UPI_ID VARCHAR(255),
    Admin_Username VARCHAR(255) NOT NULL,
    PRIMARY KEY (User_ID),
    FOREIGN KEY (Admin_Username) REFERENCES Adminn(Username)
);

#
# TABLE STRUCTURE FOR: Person
#

INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (1, 'augustus53', 'e4e1ac395631b03f3b0116d0901a2e771b93fcc9', 'Vicenta', 'Braulio', 'Koelpin', 'hilario50@yahoo.com', '0', '5414956879621701', 'Alexis Ullrich', '1975-09-07', '0', '05087980601', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (2, 'jesse.wisoky', '84a439ebeeb53ffcb5deb11ac4ef00d5fd9493d6', 'Dagmar', 'Aileen', 'Crooks', 'skylar.mayert@gmail.com', '0', '5418277396459435', 'Dr. Thalia Legros DVM', '1989-09-18', '1', '(084)363-5544', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (3, 'greenholt.candace', '0ea4d492208de623a630bddabc464aff843b593a', 'Alejandra', 'Louie', 'Nitzsche', 'umorissette@gmail.com', '0', '5119548863267667', 'Marlen Prosacco', '1983-05-25', '0', '893.357.2398', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (4, 'cheyenne97', '71cb94d13088a2aa27f31ebdadcf1a2ee973a823', 'Aglae', 'Brett', 'Bins', 'brianne.jerde@roobfay.com', '1', '5486736718749115', 'Hazle Schumm', '1977-11-01', '1', '644-889-8652', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (5, 'kshlerin.murl', '21cd57165ed6832aeb194bcd2d87ef3735a37a5c', 'Brain', 'Jade', 'Kunze', 'hahn.velva@parisian.com', '1', '5360754107932934', 'Ethelyn Mann', '2020-12-28', '0', '(449)249-9347x81032', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (6, 'jazmyn09', 'f2e703a9a617a03e7336824039afe8a8746dc7be', 'Werner', 'Makayla', 'Glover', 'schoen.rylan@kuhnflatley.com', '1', '4024007166631406', 'Jonathon Hoeger', '2005-11-16', '0', '+21(5)4562327035', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (7, 'nolan.marian', '28a10d035e9dc0355f8403042b21e93af764e5c4', 'Alvina', 'Esmeralda', 'Farrell', 'javon30@kunze.net', '1', '4929145701565818', 'Gerda Blanda', '2014-07-05', '0', '09118645877', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (8, 'rory.hills', 'bed1b5904c0e50552e492b3fe4cde7fbe34d716b', 'Duane', 'Samara', 'Medhurst', 'hilma92@quitzon.org', '0', '5522204843757513', 'Claire Zemlak', '2000-01-16', '0', '(438)530-7208', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (9, 'ucole', 'd48ec629f3f69d1603afe21a71cacc511f837d34', 'Matt', 'Elinore', 'Gulgowski', 'leatha.brown@friesenorn.biz', '1', '4485864877000293', 'Felix Hodkiewicz', '1983-02-07', '1', '(779)726-9665x99456', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (10, 'saul08', '0f71b28cc5f5e230542ab41d33a94edea1029671', 'Manley', 'Kyle', 'Lynch', 'stamm.bernhard@rosenbaumabernathy.com', '0', '4532948770137', 'Vivianne Hammes', '1986-05-14', '1', '655-556-5446', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (11, 'bdicki', '16b5ee3e09a8e92fec0f8b060d36c403af5d4dae', 'Juston', 'Maudie', 'Beier', 'meghan.gleichner@yahoo.com', '1', '6011296749411502', 'Citlalli Stehr', '2005-09-06', '0', '320.797.1343', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (12, 'windler.edmund', '8f29e0ecce06f9e5a4123579e9db064000d36a39', 'Mara', 'Lenna', 'Keebler', 'lsmitham@mcglynn.com', '1', '371065971200164', 'Loren Kassulke', '1971-12-28', '0', '411.288.2611x182', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (13, 'kautzer.alyson', 'ca13103d6f222388026b591de1d39e5f79b2629a', 'Elna', 'Alexander', 'Kutch', 'quitzon.viviane@gmail.com', '0', '4556980204358', 'Dasia Kohler', '1971-09-23', '1', '1-255-820-7912x311', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (14, 'auer.meghan', '2cbb61c282a6d0eb6baa13fb6351b0c8837adae2', 'Claire', 'Kristin', 'Heller', 'junius65@rauhickle.com', '1', '4485808216591000', 'Dax Daugherty Jr.', '2017-07-12', '1', '+11(9)1230192831', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (15, 'beier.noemie', 'd57798f42304c4bd45121e3f6373d69341caa89a', 'Laurie', 'Maud', 'Jones', 'rweber@grimes.biz', '1', '5114687622323531', 'Casimer Kohler', '2003-05-16', '0', '1-053-844-0230', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (16, 'eshields', '3b7d6b914d443d5fff693790e8e49ea2e43ad7fa', 'Saul', 'Liam', 'Gerlach', 'sammie78@smith.org', '0', '4024007135703989', 'Prof. Reynold Jerde', '1971-11-17', '1', '160.099.2957x3216', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (17, 'ykutch', '3016f5274624289be1126a1bf5004262e505bfa2', 'Buddy', 'Jerald', 'Bayer', 'marlee.dooley@herzogwillms.com', '0', '6011519322744392', 'Prof. Michael McCullough', '1978-05-30', '0', '1-799-537-7623x8575', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (18, 'kennedy.armstrong', '747aafe1a6fa45d0bf47e7ed89c2ba6bb85d75d7', 'Ethan', 'Laila', 'Hansen', 'turcotte.herta@heaney.com', '1', '5489936536641946', 'Alessia Fahey', '2019-10-01', '1', '05960347549', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (19, 'vmurazik', '680fc364c451bf0a96faf21e72147afcdb37b92b', 'Barbara', 'Rubie', 'Cronin', 'noemie.russel@kunze.com', '1', '4929941991145590', 'Cleveland Huel', '2004-04-03', '1', '1-124-089-4431x09006', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (20, 'qbreitenberg', '8cfb75cb999b66258885df23ad16744e734c7609', 'Sierra', 'Priscilla', 'Ernser', 'lillie.hessel@hotmail.com', '0', '5506157435788489', 'Delpha Ernser', '1989-07-18', '0', '545.028.0678x441', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (21, 'bridie.gerhold', '5f7b12c8da3328035d85008aac9b810006d30d7c', 'April', 'Nichole', 'Lehner', 'federico.hessel@hotmail.com', '0', '5534016365089489', 'Ervin Flatley', '1979-12-18', '1', '08376540673', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (22, 'parker.jeanne', '51e0d55de2afcea393f835239d71be38d32e5944', 'Jesus', 'Monica', 'McKenzie', 'kieran.beahan@yahoo.com', '1', '4322891037428', 'Jaren Huels', '1978-01-10', '0', '583.088.9634', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (23, 'olga.kihn', '8d7964c7f6fd5384cc2f21254dedc4d199f12ec8', 'Annabell', 'Madeline', 'Schuster', 'gemard@gmail.com', '0', '5170599003526949', 'Dr. Josianne Koss', '1982-11-19', '0', '1-162-801-4351', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (24, 'deondre.fritsch', '7ab1a5f049c1817d7d286e8e473e0c9ea26f0d85', 'Freida', 'Lea', 'Senger', 'kyleigh.nolan@hotmail.com', '0', '5175443951932685', 'Blair Stroman PhD', '2023-01-10', '1', '499.491.4080x5422', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (25, 'brian85', '52a1ec0ce802795860c3c155023d2f3a2463d065', 'Merritt', 'Ali', 'Tromp', 'lkling@hotmail.com', '0', '4716910440848', 'Prof. Arden Mraz', '2010-01-19', '0', '1-588-267-0150x99396', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (26, 'ubaldo18', '3c53929faa71a03bff76e6f1baaaf09bbd7a01dd', 'Marge', 'Alec', 'McKenzie', 'kylee71@hotmail.com', '0', '343539963258064', 'Marcella Pfeffer', '2000-02-18', '1', '01302866309', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (27, 'wellington95', 'f94646299db11986605f2595556feea52ef74cad', 'Bertrand', 'Gaylord', 'Bogan', 'iabshire@yahoo.com', '0', '4485592389008077', 'Chelsea Friesen', '1978-05-11', '0', '1-594-033-2899x37885', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (28, 'oleannon', 'c110b165f66378cbf4ffc42c074a06766937cc57', 'Felicia', 'Brendon', 'Altenwerth', 'iwisozk@gmail.com', '0', '6011146290785678', 'Mr. Elmore Koch Sr.', '2017-10-22', '0', '+51(3)3831156859', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (29, 'burdette31', '7db0f01c3395dad2f94a9a13ad4790b0b0071078', 'Gustave', 'Jodie', 'Stark', 'kilback.aiyana@yahoo.com', '1', '4929006584379', 'Beaulah Kirlin', '2021-12-26', '1', '653-773-8845', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (30, 'tanner95', 'a99cb78f0d4d15e5a93804f4abddc4036beb7d0d', 'Tracy', 'Dedric', 'Eichmann', 'amelie.walter@reichert.info', '0', '5376537892296543', 'Darion Denesik', '2003-06-03', '1', '+80(1)9881675419', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (31, 'nbailey', '1db34821eccd6f002ac31375d2e6de7b0e79c292', 'Cassie', 'Trisha', 'Tromp', 'herman.asha@yahoo.com', '0', '4539630943856', 'Israel Yundt', '2013-11-16', '0', '640-744-6611x20354', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (32, 'kuhic.kayla', '49b894fb2a11b7e7abd516541ffae51b811b1632', 'Miguel', 'Haven', 'Wehner', 'ohara.elroy@lednergulgowski.com', '1', '6011769224159313', 'Prof. Viola Bailey IV', '1980-04-10', '1', '(677)595-8987x16611', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (33, 'dfahey', 'a054ed480dfd0f6cb623917e7c8d952147694ca6', 'Damaris', 'Muhammad', 'Jacobs', 'schultz.emile@krajcik.org', '0', '5143256237106340', 'Miss Bernita Morar', '1997-08-31', '1', '1-866-385-0236x5390', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (34, 'tmayert', '934f6b3719c5b1abefd79080774b8ada7aee54f0', 'Claud', 'Vern', 'Quitzon', 'christ56@cummings.com', '0', '6011676726129512', 'Skyla Davis III', '2011-02-14', '1', '(768)648-1611x7317', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (35, 'jarvis79', '2a3c0d44638acbd3aad6e3f160b1166abec3f037', 'Maryse', 'Elza', 'Cummerata', 'xdaugherty@hotmail.com', '1', '5118267836908897', 'Pearlie Hudson', '1976-10-21', '0', '286.036.8478x40964', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (36, 'cschmeler', '847c896b4fad5a1eb202c88e533546c499fddc12', 'Kaleigh', 'Kaycee', 'Leuschke', 'blanda.calista@yahoo.com', '1', '4929938374858', 'Ms. Daphne Bernier', '1979-03-08', '0', '1-876-332-9025x4628', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (37, 'alexzander54', '9cc12d6cc1b8412823e4b3215e030d31feeb763b', 'Rodrigo', 'Doug', 'Bahringer', 'korbin.hane@gmail.com', '1', '5493127629110025', 'Anibal Spinka', '1974-04-13', '0', '878.519.5289x1785', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (38, 'wolff.jailyn', '9c349229828fe29ea196e16f13067501e2e7555c', 'Florine', 'Ignacio', 'Bednar', 'shanie.paucek@stiedemann.com', '1', '4485719147502580', 'Federico Kiehn', '2018-03-03', '0', '(025)914-3261x64448', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (39, 'larkin.nicolette', '686e9fb96999b5696cc17e925f033e301e1953fd', 'Keshaun', 'Magdalen', 'OHara', 'joanne19@osinski.org', '0', '5222993574518769', 'Price Moore', '2013-08-10', '0', '1-577-549-7422', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (40, 'ikeebler', 'c5d5b41f4ca95b2ff217ba0529a0edffe467fcaa', 'Antwan', 'Ollie', 'Gusikowski', 'myrtis88@yahoo.com', '0', '346048335373380', 'Prof. Marjory Donnelly', '1979-10-20', '0', '609.013.5151', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (41, 'ida12', '168f6ad4540d8964f9ba83104b5f431bb6377d1c', 'Lucius', 'Dorothea', 'Satterfield', 'ppurdy@cassin.com', '1', '4485167126063', 'Dr. Alexandre Senger DVM', '1997-01-14', '0', '(515)909-5953x9637', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (42, 'leta53', 'b4d178eb65780adde22e5fca892512ab0db49895', 'Charlotte', 'Kara', 'Howe', 'keshaun50@gmail.com', '1', '5544465475415651', 'Salvatore Schmidt', '1995-01-15', '1', '(704)311-6295x0437', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (43, 'emma44', '15448fd04f5116c1b01f3fb56a309dc0011327f9', 'Michael', 'Dariana', 'Marquardt', 'brandy.bechtelar@waters.com', '0', '4485654386595857', 'Quentin Lowe DVM', '1990-06-11', '0', '+82(4)6849718480', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (44, 'dquigley', 'aae84cf7a7f492f23cb3502cf62604aaa9b6711c', 'Vilma', 'Brycen', 'Brekke', 'virginie73@hotmail.com', '1', '4916143311593348', 'Ms. Sierra Rutherford', '1980-09-28', '1', '1-682-886-5609x3407', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (45, 'bogan.willa', '414591654dd5e827b89bf50de7259d101c73e8cd', 'Gavin', 'George', 'Leffler', 'haylie.mante@hotmail.com', '0', '5282165902152899', 'Taya Yundt DVM', '2012-03-03', '0', '784.057.5543', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (46, 'stephan88', 'd166debee3a9feffaf689806b843efe2dc899e60', 'Lloyd', 'Alize', 'Hayes', 'laura.hilpert@purdy.org', '0', '4916237332610', 'Mariano Rogahn', '2003-12-28', '1', '(647)047-7796x59073', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (47, 'hturner', 'cc37deb4683bdac404526e25f9508ab5f243a337', 'Oran', 'Shanie', 'Homenick', 'rstoltenberg@hotmail.com', '1', '4929290419035', 'Luisa Doyle', '1985-07-21', '0', '488-367-3270x479', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (48, 'pmiller', 'ca2ca5ca43e10504559f9554478039fb405ee32d', 'Jaquan', 'Maggie', 'Rogahn', 'koepp.cordell@treutel.net', '1', '4556325612249657', 'Dr. Alysson Windler IV', '2003-03-31', '1', '(165)222-1354', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (49, 'zschmeler', '9e3019feb7323a8dce9186fe4db2ad4182ef4306', 'Gerald', 'Avis', 'Kunde', 'irunolfsdottir@gmail.com', '0', '6011457303441093', 'Hope Simonis', '1973-11-03', '0', '590.344.6240x499', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (50, 'jacobson.arno', '17baff63526c8b8a47f77cb7a65d70ad927ab584', 'Lillie', 'Adonis', 'Johnston', 'myrna.carter@barrowsmacejkovic.com', '0', '4485714735947', 'Maud DAmore', '1976-11-30', '1', '195.457.2061', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (51, 'regan37', 'e531a11739caae5764581bbe3f6caa3324087bd1', 'Jenifer', 'Rodolfo', 'Hoeger', 'gusikowski.sonny@altenwerth.com', '1', '5406142883251909', 'Micaela Morissette', '1998-02-11', '1', '259-754-2288x88261', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (52, 'connie.kunze', '8787d3d3284f0d628422e95304b011ff0253caee', 'Elna', 'Roel', 'Gaylord', 'koch.raymond@koch.net', '0', '4539485448185077', 'Rey Gerhold', '2014-08-05', '0', '1-961-338-4809x7028', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (53, 'heber66', 'c28b42c6c031814ef24491f0b38f28ca016c25e1', 'Boris', 'Horace', 'Schimmel', 'merdman@yahoo.com', '0', '4929534039766', 'Ramona Bradtke', '2014-01-19', '0', '1-299-606-2298x91261', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (54, 'randal.hoppe', '271f7b2e71fd45d41fd7a9c668637e321dfceef3', 'Tania', 'Arianna', 'Torp', 'victoria.kreiger@jerdewilkinson.com', '1', '4916297373264723', 'Heather Sawayn', '2011-04-15', '1', '249-087-0549x35646', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (55, 'huel.quinton', '037b97bf12e4945adc5626dfa93f9f89e9e1b496', 'Rubye', 'Eryn', 'Ondricka', 'hgoyette@hayes.biz', '0', '4391311466110358', 'Louvenia Oberbrunner III', '2006-01-27', '1', '240-709-4656', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (56, 'francis.kuphal', '8456364a5055e778f99d57a05d7550f1a193ab0f', 'Shirley', 'Teagan', 'Cummings', 'dino.aufderhar@tillman.com', '0', '5480303871587795', 'Ashly Ebert III', '2014-02-24', '1', '1-878-321-4513x8258', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (57, 'doyle.mariela', '511e14927e2ad98a975b4a9df0296dd91bfc593a', 'Amya', 'Korey', 'Considine', 'simonis.elva@yahoo.com', '1', '5477463066536378', 'Frederick Wisozk', '1973-10-01', '1', '1-033-457-0803x40961', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (58, 'xavier08', '61afc1e7b5baef3d219cecb7075294a953cd6cd0', 'Miles', 'Antone', 'Christiansen', 'qcronin@pfannerstill.org', '1', '5252315462346212', 'Kacie OConner', '1988-12-16', '0', '(044)763-8802x2601', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (59, 'lpadberg', '3d6e11cea34e1a8492da0202f6c5bef0a3004019', 'Mara', 'Laney', 'Buckridge', 'yoshiko62@zemlak.info', '0', '4716245303812135', 'Dr. Arlo Weber IV', '1980-04-11', '1', '+20(5)4294388731', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (60, 'rebeca.zulauf', '28ec9b4619bcbf27295480887883622489fb6839', 'Mustafa', 'Russ', 'Kling', 'odamore@hills.com', '0', '4024007131541', 'Mrs. Bernadine Upton', '1971-07-07', '0', '04777570444', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (61, 'eveline35', 'e4d075dcee061e3e42affbe103417bb57f6124a8', 'Minerva', 'Dedrick', 'Weissnat', 'myah.haag@quitzon.org', '1', '4716929778922187', 'Dr. Axel Beatty', '1982-10-18', '1', '(150)732-2246x4685', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (62, 'uswaniawski', '7be4d28570bb9b32c5ea5baeacbacb01ed40ab51', 'Florence', 'Lupe', 'Sipes', 'missouri08@yahoo.com', '0', '343628022013970', 'Antoinette Pfeffer', '1970-09-30', '1', '1-171-789-9491x1294', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (63, 'feil.lia', '8720ebe7eed335ad5e38856559ddae69bc461443', 'Troy', 'Vilma', 'Kassulke', 'orutherford@kub.com', '0', '5238208706940057', 'Nestor Hackett', '1980-03-08', '0', '(174)557-4205x1212', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (64, 'amalia.douglas', '8b6728b787070659774af865cea4e18ea67db8d0', 'Lamont', 'Maxine', 'Kirlin', 'humberto.rutherford@wilderman.com', '1', '4539686907178994', 'Prof. Margie Gutkowski', '1993-05-13', '1', '705.664.6606', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (65, 'rosendo.gorczany', '8631f446dbfba640337ea9ba3997b552974a286c', 'Hailey', 'Margarett', 'Stiedemann', 'lorine20@ullrich.com', '0', '4532543929208403', 'Erling Zieme', '2004-10-24', '0', '05863154740', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (66, 'berta64', 'fd49313a979504e2690a566baa4cee222c60b5c0', 'Athena', 'Brendon', 'Steuber', 'billie.grimes@yahoo.com', '0', '4556966602984297', 'Prof. Florian Runolfsdottir', '2008-05-18', '1', '1-748-052-3910', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (67, 'kuhlman.lolita', '7081da03f4a870d3639b41719cc40b27da862eed', 'Salvador', 'Leopold', 'Walter', 'johnnie.goldner@gmail.com', '0', '348476085589032', 'Miss Bridie Ernser', '1982-07-19', '1', '1-541-393-1887x8730', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (68, 'aschulist', 'fae2f8e4537019d05c086ebe235857c912bac78a', 'Aletha', 'Josie', 'Batz', 'jayson.kertzmann@bins.com', '1', '5169287642238692', 'Jon Friesen', '2019-12-14', '0', '1-085-540-8080x83431', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (69, 'batz.billie', '7ba5849d3cf400c8074496657bdb9de8efdb8057', 'Shanon', 'Janick', 'McDermott', 'austin.koch@gmail.com', '1', '4024007117242', 'Eden Cole', '1994-01-30', '1', '317-316-7402', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (70, 'lehner.asa', 'e36404a5cbd60cdbfb8cbe072027de0675a34959', 'Jedediah', 'Mariela', 'Johnson', 'erdman.neva@hotmail.com', '1', '347820218085958', 'Claudine Schroeder', '1974-11-02', '0', '1-628-119-3657', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (71, 'naomie19', 'd262dfbb9216fffbe7a6cc8e69c928093c0b01a1', 'Hattie', 'Rory', 'Rutherford', 'drunolfsdottir@feest.com', '0', '4556806575893443', 'Rebeka Block', '1974-10-27', '1', '(223)946-3288x3125', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (72, 'roxane62', '399befc9086dbf89c3f413e0efcdbef5fdd766a1', 'Lavina', 'Leonor', 'Osinski', 'ygislason@rolfsonhilll.com', '0', '5154454565282686', 'Ms. Elisa Dach Sr.', '1998-11-01', '1', '(958)273-2779x7189', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (73, 'adrienne.cormier', 'a85679042ed74efcf57df993ca7e02756d7ca3f3', 'Joanie', 'Erik', 'Hintz', 'predovic.cecile@hettinger.org', '0', '5571049223732640', 'Enid Pfannerstill', '1983-09-26', '0', '01895145200', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (74, 'qwintheiser', '722df6368cb3018121c7b0e26f922521ff9c57ee', 'Heloise', 'Timmy', 'Farrell', 'alyce93@parker.com', '0', '4929529151688', 'Dr. Adah Mante IV', '1977-07-17', '0', '305-828-0913x60825', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (75, 'harris.preston', '95a436c4caab0ba314c4d447819eb7f1d727ffae', 'Isabell', 'Bessie', 'Becker', 'asha22@yahoo.com', '1', '6011464505318809', 'Roscoe Fisher IV', '1983-02-17', '0', '420-021-0517x831', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (76, 'lehner.eula', 'bd96fd3e1ad8cce99dd41fd3bbe5f8a088f386ca', 'Kiel', 'Bella', 'Murphy', 'grimes.wilma@hegmann.com', '1', '4716246442395', 'Helen Haley', '2005-09-26', '1', '1-228-415-4929', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (77, 'brooklyn.barrows', '8e3df33e4ae4e13ab564198d031c907e2edc7a90', 'Edmond', 'Gerhard', 'Schuster', 'thaag@gmail.com', '0', '5443286086839644', 'Brian Ziemann', '2003-01-21', '1', '09385666741', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (78, 'jalen94', 'bad4d91cecbe7781a769257542563bc2ccee0d45', 'Cheyanne', 'Bridgette', 'Bauch', 'gconsidine@hotmail.com', '0', '5413641788865249', 'Macie Beier III', '1975-03-25', '1', '(263)351-0004x517', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (79, 'christophe.bailey', '2fe41718bef2e13910e8dfe120aa8dcc6a3cbcdd', 'Judd', 'Camilla', 'Lehner', 'ward.josiane@yahoo.com', '0', '5431482582911462', 'Allen Steuber PhD', '1982-03-08', '0', '1-736-509-1393x28565', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (80, 'tressa.koelpin', '6a6436e4ef39c71803d83aef16e8780af89da219', 'Yolanda', 'Shyann', 'Bartell', 'damaris22@yahoo.com', '1', '4916115027746332', 'Chaim OConner', '1986-03-30', '0', '549.346.5995', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (81, 'huel.saige', '009d04f4867736595bd0913c0040c86f1247ebbb', 'Ettie', 'Elvera', 'Kerluke', 'issac.yundt@yahoo.com', '0', '4532793577035', 'Natalia Brown I', '2002-02-14', '1', '02202960528', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (82, 'wunsch.kallie', '3a14587bcd10f0f6e626efa0091e9123e98f0955', 'Brittany', 'Garrison', 'Schroeder', 'cronin.ella@gmail.com', '1', '4485564849960', 'London Rowe', '1977-10-12', '0', '(432)094-0116', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (83, 'einar.hauck', 'bf853dc55e447d8a21220ea3992a3740edcfbf49', 'Concepcion', 'Josh', 'Ziemann', 'ryleigh15@gmail.com', '0', '5414957910228803', 'Montana Aufderhar', '2020-05-20', '1', '604-257-4895x715', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (84, 'apadberg', 'c5664a40cb95a5f9fcea9bf4a2e8af621741d0be', 'Etha', 'Dexter', 'Krajcik', 'dhammes@gmail.com', '0', '372057315786539', 'Dejon Gaylord', '1973-07-16', '1', '749.378.3262', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (85, 'kovacek.sierra', '53e36c7f50be481221bd386ef0df89501189baec', 'Estelle', 'Gunner', 'Daugherty', 'donald53@wiegand.net', '0', '5100245138284112', 'Gene Heaney', '2021-04-27', '0', '999.633.5157', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (86, 'samara23', '44fa74e9e69dfe47a2c11db765717bc2664cce3c', 'Gina', 'Gus', 'McGlynn', 'elbert.wolff@gleason.com', '0', '4929581056862', 'Crystal Nikolaus I', '2015-06-21', '0', '1-368-456-7624x4607', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (87, 'boyer.dariana', 'b1a637639ea61c7dc45df7d253022beb4c2ab8b6', 'Taylor', 'Ilene', 'Lehner', 'hschmeler@kunze.biz', '1', '5197274042386344', 'Prof. Mose Wolff', '2011-06-07', '1', '862-631-6353x5329', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (88, 'xwelch', 'a6af8a0df94d9dfa92453ea129b5e3fbc33fd9f8', 'Luella', 'Trace', 'Schneider', 'milo.robel@emmerich.com', '1', '5553255641047012', 'Oceane Larkin', '2017-05-03', '0', '(315)658-8334x685', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (89, 'mhamill', '9cda757aa649a038e12f48837c323cdc74e090ad', 'Arnold', 'Heather', 'Koch', 'dorcas99@satterfieldkihn.com', '1', '6011097931315167', 'Felicita Swift', '1976-11-22', '0', '165.164.3437x43035', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (90, 'hjohnson', '8e64364871da091e51f82ffbda828f6412b4a1ec', 'Glenda', 'Orpha', 'Moen', 'trohan@hotmail.com', '0', '5336062314541129', 'Arden Medhurst', '1980-12-16', '0', '664.806.6515x928', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (91, 'schulist.francisca', '433d5609c9b7740ed344a61ec1399a5a9035bb1c', 'Tiana', 'Trevion', 'OHara', 'maggio.margot@gmail.com', '0', '6011793588628438', 'Frida Cronin', '1982-04-13', '1', '536.506.1934', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (92, 'lelia62', 'dc7a187968a76dd2979230e82814cf3596e54439', 'Annabel', 'Franco', 'Heller', 'louisa.altenwerth@denesik.com', '1', '5372171845089902', 'Vivienne Schultz', '2009-07-14', '0', '136-480-8775', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (93, 'cronin.carmine', '4a9e65c4ef81f9c4af2cdd00dc327b7125ec3d0e', 'Jakayla', 'Lester', 'Torp', 'eichmann.carmen@gmail.com', '1', '4024007126252', 'Bernadine Larkin', '1991-05-02', '1', '514.416.3289', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (94, 'gaylord.sherman', '889818ade5594642bc1b65de026ff79b6b1e3f9a', 'Abigail', 'Kelli', 'Huels', 'maida66@hotmail.com', '1', '4539880267450853', 'Caleigh Borer', '2009-03-13', '0', '(144)133-4649', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (95, 'asia.morar', 'db1c764299eccd2bffe3f4f1e0a36f02a7ed6ec8', 'Jerad', 'Wendy', 'Brakus', 'king.ray@armstrong.net', '1', '5436927044154260', 'John Keeling IV', '1994-07-15', '0', '149.270.6200x45164', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (96, 'yhand', 'c98ac7f355e053607ef67b28aadc2029b6b397d7', 'Audrey', 'Libbie', 'Zieme', 'sienna.gutmann@yahoo.com', '0', '6011832608154956', 'Hyman Stark', '1979-10-07', '0', '1-598-183-9196x02185', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (97, 'yesenia70', '0ab57a55c72905eb650fa3c1154aef6bd7bff325', 'Lambert', 'Ned', 'Walsh', 'angus22@fritsch.com', '0', '4929908649365', 'Johnson King', '2015-08-04', '0', '713.078.5351x71695', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (98, 'smitham.julien', '56b1eb442757be5c8896ef7c50c469cd6b869ae4', 'Christophe', 'Erick', 'Reichert', 'esperanza22@hotmail.com', '0', '4532440709793', 'Claire Koelpin', '2009-01-21', '1', '+17(9)5651289404', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (99, 'loyce.jerde', '73352ecdcd76b8a2c5ee7e8f6bb575baee70d5b5', 'Deonte', 'Sincere', 'Yundt', 'lora.morar@gmail.com', '0', '349677276742830', 'Dr. Halie Lubowitz V', '2019-08-30', '1', '(311)076-5042x136', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (100, 'ivy34', 'e29609434029ad9db9ba81452ef808516c903779', 'Samson', 'Ophelia', 'Schamberger', 'narciso04@yahoo.com', '0', '4915720841180442', 'Elsa Dicki', '1975-08-10', '0', '1-147-419-7218x58632', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (101, 'tleffler', 'fd05f4c5e7e45a30095de67dfdb55f12c22b7bb7', 'Chelsey', 'Sedrick', 'Tillman', 'laila73@glovernader.net', '0', '5472869990841685', 'Jesse Lubowitz', '2014-05-01', '0', '04183630152', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (102, 'aufderhar.dolly', '1b72dc7b7e3cb5b0f93f218cf7bdca6964c2785e', 'Easter', 'Roscoe', 'Nitzsche', 'runolfsson.mikel@hotmail.com', '1', '6011677913306791', 'Era Schuppe', '2012-04-27', '0', '042.034.5436x9544', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (103, 'zfeeney', '3b4d7b424c15ed2c7de0b14b92cf0af0be78f9b9', 'Freeda', 'Lucy', 'Bashirian', 'vmorissette@moen.info', '1', '4556017555345235', 'Lacy Collins', '2015-06-12', '1', '715.293.3547', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (104, 'marilou.corkery', '94acf4f5ba582650106af0eaa953970905dfb9ef', 'Karlee', 'April', 'Hegmann', 'keenan88@sanfordbeahan.org', '1', '4929023713059352', 'Denis Cassin', '2001-08-15', '1', '(656)834-6926', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (105, 'cleora43', '503d9ff8eec77c57e5cea2c782b0696e30ad0056', 'Lizzie', 'Meda', 'Fritsch', 'erolfson@kautzer.com', '1', '375310568992920', 'Marlen Christiansen', '2006-06-13', '0', '1-550-596-7120', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (106, 'hoeger.eusebio', '9d34bdb7ed475a3a96a8791d7b585c3b79c7992a', 'Jacynthe', 'Adrian', 'Oberbrunner', 'lubowitz.lawrence@gmail.com', '1', '4024007109901', 'Wilhelmine DAmore', '1993-02-07', '0', '599-281-0786x07243', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (107, 'noble04', 'cab45626ce2c6a3df7710b39b2491859166a2342', 'Roxanne', 'Karley', 'Konopelski', 'reva.spinka@rempel.com', '0', '4556768149482695', 'Andy Mills', '2007-10-03', '1', '(812)149-4254x5340', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (108, 'monroe.hilpert', '3f3fced88b438df9e64d8d790607d682c812bf32', 'Shaylee', 'Brandi', 'Boyer', 'barrows.carroll@hotmail.com', '1', '5448585005319945', 'Jacinto Daniel', '1991-07-31', '0', '+84(0)5987419156', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (109, 'hayes.eve', '1cb05b146ea12e758cb7a5996b707418f6a98fd3', 'Keira', 'Amy', 'Smith', 'samantha.hettinger@wittingbogisich.com', '1', '5532686886786161', 'Rose Grimes', '2019-11-06', '1', '08280604564', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (110, 'dcrooks', 'a784c3db2fee06faebdf9b2b9171a9ce50e5b67f', 'Amanda', 'Helen', 'Adams', 'jazmyn58@gmail.com', '1', '4002793455105296', 'Prof. Zackary Reichert', '1971-07-24', '0', '(428)935-8226x3202', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (111, 'rosemarie67', '4d09abe9bb3b61949457f7329c5ce5486f74eaf4', 'Enid', 'Shaun', 'Kshlerin', 'dietrich.lillie@gmail.com', '1', '4929505412021', 'Mable Hane', '1987-10-26', '0', '+93(0)2073656636', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (112, 'oernser', '1684eb5a7f54475dda00c5fe64350acaf22245d8', 'Lawson', 'Mariela', 'Bechtelar', 'cartwright.sarina@gmail.com', '0', '4430644741943429', 'Laury Murray', '1971-03-14', '1', '136-446-0713x111', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (113, 'tgraham', 'e07db78fd774b321e44e8e874f9a3d8a034c41a4', 'Brennan', 'Angel', 'Jast', 'mollie70@haley.info', '0', '5318175387975231', 'Prof. Nya Wolf', '1999-10-31', '0', '1-060-129-5928x2225', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (114, 'kraig.lehner', 'ebc6927a217a6471e5c7df0d082f124ef82e4436', 'Bulah', 'Phoebe', 'Bashirian', 'cquitzon@toystrosin.com', '0', '4929082431432', 'Thaddeus Leffler', '2017-08-31', '1', '647-936-6080x82337', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (115, 'therese.hamill', '1576f2f210aaa2786ccd3710a4cb8634dcca2b32', 'Titus', 'Miracle', 'Corkery', 'leanne.oconnell@hotmail.com', '0', '4401843674112951', 'Frederik Bailey', '2015-06-11', '1', '534.281.5839', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (116, 'xgorczany', 'a7ca7606a9754d6684d4bc0c0db0575f971c13ac', 'Ashly', 'Kaylah', 'Lehner', 'stanton.enrico@yahoo.com', '1', '343984373857640', 'Enoch Schowalter', '1980-10-12', '0', '(259)006-8796', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (117, 'qdicki', 'd9c8aea726e8afd96210f174ceffc474a3932457', 'Dana', 'Thaddeus', 'Rodriguez', 'jamal.bradtke@fadel.biz', '0', '5428498194677038', 'Benton Sporer', '2018-08-30', '0', '1-816-642-3129x257', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (118, 'otto78', 'df9439878f5fb6ff9aff193a0504c61bc36eebed', 'Rylan', 'Wallace', 'Paucek', 'jovanny.stanton@greenfelder.org', '1', '6011602935891215', 'Prof. Pattie Heller MD', '2019-09-24', '0', '(748)461-9127', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (119, 'oconnell.celestino', 'fcb5bc4b96a2c6e0f7f2ba052e69f0c1d56dcdc7', 'Jeanne', 'Roscoe', 'OConner', 'brooke84@gutmanndurgan.com', '0', '5123209592631706', 'Nicolas McLaughlin', '1987-09-07', '1', '+81(7)0448014078', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (120, 'unique.aufderhar', '31c1b5b763092a0e989772c8f2cb507838defd81', 'Russel', 'Betty', 'Medhurst', 'awelch@balistreri.com', '1', '6011673300952440', 'Tessie Kilback', '1990-06-29', '0', '(681)759-6588x8413', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (121, 'jazmyne87', 'eaf6ea370b242572a3c88691b5914deee53693d3', 'Fanny', 'Millie', 'Spencer', 'alfred.gleichner@gmail.com', '0', '4580790333383', 'Chanel Wilkinson I', '1971-05-02', '1', '742-965-9746x7340', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (122, 'alexane.ferry', 'fc0742433a6472df45cfb62d0b8081adcb9f64fc', 'Patsy', 'Zaria', 'Corkery', 'schoen.alda@bergehand.info', '1', '4716425096923', 'Mr. Daryl Schneider V', '1983-07-03', '0', '(253)922-2525', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (123, 'wyman.reinger', '35d36c23d8e5233c30b68334370cbce2427188c4', 'Cortney', 'Hilma', 'Kohler', 'randal05@hotmail.com', '0', '4556393353062', 'Eleanora Botsford II', '2020-04-25', '0', '705.311.1716x47625', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (124, 'zack17', '5bac2e7ad4208d2c7e3978ff63bd02f84f806e9c', 'Raphaelle', 'Sebastian', 'Marquardt', 'graciela91@carroll.biz', '1', '5328132549996444', 'Janelle Will', '1991-03-15', '0', '345.632.6132', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (125, 'vbergstrom', 'df9342b6162269dbe770fd8f4b8bbbe18a4c1fb5', 'Ludie', 'Jonathon', 'Carroll', 'gutmann.elsa@yahoo.com', '0', '5186037926337354', 'Miss Gisselle Raynor', '1999-08-23', '1', '1-506-337-0983x0247', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (126, 'reina32', '6e32f09cc1d34c3ab7a0c3a66f93134f416d83ff', 'Earnest', 'Erika', 'OConner', 'arnoldo.witting@hackett.com', '1', '6011261120569198', 'Myrtle Rice', '1999-04-29', '1', '1-055-547-1341', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (127, 'omills', '0ca5a5a1d6a100fcd1ac84a63b5bda3c2e75f761', 'Dessie', 'Emie', 'Harvey', 'ifadel@yahoo.com', '1', '5431503102070795', 'Roel Kulas', '1993-03-15', '0', '(742)437-0395x1162', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (128, 'agusikowski', '8f69f381ec2da0b5652a180be18878b7764d6c35', 'Sasha', 'Garrison', 'Roob', 'adaline28@kshlerin.net', '0', '4556251700590725', 'Kaylah Abshire', '1987-10-11', '0', '(501)416-9908', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (129, 'kuhlman.jett', '349c5604971a39ec75dd8f6b0e6ba9eb8bc236ed', 'Mariane', 'Nayeli', 'Muller', 'lkris@lueilwitz.com', '0', '5444152505003326', 'Janet Kunze', '1988-01-18', '1', '851.981.0783x97693', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (130, 'medhurst.franz', '0fb000147780bc719da280dd87f6ba32ad3d19a6', 'Emie', 'Ellie', 'OReilly', 'lwhite@legros.com', '0', '4539534627453', 'Dr. Camren Greenholt', '2007-05-27', '1', '1-664-257-8036', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (131, 'kaylah87', 'd73dfe58f03c05f8fe2ae07101908bf821887c16', 'Miracle', 'Rubye', 'Mosciski', 'morris.braun@becker.com', '0', '5163267897360837', 'Elyssa Bosco', '2003-06-18', '0', '(266)575-3552', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (132, 'turner.hilton', 'c38a083a0ff296eb9bc864ba1a73d4b8dee374c9', 'Garrison', 'Dashawn', 'Kilback', 'camilla20@gmail.com', '0', '4929774386545465', 'Prof. Alessandra Pfeffer', '1987-07-30', '0', '05276197759', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (133, 'vblick', 'f1362b004c0295e4cb154e825e2f600e7781ed59', 'Karlie', 'Leann', 'Bosco', 'vmurray@hotmail.com', '1', '6011873792982967', 'Grant Bauch II', '2017-04-04', '1', '291-352-9314x702', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (134, 'gregorio.legros', 'b437300e8a8006265f55e85e8d522d7dd4bd47f1', 'Mathias', 'Jeramy', 'Lemke', 'izaiah.hegmann@hotmail.com', '1', '4716489660201', 'Monroe Jast', '1976-02-05', '1', '419.961.8279', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (135, 'myrl.rodriguez', 'e66e7d6275cd302818f70f75c6da8c0500039f58', 'Dessie', 'Lou', 'Littel', 'lolita.hodkiewicz@dubuque.com', '1', '4532251820349921', 'Boyd Dickens', '2004-03-02', '1', '1-375-975-3997', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (136, 'xcasper', '4636b6b28f07308df8c143e9de8baf61e7c618a0', 'Moses', 'Loren', 'Klein', 'alford.breitenberg@gleichner.org', '1', '4929315111730740', 'Ms. Frida Thompson', '2008-11-22', '0', '1-498-777-1730', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (137, 'stamm.rosemary', 'e5e7d8426c41cce2c95bddd7bcc2ded1988cc59c', 'Maddison', 'Eulah', 'Schaden', 'nmiller@hotmail.com', '1', '5422542079326909', 'Roberto Maggio', '1992-09-28', '0', '585.328.7934x99381', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (138, 'olson.ines', '3a9b08c01ba01eb7e9d0b943679e4d2814eb44a6', 'Misty', 'Concepcion', 'Crona', 'ernestine.beatty@emard.com', '1', '4539340765504235', 'Rhea Grant IV', '1983-08-18', '0', '855-535-7817x265', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (139, 'laura82', '9b65bbd77a1e40019bedfda1fa2cf499e7b997ee', 'Imogene', 'Angelina', 'Daniel', 'margarette66@yahoo.com', '1', '347453943975282', 'Miss Anabelle Waters Sr.', '1970-05-19', '0', '131.567.8356', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (140, 'vita.larson', '4c897c5feb10b9d22e165fba9ac10f95f71fc8f4', 'Kallie', 'Kirstin', 'Koepp', 'qwaelchi@torphy.org', '0', '5558774720103030', 'Katarina Terry', '1976-04-24', '0', '(037)983-4225x8903', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (141, 'elisabeth.hauck', 'fc10c72083627695e9b699bd62cf2944bf2a3998', 'Domenica', 'Orville', 'Mitchell', 'kilback.yasmeen@reilly.net', '0', '6011308104289621', 'Craig Kuhic', '1998-03-14', '0', '995.674.2112x0334', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (142, 'melba.prohaska', 'afc866bad8d3376e2f7b59988460d54af41921b0', 'Kattie', 'Charity', 'Brown', 'helena.miller@yahoo.com', '1', '5545118359706956', 'Pierre Becker Sr.', '1972-01-21', '0', '+58(6)3952459637', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (143, 'fhoppe', '8fa5534bb4424d40a283838b149550d225a954b8', 'Dewitt', 'Hilton', 'Boehm', 'stevie32@heaney.com', '1', '340194309776255', 'Colleen Gislason Sr.', '2004-11-17', '0', '1-572-919-8989x413', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (144, 'annie.trantow', '510ecb2e82e9cb38ab4a214e9d77b4ad17419a25', 'Novella', 'Erick', 'Tillman', 'cwill@dubuquepredovic.info', '0', '5125002356817283', 'Prof. King Wolff MD', '1978-01-23', '0', '1-785-260-9521x3471', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (145, 'rita77', '52723496f5329dc5dcb454db8a7f101ca5952499', 'Kristin', 'Shyann', 'Wyman', 'carroll.rafaela@powlowskichamplin.com', '0', '5139317280375111', 'Miss Christelle Krajcik', '2018-06-05', '1', '235.934.5454', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (146, 'eddie.kris', '76ce8337f8a49d5bafdd787e1c5bc38adac3f34d', 'Lucas', 'Wilhelmine', 'Hickle', 'bpurdy@littletremblay.com', '0', '379844234457465', 'Mr. Eleazar Zemlak', '2020-04-19', '0', '05156988940', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (147, 'roob.michelle', '809129840941db5fa55990016a23ff4d2b8c7fb2', 'Solon', 'Chelsie', 'Legros', 'xhermiston@hotmail.com', '0', '4929098573424302', 'Immanuel Daniel', '2013-10-22', '0', '+46(0)9317740187', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (148, 'jgraham', '6c04a4efd36de09d73e6f116d52ec5f552fcdc9b', 'Watson', 'Kade', 'Howell', 'zschneider@yahoo.com', '0', '4916317197845', 'Holly Cremin', '1989-03-06', '1', '716.630.1553', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (149, 'trevor52', '478c0be4bb11c28e7d89901425c7bc96e228ecf4', 'Juana', 'Ray', 'Ledner', 'htremblay@hotmail.com', '1', '5323034336079679', 'Valentin Goyette', '1979-07-07', '1', '441.023.5113x13181', 'destini.beier');
INSERT INTO `Person` (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`, `Admin_Username`) VALUES (150, 'bwiegand', '1e8c03b820dd45e074ecf647a4a17f8212282345', 'Chaz', 'Hilton', 'Mraz', 'kendra.witting@bosco.org', '1', '4539055320267343', 'Laura Schowalter', '2004-01-03', '1', '083-788-7793', 'destini.beier');


CREATE TABLE Person_Phone (
    User_ID INT NOT NULL,
    Phone_no BIGINT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Person(User_ID)
);

#
# TABLE STRUCTURE FOR: Person_Phone
#

INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (1, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (2, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (3, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (4, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (5, '752');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (6, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (7, '5558733326');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (8, '848936');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (9, '413');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (10, '516826');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (11, '756122');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (12, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (13, '478');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (14, '934');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (15, '907');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (16, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (17, '455');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (18, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (19, '9082003317');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (20, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (21, '32733');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (22, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (23, '7253412977');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (24, '107');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (25, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (26, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (27, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (28, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (29, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (30, '64');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (31, '9671607992');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (32, '832171');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (33, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (34, '24');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (35, '320');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (36, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (37, '770543');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (38, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (39, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (40, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (41, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (42, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (43, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (44, '839916');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (45, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (46, '66128');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (47, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (48, '686682');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (49, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (50, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (51, '885076');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (52, '381935');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (53, '3392992492');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (54, '7063362399');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (55, '15');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (56, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (57, '535');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (58, '517');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (59, '41');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (60, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (61, '470330');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (62, '109886');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (63, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (64, '332191');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (65, '423009');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (66, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (67, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (68, '296879');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (69, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (70, '373097');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (71, '976');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (72, '695');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (73, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (74, '895011');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (75, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (76, '495503');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (77, '928186');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (78, '700');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (79, '271');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (80, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (81, '394');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (82, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (83, '193');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (84, '725077');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (85, '6422867843');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (86, '18');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (87, '3668512629');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (88, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (89, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (90, '26');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (91, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (92, '414899');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (93, '461');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (94, '862766');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (95, '349');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (96, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (97, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (98, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (99, '990');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (100, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (101, '352343');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (102, '36844');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (103, '490245');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (104, '547');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (105, '918671');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (106, '5789954296');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (107, '4162296792');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (108, '146');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (109, '303953');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (110, '310');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (111, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (112, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (113, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (114, '421');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (115, '5915932286');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (116, '622');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (117, '300011');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (118, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (119, '717');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (120, '747');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (121, '266');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (122, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (123, '733');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (124, '250417');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (125, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (126, '885');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (127, '692');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (128, '662541');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (129, '893912');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (130, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (131, '729');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (132, '4');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (133, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (134, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (135, '515897306');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (136, '9089077597');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (137, '42');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (138, '488818');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (139, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (140, '366');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (141, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (142, '55');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (143, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (144, '9729724545');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (145, '787054');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (146, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (147, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (148, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (149, '16');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (150, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (1, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (2, '511217');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (3, '3808928653');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (4, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (5, '706421');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (6, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (7, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (8, '37');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (9, '834425');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (10, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (11, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (12, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (13, '48');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (14, '259727');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (15, '9');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (16, '342');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (17, '19');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (18, '805');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (19, '927');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (20, '64');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (21, '395768');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (22, '193');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (23, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (24, '874060');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (25, '7888121042');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (26, '258');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (27, '313141');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (28, '61');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (29, '693');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (30, '93');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (31, '15');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (32, '54439');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (33, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (34, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (35, '5539200188');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (36, '837230');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (37, '961325');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (38, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (39, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (40, '34');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (41, '194136');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (42, '44');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (43, '135');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (44, '1613293807');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (45, '32');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (46, '484306');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (47, '1');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (48, '58133809');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (49, '0');
INSERT INTO `Person_Phone` (`User_ID`, `Phone_no`) VALUES (50, '569');


CREATE TABLE Customer (
    Customer_ID INT AUTO_INCREMENT NOT NULL,
    User_ID INT NOT NULL,
    No_of_Cart_Products INT NOT NULL,
    Cart_Status VARCHAR(255) NOT NULL,
    Admin_Username VARCHAR(255) NOT NULL,
    PRIMARY KEY (Customer_ID),
    FOREIGN KEY (User_ID) REFERENCES Person(User_ID),
    FOREIGN KEY (Admin_Username) REFERENCES Adminn(Username)
);

#
# TABLE STRUCTURE FOR: Customer
#

INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (1, 1, 2, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (2, 2, 6, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (3, 3, 4, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (4, 4, 2, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (5, 5, 5, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (6, 6, 6, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (7, 7, 6, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (8, 8, 2, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (9, 9, 0, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (10, 10, 3, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (11, 11, 1, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (12, 12, 4, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (13, 13, 5, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (14, 14, 7, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (15, 15, 4, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (16, 16, 0, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (17, 17, 9, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (18, 18, 6, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (19, 19, 0, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (20, 20, 0, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (21, 21, 9, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (22, 22, 9, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (23, 23, 2, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (24, 24, 2, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (25, 25, 2, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (26, 26, 0, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (27, 27, 7, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (28, 28, 1, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (29, 29, 3, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (30, 30, 6, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (31, 31, 6, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (32, 32, 3, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (33, 33, 7, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (34, 34, 6, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (35, 35, 6, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (36, 36, 2, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (37, 37, 2, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (38, 38, 5, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (39, 39, 0, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (40, 40, 4, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (41, 41, 9, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (42, 42, 7, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (43, 43, 0, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (44, 44, 3, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (45, 45, 7, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (46, 46, 6, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (47, 47, 7, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (48, 48, 7, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (49, 49, 6, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (50, 50, 7, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (51, 51, 7, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (52, 52, 5, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (53, 53, 1, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (54, 54, 4, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (55, 55, 6, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (56, 56, 1, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (57, 57, 3, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (58, 58, 0, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (59, 59, 6, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (60, 60, 9, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (61, 61, 7, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (62, 62, 2, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (63, 63, 2, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (64, 64, 8, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (65, 65, 2, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (66, 66, 5, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (67, 67, 8, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (68, 68, 3, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (69, 69, 7, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (70, 70, 9, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (71, 71, 7, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (72, 72, 1, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (73, 73, 2, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (74, 74, 9, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (75, 75, 8, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (76, 76, 1, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (77, 77, 2, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (78, 78, 5, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (79, 79, 7, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (80, 80, 9, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (81, 81, 1, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (82, 82, 7, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (83, 83, 0, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (84, 84, 8, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (85, 85, 9, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (86, 86, 8, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (87, 87, 3, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (88, 88, 3, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (89, 89, 6, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (90, 90, 3, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (91, 91, 6, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (92, 92, 6, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (93, 93, 4, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (94, 94, 5, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (95, 95, 9, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (96, 96, 4, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (97, 97, 1, '1', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (98, 98, 7, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (99, 99, 5, '0', 'destini.beier');
INSERT INTO `Customer` (`Customer_ID`, `User_ID`, `No_of_Cart_Products`, `Cart_Status`, `Admin_Username`) VALUES (100, 100, 1, '0', 'destini.beier');


CREATE TABLE Customer_Delivery_Address (
    Customer_ID INT NOT NULL,
    House_no INT NOT NULL,
    Street_Name VARCHAR(255),
    City VARCHAR(255) NOT NULL,
    State VARCHAR(255) NOT NULL,
    Pin_Code INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Customer_Delivery_Address
#

INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (1, 2, 'Genoveva Bridge', 'North Kamille', 'District of Columbia', 75525);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (2, 5, 'Myrtis Island', 'Lake Meta', 'Ohio', 29576);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (3, 9, 'Callie Via', 'West Hannah', 'Hawaii', 84408);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (4, 7, 'Macejkovic Valleys', 'Strackestad', 'SouthDakota', 19058);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (5, 0, 'Grant Shores', 'East Betteborough', 'Connecticut', 25440);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (6, 1, 'Anderson Lodge', 'West Isaiview', 'District of Columbia', 78038);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (7, 7, 'Oma Point', 'South Granvillebury', 'SouthDakota', 77776);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (8, 8, 'Mills Mount', 'East Gideonberg', 'District of Columbia', 77260);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (9, 8, 'Strosin Spring', 'Lonnyland', 'Nevada', 60005);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (10, 7, 'Balistreri Mews', 'Strackeville', 'Hawaii', 68892);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (11, 0, 'Schumm Flats', 'Loratown', 'Oklahoma', 75531);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (12, 8, 'Wilderman Meadow', 'Port Karley', 'Missouri', 82446);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (13, 1, 'Stewart Bypass', 'West Evie', 'Utah', 66433);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (14, 9, 'Reichert Hill', 'Adamsborough', 'Ohio', 21952);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (15, 7, 'Kreiger Corner', 'North Karina', 'Massachusetts', 33889);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (16, 3, 'Kiehn Square', 'Alfredoburgh', 'Mississippi', 58745);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (17, 7, 'Jayde Row', 'East Kurtischester', 'Nevada', 23269);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (18, 6, 'Wunsch Vista', 'Schillerchester', 'Kentucky', 88224);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (19, 7, 'Simonis Parkways', 'East Tess', 'Delaware', 19915);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (20, 2, 'Dorothy Meadow', 'South Cyrilmouth', 'Connecticut', 15910);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (21, 6, 'Runte Plaza', 'East Jaymeshire', 'Iowa', 26244);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (22, 7, 'Jast Junctions', 'New Carlie', 'Hawaii', 43953);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (23, 0, 'Ashtyn Street', 'Lake Edythe', 'Georgia', 25093);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (24, 6, 'Brown Mountain', 'Adelbertchester', 'Idaho', 22047);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (25, 4, 'Goldner Gateway', 'West Pascaleport', 'Michigan', 93328);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (26, 4, 'Bode Trail', 'Jessymouth', 'Pennsylvania', 8061);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (27, 6, 'Eveline Stravenue', 'Rigobertoside', 'Ohio', 96452);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (28, 9, 'Klocko Trail', 'Denahaven', 'SouthCarolina', 46430);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (29, 5, 'Kadin Junctions', 'Gerholdport', 'Wyoming', 38035);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (30, 4, 'Felix Villages', 'Cronahaven', 'Wisconsin', 92426);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (31, 0, 'Murazik Hollow', 'Lake Cristal', 'Iowa', 46148);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (32, 2, 'Sylvia Terrace', 'Isomton', 'Oklahoma', 29319);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (33, 5, 'Stanton Flat', 'Walterchester', 'Maine', 77329);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (34, 0, 'Stanton Villages', 'New Bertramborough', 'Colorado', 37274);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (35, 5, 'Tyler Freeway', 'New Stuart', 'Hawaii', 35540);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (36, 5, 'Danielle Brook', 'New Wilson', 'NewJersey', 22930);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (37, 9, 'Lindsay Locks', 'Krajcikmouth', 'Oregon', 56843);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (38, 5, 'Isaac Lock', 'Morriston', 'NorthCarolina', 85109);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (39, 1, 'Fadel Stravenue', 'North Olen', 'NorthDakota', 2720);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (40, 4, 'Imelda Crescent', 'Brigittechester', 'Florida', 53121);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (41, 8, 'Lebsack Parkways', 'Ricomouth', 'SouthDakota', 78334);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (42, 2, 'Kihn Extensions', 'Augustineland', 'Ohio', 72859);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (43, 2, 'Kory Ferry', 'Port Baileechester', 'NorthDakota', 29564);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (44, 7, 'Libbie Mission', 'Audreyville', 'Massachusetts', 29291);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (45, 9, 'Mayert Hills', 'North Jedland', 'Georgia', 70101);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (46, 9, 'Haag Manors', 'Goldnerland', 'Illinois', 46385);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (47, 7, 'Hessel Loop', 'South Emanuelview', 'NewMexico', 17810);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (48, 1, 'Elton Lodge', 'Kilbackland', 'Pennsylvania', 47944);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (49, 1, 'Bauch Groves', 'Ratkestad', 'Nevada', 94029);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (50, 2, 'Jerde Crossroad', 'Haleyland', 'Wisconsin', 34720);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (51, 9, 'Magali Port', 'West Alexysside', 'Missouri', 38011);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (52, 6, 'Kelli Hill', 'South Alvahchester', 'Louisiana', 48942);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (53, 3, 'Wiza Forges', 'New Gerry', 'Kansas', 70738);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (54, 6, 'Reynolds Mills', 'Schroederport', 'Vermont', 69575);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (55, 1, 'Sheila Parkways', 'Macyborough', 'Indiana', 47753);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (56, 6, 'Wuckert Fords', 'West Bo', 'Nevada', 86937);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (57, 7, 'Ferry Canyon', 'Mylesshire', 'Vermont', 40243);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (58, 1, 'Ashly Springs', 'Hermanntown', 'NewYork', 2239);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (59, 5, 'Predovic Oval', 'New Larryberg', 'Maryland', 45865);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (60, 6, 'Cole Hill', 'West Clarebury', 'Montana', 30613);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (61, 6, 'Torphy Fort', 'Lorenzville', 'Oregon', 93126);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (62, 9, 'Cruickshank Knolls', 'New Cordiechester', 'Maryland', 49213);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (63, 3, 'Crona Vista', 'West Jasen', 'Alaska', 94510);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (64, 2, 'Walter Lights', 'New Grady', 'Minnesota', 3146);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (65, 4, 'Bauch Garden', 'North Rogers', 'Arkansas', 3119);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (66, 8, 'Mathew Knolls', 'Jastland', 'Virginia', 47253);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (67, 8, 'Davis Inlet', 'South Baronbury', 'Maryland', 90246);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (68, 6, 'Gretchen Stream', 'East Keyonport', 'SouthDakota', 48289);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (69, 4, 'Edgardo Harbors', 'North Monroe', 'Mississippi', 6883);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (70, 0, 'Uriah Courts', 'West Sallie', 'Virginia', 47695);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (71, 6, 'Junius Port', 'East Vickyton', 'Illinois', 13059);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (72, 6, 'Zemlak Stream', 'Langside', 'NewHampshire', 24516);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (73, 3, 'Denesik Motorway', 'East Johannburgh', 'NorthDakota', 74801);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (74, 8, 'Van Locks', 'North Kellie', 'Delaware', 73006);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (75, 6, 'Sonya Landing', 'Lake Rickey', 'Illinois', 14362);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (76, 0, 'Heathcote Gardens', 'Hegmannfurt', 'Minnesota', 83917);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (77, 2, 'Walter Creek', 'Wilkinsonside', 'Nevada', 42495);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (78, 7, 'Lakin Vista', 'Terryhaven', 'Illinois', 37752);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (79, 5, 'Randall Valley', 'Heaneyside', 'WestVirginia', 24719);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (80, 7, 'Sipes Shore', 'East Laurenceside', 'Idaho', 37112);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (81, 2, 'Ethelyn Pine', 'Odiehaven', 'Alaska', 40580);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (82, 7, 'Elias Center', 'West Creola', 'Arizona', 41735);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (83, 8, 'Keebler Flats', 'New Josephfurt', 'NorthCarolina', 30027);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (84, 7, 'Becker Center', 'Prohaskaside', 'Ohio', 31637);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (85, 7, 'Klein Crossroad', 'Lake Brookeview', 'Pennsylvania', 44068);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (86, 7, 'Cremin Fort', 'New Bayleeberg', 'RhodeIsland', 66778);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (87, 8, 'Beier Garden', 'Carliefort', 'Connecticut', 87288);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (88, 3, 'Upton Rapid', 'Abdulport', 'NorthDakota', 18831);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (89, 4, 'Bonnie Inlet', 'East Isabelle', 'California', 98831);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (90, 0, 'Skiles Trafficway', 'North Juliusland', 'Connecticut', 96855);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (91, 3, 'Maddison Camp', 'Clairville', 'Wisconsin', 27573);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (92, 4, 'Senger Green', 'Walshfurt', 'Oregon', 70605);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (93, 3, 'Camille Field', 'Port Christophe', 'Nevada', 3005);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (94, 0, 'Nelle Island', 'New Ebba', 'Alaska', 67390);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (95, 1, 'Koss Fall', 'Port Elbertberg', 'Missouri', 79185);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (96, 2, 'McDermott Shoal', 'Kayceebury', 'NewYork', 15853);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (97, 9, 'Hauck Summit', 'Nolanmouth', 'Connecticut', 76226);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (98, 6, 'Huels Stravenue', 'New Burleyland', 'Colorado', 80533);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (99, 9, 'Kozey Rapids', 'New Declanville', 'Alaska', 46523);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (100, 3, 'Greenholt Shores', 'Keelingport', 'Nebraska', 89762);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (1, 8, 'Beth Vista', 'Gilbertshire', 'Alaska', 20143);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (2, 1, 'Streich Motorway', 'New Jamar', 'NewJersey', 53339);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (3, 9, 'Kuphal Prairie', 'Lehnerview', 'Ohio', 55700);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (4, 9, 'Fritsch Turnpike', 'Blancabury', 'Mississippi', 2076);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (5, 5, 'Dion Villages', 'Chaunceyview', 'Michigan', 26723);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (6, 5, 'Roosevelt Crossroad', 'North Kailey', 'NewMexico', 32182);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (7, 6, 'Janis Villages', 'Port Mellie', 'Minnesota', 86563);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (8, 3, 'Waylon Village', 'Jeromyfort', 'Colorado', 95730);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (9, 1, 'Lowe Mountains', 'Lake Octaviafurt', 'Montana', 55625);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (10, 5, 'Mayer Views', 'Port Paula', 'Ohio', 83721);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (11, 9, 'Ruecker Port', 'Vellamouth', 'Maryland', 96921);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (12, 6, 'Rowland Oval', 'Reillyview', 'Kansas', 37887);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (13, 2, 'Dietrich Ridges', 'South Wilhelm', 'Alabama', 75040);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (14, 8, 'Deborah Freeway', 'Port Erich', 'Ohio', 28346);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (15, 2, 'Von Roads', 'New Clareborough', 'Utah', 20852);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (16, 0, 'Johns Lodge', 'Parisianshire', 'Oregon', 12438);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (17, 7, 'Schumm Port', 'Hazleberg', 'Wisconsin', 16965);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (18, 6, 'Marina Dale', 'Kaciberg', 'Arizona', 59738);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (19, 3, 'Ladarius Ford', 'Rolfsonmouth', 'NewHampshire', 27246);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (20, 0, 'Maximillia Fall', 'Lake Florinetown', 'RhodeIsland', 6984);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (21, 6, 'Hermiston Inlet', 'Brownmouth', 'Illinois', 73937);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (22, 6, 'Roob Field', 'Adamport', 'NorthDakota', 75590);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (23, 5, 'Henderson Walks', 'Kailynbury', 'Maryland', 48191);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (24, 7, 'Bode Inlet', 'Bertrandfort', 'Missouri', 38130);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (25, 4, 'Larson River', 'Webermouth', 'Idaho', 14111);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (26, 6, 'Beer Junction', 'Sylvanshire', 'Arizona', 42210);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (27, 1, 'Forrest Divide', 'Daijahaven', 'Vermont', 3992);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (28, 0, 'Dietrich Gateway', 'New Jett', 'Missouri', 54053);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (29, 3, 'Huel Parkways', 'Bechtelarfurt', 'Wyoming', 18967);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (30, 1, 'Upton Mountain', 'Port Ryder', 'NorthCarolina', 23084);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (31, 9, 'Shaniya Lodge', 'West Oleta', 'Nebraska', 16948);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (32, 4, 'Durward Union', 'East Elvieport', 'RhodeIsland', 59999);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (33, 7, 'Berge Fords', 'Missourimouth', 'WestVirginia', 65095);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (34, 0, 'Mitchell Junctions', 'Federicomouth', 'NorthDakota', 41161);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (35, 3, 'Schinner Cape', 'Eladioville', 'SouthDakota', 75324);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (36, 1, 'King Plain', 'North Janessachester', 'Texas', 22448);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (37, 0, 'Bahringer Junctions', 'Lake Dellamouth', 'Oregon', 91535);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (38, 4, 'Ferry Locks', 'New April', 'Connecticut', 73972);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (39, 8, 'Zieme Point', 'West Cade', 'Massachusetts', 99732);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (40, 3, 'Hettinger Crescent', 'Lottieshire', 'Michigan', 9027);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (41, 1, 'Watsica Haven', 'Nicolasmouth', 'Utah', 54644);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (42, 5, 'Hudson Divide', 'Fritzmouth', 'WestVirginia', 81908);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (43, 4, 'Senger Terrace', 'Melodystad', 'Maryland', 63316);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (44, 4, 'Tillman Locks', 'Port Tracey', 'Oklahoma', 22545);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (45, 3, 'Dooley Route', 'New Monserrate', 'Indiana', 55333);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (46, 6, 'Sporer Mountain', 'Lake Marshallberg', 'Minnesota', 8423);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (47, 4, 'Litzy Cliffs', 'Port Carolineville', 'Pennsylvania', 48869);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (48, 4, 'Kuhic Gardens', 'Schultzport', 'Alaska', 61354);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (49, 8, 'Darrel Neck', 'New Kory', 'Wisconsin', 70126);
INSERT INTO `Customer_Delivery_Address` (`Customer_ID`, `House_no`, `Street_Name`, `City`, `State`, `Pin_Code`) VALUES (50, 6, 'Tia Greens', 'Zboncakhaven', 'Nebraska', 72225);


CREATE TABLE Orderr (
  Order_ID INT NOT NULL,
  Customer_ID INT NOT NULL,
  Product_Total FLOAT NOT NULL,
  Taxes FLOAT NOT NULL,
  Delivery_Fee FLOAT NOT NULL,
  Grand_Total FLOAT NOT NULL,
  Payment_Mode INT NOT NULL,
  PRIMARY KEY (Order_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Orderr
#

INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (1, 91, '758163', '788', '3220', '798989', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (2, 37, '209489', '6921', '8341', '587211', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (3, 34, '347873', '7235', '4617', '734627', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (4, 42, '213223', '4010', '6847', '460669', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (5, 27, '346715', '2795', '5369', '374361', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (6, 95, '852990', '7804', '5147', '463554', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (7, 30, '865729', '1987', '886', '331939', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (8, 83, '861791', '6082', '4765', '476438', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (9, 79, '823717', '6848', '4978', '380066', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (11, 30, '381213', '1975', '7322', '890813', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (12, 3, '383174', '1179', '5922', '116485', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (13, 65, '228008', '2160', '1606', '431818', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (14, 51, '964619', '5734', '723', '436115', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (15, 100, '261846', '9541', '5368', '242829', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (16, 67, '634602', '4095', '3911', '270355', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (17, 96, '127648', '9544', '8475', '923321', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (19, 19, '185879', '6276', '6847', '916687', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (20, 6, '348463', '9801', '8585', '304345', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (21, 70, '100553', '5985', '8201', '954421', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (22, 23, '305917', '1256', '9408', '969593', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (23, 55, '249489', '7439', '1541', '221687', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (24, 68, '853367', '2729', '3098', '781719', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (25, 66, '916686', '2204', '4476', '276110', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (26, 41, '805984', '8314', '7733', '573673', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (27, 23, '927074', '5715', '790', '899785', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (28, 49, '72043', '7168', '5847', '959245', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (29, 35, '207354', '7848', '5750', '211873', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (30, 93, '818474', '8300', '8497', '791983', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (31, 65, '344004', '4270', '9912', '118660', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (32, 84, '572041', '7837', '1978', '633910', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (33, 44, '252913', '2671', '4434', '359172', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (34, 59, '291680', '9051', '4315', '428012', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (35, 99, '612764', '2762', '4103', '197080', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (36, 24, '909247', '6740', '1135', '657140', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (37, 81, '733140', '4109', '4466', '980707', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (39, 5, '342876', '8946', '7705', '234135', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (40, 25, '449471', '2771', '3295', '979037', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (41, 18, '972053', '2264', '4971', '657021', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (42, 20, '454289', '5910', '5336', '219282', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (43, 20, '784385', '5909', '5483', '487761', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (44, 94, '896274', '6379', '2748', '541758', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (45, 78, '72642', '9017', '2615', '229128', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (46, 4, '159706', '6029', '239', '19710', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (47, 100, '799638', '9849', '7640', '609899', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (48, 49, '848439', '7070', '8930', '492865', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (49, 9, '961539', '6157', '5652', '367167', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (50, 72, '129566', '9390', '9260', '976486', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (51, 82, '357060', '112', '8911', '177856', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (52, 39, '472055', '1183', '994', '846314', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (53, 85, '85381', '6424', '1816', '638533', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (54, 51, '627444', '1047', '7957', '155141', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (55, 45, '133355', '7853', '9431', '825838', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (56, 68, '455992', '7700', '5075', '409965', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (57, 80, '330754', '8075', '6686', '673327', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (58, 32, '184705', '8225', '9424', '654277', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (59, 75, '52221', '3177', '9449', '615467', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (60, 83, '510169', '4705', '7437', '489504', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (61, 40, '210010', '7893', '2003', '647615', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (62, 28, '343024', '2058', '5119', '760671', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (63, 82, '456821', '7318', '233', '657737', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (64, 54, '273831', '990', '1780', '2621', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (65, 26, '109004', '2453', '8782', '581129', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (66, 71, '475280', '5182', '6707', '749807', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (67, 33, '794387', '8070', '217', '159370', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (68, 97, '467987', '2275', '4304', '404942', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (69, 17, '259895', '2343', '7347', '1049', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (70, 11, '175393', '8812', '9418', '873819', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (71, 47, '943737', '427', '96', '466147', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (72, 50, '603120', '2579', '9958', '64474', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (73, 89, '13658', '7501', '4451', '694332', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (74, 13, '244854', '683', '5884', '183407', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (75, 85, '672334', '1402', '5138', '457096', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (76, 84, '278292', '788', '5570', '584987', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (77, 44, '986761', '2602', '4302', '747238', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (78, 31, '750824', '1356', '3834', '66555', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (80, 10, '451821', '3115', '3179', '275623', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (81, 80, '89434', '9725', '8475', '907316', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (82, 55, '217050', '3028', '1825', '605104', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (84, 29, '684534', '9967', '7044', '241821', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (85, 1, '232012', '2840', '2596', '27608', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (87, 32, '842980', '5891', '3530', '491828', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (88, 36, '418969', '6337', '4258', '574417', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (89, 47, '573977', '6005', '1049', '103892', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (90, 4, '144841', '7940', '2029', '50597', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (91, 6, '769026', '3872', '6776', '635003', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (92, 91, '383704', '9401', '1525', '804801', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (93, 87, '145076', '7409', '5608', '220007', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (94, 26, '137125', '9814', '9785', '225296', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (95, 60, '618346', '2785', '4532', '717771', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (96, 54, '858020', '9271', '288', '475673', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (97, 63, '346664', '5902', '69', '843098', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (98, 13, '787844', '3590', '4135', '373451', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (99, 35, '573190', '2448', '2999', '676188', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (100, 8, '457013', '5678', '3712', '305885', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (101, 27, '513136', '6086', '4580', '196537', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (103, 58, '275999', '5230', '2652', '958501', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (104, 52, '249151', '3265', '9111', '511638', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (105, 22, '205710', '4752', '2774', '236977', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (106, 60, '8653', '7061', '8660', '341851', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (107, 86, '882632', '5143', '4926', '809257', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (108, 16, '277728', '5388', '5636', '698584', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (109, 74, '27911', '9050', '7292', '450371', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (110, 15, '32358', '8885', '2141', '242534', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (111, 61, '414866', '7614', '315', '123539', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (112, 19, '385595', '6820', '122', '196906', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (113, 5, '932298', '9461', '4999', '692058', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (114, 2, '890124', '6651', '6098', '42829', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (115, 74, '190378', '2370', '8704', '488284', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (116, 50, '734826', '1872', '7835', '560221', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (117, 2, '1344', '8298', '2720', '476455', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (118, 43, '398754', '7381', '8735', '691020', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (119, 62, '327589', '1228', '7580', '230203', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (120, 17, '153860', '488', '7730', '770711', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (121, 42, '239215', '5802', '2678', '535475', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (122, 86, '947485', '8472', '3888', '95459', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (123, 78, '267520', '8922', '7278', '719281', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (124, 56, '458984', '6062', '9877', '685832', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (125, 14, '713549', '3457', '9400', '608501', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (126, 92, '880027', '3299', '9624', '485197', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (127, 67, '958310', '4186', '4595', '305924', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (128, 7, '970127', '1753', '4147', '942294', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (129, 52, '201315', '7940', '3118', '614779', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (130, 63, '910852', '6927', '8496', '102619', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (131, 59, '126504', '8738', '7014', '858001', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (132, 16, '2363', '8692', '5063', '866950', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (133, 79, '574386', '9820', '3800', '78015', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (134, 98, '261203', '5763', '5088', '323537', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (135, 38, '619912', '6449', '2195', '613303', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (136, 3, '347518', '4286', '5118', '598426', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (137, 10, '814642', '5916', '3245', '563732', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (138, 94, '841876', '9597', '7681', '365927', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (139, 77, '530214', '55', '7743', '58157', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (140, 25, '728511', '6973', '9042', '115402', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (141, 1, '189117', '7228', '5691', '830742', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (142, 33, '542176', '5689', '5386', '149511', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (144, 18, '966209', '7235', '7320', '97172', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (145, 96, '3210', '9426', '215', '601611', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (146, 45, '771526', '7504', '8959', '367297', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (147, 9, '114526', '2588', '5531', '473493', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (148, 66, '569097', '6565', '8043', '181361', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (149, 56, '170542', '8913', '5073', '246118', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (150, 57, '459186', '8205', '1573', '261017', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (151, 81, '73679', '139', '7924', '637293', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (152, 88, '597044', '9548', '4199', '221749', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (153, 34, '585436', '541', '8368', '733519', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (154, 12, '561008', '8003', '746', '607747', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (155, 38, '123084', '9708', '9519', '77727', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (156, 46, '118557', '8394', '5219', '917988', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (157, 73, '646962', '8799', '2213', '56781', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (158, 28, '383329', '1446', '4546', '652496', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (159, 37, '182646', '7145', '5620', '12070', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (160, 48, '677742', '6710', '8023', '593705', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (161, 92, '553036', '1935', '6728', '593849', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (162, 99, '532810', '8730', '9418', '770101', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (163, 11, '160619', '9310', '7443', '861861', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (164, 12, '311964', '7407', '8959', '494243', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (165, 40, '647544', '3758', '6419', '713131', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (167, 71, '107934', '780', '7036', '36974', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (168, 76, '719046', '501', '787', '860584', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (169, 61, '596195', '6472', '3960', '378328', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (170, 70, '584872', '342', '3439', '592121', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (171, 8, '492304', '4476', '334', '620477', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (172, 73, '477266', '5146', '8829', '263767', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (173, 21, '751540', '2971', '232', '855970', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (175, 14, '920692', '9486', '5636', '698208', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (176, 98, '791687', '9846', '6426', '124078', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (177, 7, '497092', '1219', '8162', '914768', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (178, 22, '194384', '1167', '2302', '551755', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (179, 43, '352856', '600', '1049', '936941', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (180, 24, '704437', '5886', '6581', '218620', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (181, 29, '262684', '3601', '7811', '713271', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (182, 90, '776921', '8948', '2409', '90848', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (183, 39, '608780', '468', '5630', '59309', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (184, 58, '631710', '3702', '2723', '718906', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (185, 53, '390968', '1528', '2765', '668920', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (186, 64, '816848', '474', '2353', '738750', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (187, 64, '397509', '2649', '5763', '216450', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (188, 77, '570902', '2374', '4689', '259389', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (189, 36, '744218', '2939', '7556', '796720', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (190, 41, '629220', '6472', '4544', '801377', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (191, 87, '407589', '9347', '9006', '337739', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (192, 90, '26333', '5271', '8305', '721890', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (193, 76, '916431', '7713', '3056', '438197', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (194, 72, '819046', '2563', '8075', '58896', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (195, 48, '356337', '8362', '39', '720829', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (196, 21, '896932', '8052', '3231', '905936', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (197, 69, '122628', '645', '9865', '836207', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (198, 69, '740316', '7271', '6838', '790980', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (199, 62, '750348', '5847', '9680', '114919', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (200, 53, '616409', '58', '2368', '807687', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (201, 75, '604883', '2149', '2024', '999587', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (202, 97, '712871', '3502', '5783', '757690', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (203, 93, '885957', '2700', '7331', '406012', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (204, 31, '577122', '3327', '8862', '819194', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (205, 15, '733250', '1771', '933', '253470', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (206, 95, '748487', '5532', '2191', '250097', 1);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (207, 57, '666388', '8331', '705', '319818', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (208, 88, '188498', '3076', '2359', '356044', 2);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (209, 89, '705142', '7911', '7497', '230974', 0);
INSERT INTO `Orderr` (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (210, 46, '687442', '596', '1385', '239432', 0);



CREATE TABLE Customer_Past_Orderr (
    Customer_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orderr(Order_ID)
);

#
# TABLE STRUCTURE FOR: Customer_Past_Orderr
#

INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (1, 1);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (2, 2);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (3, 3);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (4, 4);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (5, 5);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (6, 6);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (7, 7);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (8, 8);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (9, 9);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (10, 11);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (11, 12);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (12, 13);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (13, 14);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (14, 15);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (15, 16);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (16, 17);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (17, 19);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (18, 20);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (19, 21);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (20, 22);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (21, 23);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (22, 24);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (23, 25);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (24, 26);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (25, 27);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (26, 28);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (27, 29);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (28, 30);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (29, 31);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (30, 32);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (31, 33);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (32, 34);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (33, 35);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (34, 36);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (35, 37);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (36, 39);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (37, 40);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (38, 41);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (39, 42);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (40, 43);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (41, 44);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (42, 45);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (43, 46);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (44, 47);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (45, 48);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (46, 49);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (47, 50);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (48, 51);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (49, 52);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (50, 53);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (51, 54);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (52, 55);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (53, 56);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (54, 57);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (55, 58);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (56, 59);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (57, 60);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (58, 61);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (59, 62);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (60, 63);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (61, 64);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (62, 65);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (63, 66);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (64, 67);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (65, 68);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (66, 69);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (67, 70);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (68, 71);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (69, 72);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (70, 73);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (71, 74);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (72, 75);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (73, 76);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (74, 77);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (75, 78);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (76, 80);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (77, 81);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (78, 82);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (79, 84);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (80, 85);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (81, 87);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (82, 88);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (83, 89);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (84, 90);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (85, 91);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (86, 92);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (87, 93);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (88, 94);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (89, 95);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (90, 96);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (91, 97);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (92, 98);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (93, 99);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (94, 100);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (95, 101);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (96, 103);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (97, 104);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (98, 105);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (99, 106);
INSERT INTO `Customer_Past_Orderr` (`Customer_ID`, `Order_ID`) VALUES (100, 107);


CREATE TABLE Customer_Past_Searches (
    Customer_ID INT NOT NULL,
    Search_String VARCHAR(255) NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Customer_Past_Searches
#

INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (1, 'Gryphon as if a dish or kettle had been all the jurors had a pencil that squeaked. This of course, I meant, the King replied. Here the other two were using it as she was saying, and the bright.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (2, 'Alice said to herself, and shouted out, Youd better not do that again! which produced another dead silence. Alice noticed with some difficulty, as it cant possibly make me grow larger, I can.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (3, 'Just then her head struck against the door, and the bright flower-beds and the cool fountains. CHAPTER VIII. The Queens argument was, that her shoulders were nowhere to be rude, so she went down to.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (4, 'CAN all that stuff, the Mock Turtles heavy sobs. Lastly, she pictured to herself how this same little sister of hers would, in the last few minutes, and she sat on, with closed eyes, and half.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (5, 'The Rabbit Sends in a great many more than three. Your hair wants cutting, said the King, unless it was her turn or not. So she set to work, and very soon finished off the cake. * * Come, my.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (6, 'The Panther took pie-crust, and gravy, and meat, While the Owl and the Hatter said, turning to the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (7, 'Dormouse, after thinking a minute or two she stood looking at it gloomily: then he dipped it into his cup of tea, and looked at it, and talking over its head. Very uncomfortable for the fan and the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (8, 'For instance, suppose it were white, but there was enough of it at last, they must needs come wriggling down from the time they had a door leading right into a line along the sea-shore-- Two.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (9, 'The jury all brightened up at the March Hare. He denies it, said the Dormouse, and repeated her question. Why did they draw the treacle from? You can draw water out of THIS! (Sounds of more.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (10, 'The Cats head began fading away the time. Alice had got so close to them, and all dripping wet, cross, and uncomfortable. The first witness was the Hatter. It isnt mine, said the King had said.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (11, 'So she was quite a large dish of tarts upon it: they looked so good, that it was very fond of pretending to be sure, this generally happens when one eats cake, but Alice had got its neck nicely.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (12, 'Duchesss voice died away, even in the wood, is to grow up again! Let me see: Ill give them a new idea to Alice, and she tried her best to climb up one of the e--e--evening, Beautiful, beautiful.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (13, 'CHAPTER V. Advice from a Caterpillar The Caterpillar was the BEST butter, the March Hare, that \"I like what I like\"! You might just as well. The twelve jurors were all turning into little cakes.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (14, 'The other guests had taken advantage of the bottle was NOT marked poison, so Alice ventured to say. What is it? Alice panted as she spoke. Alice did not like to show you! A little bright-eyed.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (15, 'He unfolded the paper as he fumbled over the jury-box with the strange creatures of her own courage. Its no use in the pool was getting so thin--and the twinkling of the e--e--evening, Beautiful,.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (16, 'Hatter. I deny it! said the Hatter; so I should have liked teaching it tricks very much, if--if Id only been the whiting, said the Dormouse: not in that poky little house, and have next to.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (17, 'Caterpillar. Alice folded her hands, and began:-- You are old, Father William, the young man said, And your hair has become very white; And yet I wish I hadnt gone down that rabbit-hole--and.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (18, 'Hatter: as the things between whiles. Then you should say what you had been all the time he was obliged to write this down on their backs was the Cat said, waving its tail when its angry, and.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (19, 'Alice, who felt very lonely and low-spirited. In a minute or two. They couldnt have done that? she thought. But everythings curious today. I think youd better finish the story for yourself..');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (20, 'Caterpillar took the regular course. What was that? inquired Alice. Reeling and Writhing, of course, Alice could see her after the candle is like after the candle is like after the rest of the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (21, 'Puss, she began, in a sort of lullaby to it as well say, added the Gryphon, half to itself, half to itself, Oh dear! Oh dear! Id nearly forgotten that Ive got to go down--Here, Bill! the master.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (22, 'Alice did not dare to laugh; and, as a lark, And will talk in contemptuous tones of her age knew the name of nearly everything there. Thats the first position in dancing. Alice said; theres a.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (23, 'So she set to work nibbling at the Caterpillars making such VERY short remarks, and she looked at Alice, and she went back for a few minutes, and she thought it must be the use of repeating all.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (24, 'And have grown most uncommonly fat; Yet you turned a corner, Oh my ears and whiskers, how late its getting! She was moving them about as much as she spoke--fancy CURTSEYING as youre falling.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (25, 'I dont believe it, said the Mock Turtle sang this, very slowly and sadly:-- \"Will you walk a little bit, and said No, never) --so you can have no answers. If you didnt sign it, said the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (26, 'Dont let me hear the Rabbit angrily. Here! Come and help me out of sight, they were getting extremely small for a moment like a star-fish, thought Alice. Ive so often read in the distance..');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (27, 'Alice, a little while, however, she went on, looking anxiously round to see if there are, nobody attends to them--and youve no idea what Latitude or Longitude either, but thought they were nice.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (28, 'I declare its too bad, that it was her dream:-- First, she tried to speak, and no room at all like the name: however, it only grinned when it grunted again, and all her knowledge of history, Alice.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (29, 'After these came the royal children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the words came very queer indeed:-- Tis the voice of the birds hurried off at.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (30, 'Hatter said, turning to Alice. Nothing, said Alice. Then it doesnt matter a bit, said the Lory. Alice replied in an impatient tone: explanations take such a nice soft thing to eat her up in a.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (31, 'Caterpillar. Well, I cant get out again. Suddenly she came upon a Gryphon, lying fast asleep in the pool a little queer, wont you? Not a bit, she thought it would, said the King. The next.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (32, 'CHAPTER X. The Lobster Quadrille is! No, indeed, said Alice. Im a--Im a-- Well! WHAT are you? And then a voice of the court. What do you mean \"purpose\"? said Alice. Ive so often read in.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (33, 'This is the use of repeating all that green stuff be? said Alice. Anything you like, said the King, and dont be nervous, or Ill have you got in your pocket? he went on planning to herself.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (34, 'Half-past one, time for dinner! (I only wish people knew that: then they wouldnt be in before the trials over! thought Alice. Now we shall have to fly; and the little dears came jumping.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (35, 'Lobster Quadrille The Mock Turtles Story You cant think how glad I am in the common way. So she was nine feet high. I wish the creatures wouldnt be so stingy about it, even if my head would go.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (36, 'Hatter. I deny it! said the March Hare said to herself Suppose it should be free of them at last, and managed to put his shoes on. --and just take his head sadly. Do I look like one, but it.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (37, 'King: leave out that part. Well, at any rate he might answer questions.--How am I then? Tell me that first, and then unrolled the parchment scroll, and read out from his book, Rule Forty-two..');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (38, 'Dodo had paused as if it makes me grow smaller, I can reach the key; and if I know I do! said Alice loudly. The idea of the wood for fear of their wits! So she set to partners-- --change.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (39, 'Has lasted the rest waited in silence. At last the Dodo had paused as if she had accidentally upset the week before. Oh, I beg your pardon! cried Alice (she was so small as this before, never! And.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (40, 'SOME change in my kitchen AT ALL. Soup does very well as she heard the Queen merely remarking that a moments pause. The only things in the night? Let me see: that would be QUITE as much as she went.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (41, 'Alice. Come on, then, said Alice, timidly; some of the window, and on it except a tiny golden key, and unlocking the door of the house of the ground. So she tucked it away under her arm, and.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (42, 'And she began fancying the sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very soon had to pinch it to make out which were the cook, to.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (43, 'The Queen turned crimson with fury, and, after folding his arms and frowning at the cook took the watch and looked at her, and she set the little dears came jumping merrily along hand in hand with.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (44, 'King and Queen of Hearts, who only bowed and smiled in reply. Idiot! said the Duchess, who seemed to have lessons to learn! Oh, I shouldnt want YOURS: I dont think, Alice went on, I must be.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (45, 'Ive tried hedges, the Pigeon went on, looking anxiously about her. Oh, do let me hear the words:-- I speak severely to my right size: the next verse, the Gryphon repeated impatiently: it.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (46, 'Alice, who always took a minute or two to think that will be When they take us up and bawled out, \"Hes murdering the time! Off with his knuckles. It was so much frightened that she hardly knew what.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (47, 'Gryphon remarked: because they lessen from day to day. This was not otherwise than what you like, said the King. Nothing whatever, said Alice. Then it wasnt very civil of you to death.\" You.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (48, 'Alice laughed so much at this, that she had never been in a confused way, Prizes! Prizes! Alice had never before seen a cat without a grin, thought Alice; only, as its asleep, I suppose youll.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (49, 'White Rabbit read out, at the proposal. Then the Dormouse began in a moment: she looked down at her hands, and began:-- You are not attending! said the King, and he says its so useful, its.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (50, 'And she squeezed herself up and down looking for the garden! and she felt certain it must be what he did it,) he did with the words dont FIT you, said the Queen, and take this child away with.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (51, 'Prizes! Alice had been anything near the centre of the jurors were all locked; and when she was dozing off, and she went on, Whats your name, child? My name is Alice, so please your Majesty,.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (52, 'Mock Turtle, but if they do, why then theyre a kind of rule, and vinegar that makes the matter on, What would become of me? Theyre dreadfully fond of pretending to be full of smoke from one end.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (53, 'Alice, as she picked her way into a graceful zigzag, and was going to shrink any further: she felt that it was looking at them with one of the cattle in the sea. But they HAVE their tails in their.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (54, 'Alice felt a little nervous about it while the rest of the crowd below, and there stood the Queen had only one who got any advantage from the Gryphon, and all sorts of things, and she, oh! she knows.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (55, 'I beat him when he pleases! CHORUS. Wow! wow! wow! Here! you may stand down, continued the Pigeon, but in a tone of delight, which changed into alarm in another minute there was the King; and.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (56, 'I should say \"With what porpoise?\" Dont you mean that you think youre changed, do you? Im afraid I dont keep the same as they used to queer things happening. While she was quite tired and.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (57, 'So she tucked her arm affectionately into Alices, and they repeated their arguments to her, though, as they all cheered. Alice thought to herself. (Alice had been looking at it uneasily, shaking it.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (58, 'Cat, and vanished. Alice was very nearly in the same thing with you, said the Dormouse, who seemed ready to make out what it was: she was now, and she tried to curtsey as she could do to hold it..');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (59, 'The judge, by the prisoner to--to somebody. It must have prizes. But who is to France-- Then turn not pale, beloved snail, but come and join the dance. So they sat down a good many little girls.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (60, 'Which way?, holding her hand on the glass table and the turtles all advance! They are waiting on the top of it. Presently the Rabbit began. Alice thought the poor little thing grunted in reply (it.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (61, 'Bill, she gave a sudden leap out of a tree a few yards off. The Cat only grinned when it grunted again, so violently, that she began fancying the sort of use in waiting by the officers of the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (62, 'VERY wide, but she heard a little shriek and a crash of broken glass, from which she had a vague sort of lullaby to it in with a deep sigh, I was a large flower-pot that stood near the centre of.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (63, 'Mabel, for I know all sorts of little cartwheels, and the moon, and memory, and muchness--you know you say things are worse than ever, thought the poor little thing howled so, that Alice had learnt.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (64, 'Alice was beginning very angrily, but the Hatter and the baby at her hands, wondering if anything would EVER happen in a rather offended tone, so I cant put it right; not that it was impossible.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (65, 'Mock Turtle went on again: Twenty-four hours, I THINK; or is it twelve? I-- Oh, dont bother ME, said Alice in a trembling voice, Let us get to the Caterpillar, and the sound of a sea of green.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (66, 'Lizards slate-pencil, and the other guinea-pig cheered, and was coming to, but it all seemed quite natural); but when the Rabbit hastily interrupted. Theres a great thistle, to keep herself from.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (67, 'Alice. Ive read that in about half no time! Take your choice! The Duchess took her choice, and was beating her violently with its arms folded, quietly smoking a long hookah, and taking not the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (68, 'King had said that day. A likely story indeed! said the Dormouse; --well in. This answer so confused poor Alice, and she was holding, and she at once set to work, and very angrily. A knot!.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (69, 'VERY nearly at the stick, and held out its arms folded, frowning like a snout than a rat-hole: she knelt down and looked at the Mouses tail; but why do you know what it was: she was shrinking.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (70, 'Footman remarked, till tomorrow-- At this moment Alice felt a little startled by seeing the Cheshire Cat, she was walking hand in hand with Dinah, and saying to herself Thats quite enough--I.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (71, 'Rabbit in a court of justice before, but she thought it would, said the Pigeon; but if they do, why then theyre a kind of sob, Ive tried the little passage: and THEN--she found herself at last.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (72, 'Alice! when she found she could not think of any good reason, and as Alice could think of any use, now, thought Alice, theyre sure to happen, she said aloud. I shall sit here, he said, turning.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (73, 'Seaography: then Drawling--the Drawling-master was an old crab, HE was. I never heard of uglifying! it exclaimed. You know what theyre about! Read them, said the Queen, stamping on the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (74, 'Alice rather unwillingly took the hookah into its face to see what the flame of a candle is blown out, for she had not attended to this mouse? Everything is so out-of-the-way down here, and Im I,.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (75, 'I see\"! You might just as the question was evidently meant for her. Yes! shouted Alice. Come on, then, said the Duchess: flamingoes and mustard both bite. And the Gryphon repeated.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (76, 'Alice; its laid for a long breath, and till the puppys bark sounded quite faint in the sea, though you maynt believe it-- I never saw one, or heard of uglifying! it exclaimed. You know what.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (77, 'Queen, who were lying round the thistle again; then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision. I never could abide figures! And with that she ought.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (78, 'Gryphon, sighing in his confusion he bit a large dish of tarts upon it: they looked so grave and anxious.) Alice could think of any good reason, and as the question was evidently meant for her..');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (79, 'The hedgehog was engaged in a great deal to come yet, please your Majesty, the Hatter began, in a tone of this ointment--one shilling the box-- Allow me to him: She gave me a good deal until she.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (80, 'Hatter instead! CHAPTER VII. A Mad Tea-Party There was a child, said the King, with an important air, are you all ready? This is the capital of Paris, and Paris is the same words as before, Its.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (81, 'Alice with one eye, How the Owl and the other side. The further off from England the nearer is to do it! Oh dear! I wish you could draw treacle out of the miserable Mock Turtle. She cant explain.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (82, 'Alice as he said in a large mustard-mine near here. And the moral of that is--\"The more there is of finding morals in things! Alice thought she might as well as she could. The games going on.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (83, 'Alice, looking down at them, and itll sit up and leave the room, when her eye fell on a crimson velvet cushion; and, last of all her life. Indeed, she had read about them in books, and she sat down.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (84, 'Pigeon; but I know I have ordered; and she hurried out of the month, and doesnt tell what oclock it is! Why should it? muttered the Hatter. I told you that. If Id been the whiting, said.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (85, 'The three soldiers wandered about for some time without hearing anything more: at last came a little shaking among the trees, a little timidly: but its no use now, thought poor Alice, it would.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (86, 'YET, she said to herself Its the Cheshire Cat: now I shall ever see such a nice little dog near our house I should think! (Dinah was the Cat said, waving its tail about in all directions, just.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (87, 'Gryphon, that they WOULD not remember ever having seen such a thing as \"I eat what I see\"! You might just as if he were trying which word sounded best. Some of the bread-and-butter. Just at this.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (88, 'Queen, but she did not quite sure whether it was the White Rabbit hurried by--the frightened Mouse splashed his way through the little door about fifteen inches high: she tried her best to climb up.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (89, 'Im sure I cant see you? She was walking hand in hand with Dinah, and saying \"Come up again, dear!\" I shall only look up in great disgust, and walked two and two, as the White Rabbit cried out,.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (90, 'King triumphantly, pointing to the fifth bend, I think? he said in a long, low hall, which was lit up by a very grave voice, until all the time she had a consultation about this, and Alice thought.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (91, 'Mock Turtle, capering wildly about. Change lobsters again! yelled the Gryphon replied very readily: but thats because it stays the same tone, exactly as if his heart would break. She pitied him.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (92, 'Caterpillar took the watch and looked at her as she went down on their faces, and the Gryphon went on, Whats your name, child? My name is Alice, so please your Majesty, the Hatter with a large.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (93, 'Mock Turtle. She cant explain it, said Alice a good deal worse off than before, as the Rabbit, and had come back and see how the Dodo suddenly called out The race is over! and they lived at the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (94, 'Alice began to cry again, for this curious child was very like a wild beast, screamed Off with her head was so large in the wood, is to grow up any more questions about it, you know. Alice had.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (95, 'And yesterday things went on planning to herself Thats quite enough--I hope I shant go, at any rate, the Dormouse said-- the Hatter was out of its right paw round, lives a Hatter: and in THAT.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (96, 'Caterpillar took the thimble, looking as solemn as she could not possibly reach it: she could not remember the simple rules their friends had taught them: such as, that a moments pause. The only.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (97, 'King: leave out that the meeting adjourn, for the baby, and not to lie down upon their faces, and the whole party swam to the voice of the tail, and ending with the day and night! You see the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (98, 'I sleep\" is the same words as before, and things are \"much of a tree in the distance. And yet what a Mock Turtle at last, with a T! said the Gryphon. Then, you know, said the Duchess, who.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (99, 'WAS no one to listen to me! ILL soon make you dry enough! They all sat down again very sadly and quietly, and looked at Two. Two began in a day is very confusing. It isnt, said the youth, as.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (100, 'He sent them word I had our Dinah here, I know I do! said Alice to find my way into that beautiful garden--how IS that to be no chance of her age knew the meaning of it at all. But perhaps he.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (1, 'Gryphon. --you advance twice-- Each with a sigh: its always tea-time, and weve no time shed have everybody executed, all round. But she must have been changed for any of them. However, on.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (2, 'Mock Turtle. No, no! The adventures first, said the Hatter. You might just as if nothing had happened. How am I then? Tell me that first, and then Alice put down her anger as well look and see.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (3, 'Hatter, it woke up again as she could, for the garden! and she very good-naturedly began hunting about for it, he was going off into a tidy little room with a knife, it usually bleeds; and she told.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (4, 'I gave her one, they gave him two, You gave us three or more; They all made a memorandum of the legs of the Queens hedgehog just now, only it ran away when it saw Alice. It looked good-natured, she.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (5, 'Turtle. These words were followed by a row of lodging houses, and behind them a new idea to Alice, that she was saying, and the March Hare. Sixteenth, added the March Hare was said to herself,.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (6, 'Then it got down off the subjects on his slate with one eye; but to open them again, and Alice rather unwillingly took the hookah into its mouth open, gazing up into the earth. Let me think: was I.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (7, 'I wonder if Ive been changed for Mabel! Ill try and say \"Who am I to get in? There might be hungry, in which you usually see Shakespeare, in the pool of tears which she found she could see, as.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (8, 'I learn music. Ah! that accounts for it, said Alice, quite forgetting in the flurry of the words DRINK ME, but nevertheless she uncorked it and put back into the teapot. At any rate Ill never.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (9, 'I dont think, Alice went on eagerly: There is such a pleasant temper, and thought to herself, if one only knew how to get hold of anything, but she had tired herself out with his head! she.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (10, 'The Caterpillar was the Hatter. He wont stand beating. Now, if you want to get her head to hide a smile: some of the other players, and shouting Off with his nose Trims his belt and his buttons,.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (11, 'I dont believe you do lessons? said Alice, feeling very glad that it was perfectly round, she came upon a time she saw in another moment, when she found herself in the distance. Come on! cried.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (12, 'The Mouse looked at it gloomily: then he dipped it into one of the song. What trial is it? The Gryphon sat up and said, without even looking round. Ill fetch the executioner ran wildly up and.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (13, 'I hadnt to bring but one; Bills got to the whiting, said Alice, as she had forgotten the little creature down, and felt quite relieved to see you again, you dear old thing! said the King. I.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (14, 'Alice herself, and once again the tiny hands were clasped upon her arm, with its wings. Serpent! screamed the Queen. Never! said the Queen, but she felt that it would be only rustling in the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (15, 'Mouses tail; but why do you want to go! Let me see: four times seven is--oh dear! I shall never get to the baby, and not to lie down upon her: she gave one sharp kick, and waited to see some.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (16, 'I suppose? said Alice. And where HAVE my shoulders got to? And oh, my poor little thing was snorting like a frog; and both creatures hid their faces in their mouths--and theyre all over crumbs..');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (17, 'Tortoise because he was gone, and the reason and all would change to tinkling sheep-bells, and the baby at her as hard as it settled down again into its face to see that queer little toss of her.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (18, 'Like a tea-tray in the distance, screaming with passion. She had quite forgotten the words. So they got settled down again in a sorrowful tone; at least theres no use their putting their heads.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (19, 'Alice did not sneeze, were the cook, to see if she did not like to have lessons to learn! No, Ive made up my mind about it; and the words DRINK ME beautifully printed on it were white, but there.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (20, 'Knave of Hearts, he stole those tarts, And took them quite away! Consider your verdict, the King triumphantly, pointing to Alice again. No, I give it up, Alice replied: whats the answer? I.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (21, 'Latitude or Longitude Ive got back to the dance. Would not, could not, would not, could not, could not, could not, could not, would not, could not, would not join the dance? Will you, wont you,.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (22, 'Alice. Why, there they lay sprawling about, reminding her very much what would happen next. Its--its a very small cake, on which the March Hare interrupted in a deep voice, are done with a kind.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (23, 'Alice replied very readily: but thats because it stays the same size: to be rude, so she set to partners-- --change lobsters, and retire in same order, continued the Pigeon, raising its voice.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (24, 'And beat him when he sneezes; For he can thoroughly enjoy The pepper when he sneezes; For he can EVEN finish, if he wasnt one? Alice asked. The Hatter was the Duchesss knee, while plates and.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (25, 'Thats all. Thank you, said the Queen, but she could not think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the Hatter. Nor I, said the Dodo solemnly, rising to.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (26, 'There seemed to follow, except a tiny golden key, and when Alice had been jumping about like mad things all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was just going to say,.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (27, 'That your eye was as much as she picked her way out. I shall sit here, he said, on and off, for days and days. But what happens when you have to turn into a sort of way to change the subject,.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (28, 'Then it got down off the subjects on his flappers, --Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old Turtle--we used to know. Let me see--how IS it to.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (29, 'EVEN finish, if he wasnt going to leave it behind? She said this last word with such sudden violence that Alice quite jumped; but she could not be denied, so she tried to curtsey as she swam.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (30, 'Ill kick you down stairs! That is not said right, said the young Crab, a little scream of laughter. Oh, hush! the Rabbit began. Alice gave a little girl shell think me for a moment like a.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (31, 'Alice felt a little nervous about it just at first, perhaps, said the Caterpillar decidedly, and the procession came opposite to Alice, Have you seen the Mock Turtle: why, if a dish or kettle had.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (32, 'Lizard as she could not tell whether they were all ornamented with hearts. Next came the royal children; there were a Duck and a great hurry, muttering to himself as he wore his crown over the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (33, 'Knave, I didnt know that youre mad? To begin with, said the Queen, Really, my dear, and that in some alarm. This time there were no tears. If youre going to remark myself. Have you.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (34, 'Footman remarked, till tomorrow-- At this moment Five, who had been found and handed back to the Gryphon. How the creatures argue. Its enough to get rather sleepy, and went down to the Knave..');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (35, 'I suppose? said Alice. Why? IT DOES THE BOOTS AND SHOES. the Gryphon replied rather impatiently: any shrimp could have been changed in the sky. Twinkle, twinkle--\" Here the other birds.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (36, 'After a while she was small enough to try the first position in dancing. Alice said; but was dreadfully puzzled by the soldiers, who of course you dont! the Hatter said, turning to Alice with one.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (37, 'Where CAN I have ordered; and she thought to herself Now I can listen all day about it! and he checked himself suddenly: the others all joined in chorus, Yes, please do! but the cook was.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (38, 'I suppose, by being drowned in my own tears! That WILL be a great interest in questions of eating and drinking. They lived on treacle, said the cook. Treacle, said a sleepy voice behind her..');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (39, 'Why, theres hardly room to open it; but, as the March Hare, that \"I like what I used to come yet, please your Majesty? he asked. Begin at the other, looking uneasily at the Hatter, it woke up.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (40, 'The players all played at once in her hand, and made believe to worry it; then Alice put down her flamingo, and began smoking again. This time there were three little sisters, the Dormouse denied.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (41, 'Alice remained looking thoughtfully at the door-- Pray, what is the capital of Paris, and Paris is the driest thing I ever heard! Yes, I think I may as well go in at the bottom of a well? Take.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (42, 'Queen said to herself, to be going messages for a minute or two sobs choked his voice. Same as if it thought that she was beginning to grow up again! Let me see--how IS it to the Classics master,.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (43, 'I will tell you more than that, if you were down here till Im somebody else\"--but, oh dear! cried Alice, quite forgetting that she began nursing her child again, singing a sort of thing that would.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (44, 'Alice and all of you, and listen to her, if we had the best of educations--in fact, we went to the Gryphon. Turn a somersault in the book, said the Mock Turtle. And how did you manage on the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (45, 'Alice and all would change to tinkling sheep-bells, and the whole cause, and condemn you to offer it, said Alice. Why, there they lay on the floor, as it went. So she called softly after it, never.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (46, 'Alice noticed, had powdered hair that curled all over crumbs. Youre wrong about the whiting! Oh, as to go with Edgar Atheling to meet William and offer him the crown. Williams conduct at first.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (47, 'King; and the happy summer days. THE.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (48, 'The first question of course was, how to speak with. Alice waited till she had accidentally upset the milk-jug into his plate. Alice did not seem to be\"--or if youd rather not. We indeed! cried.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (49, 'After a while, finding that nothing more happened, she decided on going into the air off all its feet at the bottom of a tree in front of the country is, you ARE a simpleton. Alice did not come the.');
INSERT INTO `Customer_Past_Searches` (`Customer_ID`, `Search_String`) VALUES (50, 'She had already heard her sentence three of the shepherd boy--and the sneeze of the teacups as the whole window! Sure, it does, yer honour: but its an arm for all that. With extras? asked the.');



CREATE TABLE Product (
  Product_ID INT AUTO_INCREMENT NOT NULL,
  pName varchar(255) NOT NULL,
  Base_Price FLOAT NOT NULL,
  Discount_Percentage INT DEFAULT NULL,
  Available_Stock INT NOT NULL,
  Avg_Delivery_Time datetime DEFAULT NULL,
  Product_Rating FLOAT DEFAULT NULL,
  PRIMARY KEY (Product_ID)
);

#
# TABLE STRUCTURE FOR: Product
#

INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (1, 'in', '51490200', 32, 244, '2023-01-14 08:25:47', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (2, 'eveniet', '66502100', 16, 9, '2023-01-29 22:33:55', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (3, 'aperiam', '72321200', 39, 495, '2023-02-08 16:56:34', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (4, 'ut', '19255600', 2, 495, '2023-01-27 09:26:32', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (5, 'dolores', '67807100', 18, 295, '2023-01-16 01:13:34', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (6, 'sapiente', '57790000', 63, 306, '2023-01-31 21:27:32', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (7, 'expedita', '5949260', 15, 251, '2023-02-03 14:33:17', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (8, 'sed', '20744200', 63, 356, '2023-01-14 08:35:24', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (9, 'accusantium', '27973200', 21, 376, '2023-01-16 17:01:27', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (10, 'possimus', '69314700', 5, 416, '2023-01-24 13:59:25', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (11, 'commodi', '96468100', 29, 126, '2023-02-03 20:09:20', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (12, 'quia', '79854700', 30, 252, '2023-02-10 10:38:39', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (13, 'animi', '98990500', 44, 305, '2023-01-27 08:07:28', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (14, 'qui', '99270700', 1, 130, '2023-02-09 19:57:13', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (15, 'eum', '76555000', 12, 61, '2023-02-09 16:12:35', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (16, 'sit', '74506800', 45, 155, '2023-01-19 20:22:42', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (17, 'ipsum', '74579200', 71, 314, '2023-01-21 19:26:55', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (18, 'quia', '8533850', 64, 215, '2023-02-08 04:21:39', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (19, 'corrupti', '74391600', 18, 214, '2023-01-19 07:39:33', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (20, 'tenetur', '97789000', 8, 465, '2023-01-12 23:46:27', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (21, 'aperiam', '26360800', 19, 369, '2023-02-04 04:12:23', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (22, 'labore', '42995600', 70, 328, '2023-01-12 21:35:12', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (23, 'et', '7564650', 3, 19, '2023-01-26 14:40:23', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (24, 'ex', '95190200', 43, 203, '2023-01-24 11:38:30', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (25, 'repellat', '22233500', 59, 302, '2023-02-05 11:36:46', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (26, 'odit', '79644200', 0, 153, '2023-01-22 03:18:55', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (27, 'placeat', '98873100', 1, 124, '2023-02-08 22:02:18', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (28, 'repellat', '63390100', 60, 140, '2023-02-03 17:50:04', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (29, 'soluta', '13921700', 61, 407, '2023-01-19 09:16:23', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (30, 'deleniti', '37666500', 20, 20, '2023-01-11 17:38:52', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (31, 'sit', '51578100', 22, 208, '2023-01-22 09:44:39', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (32, 'assumenda', '3061210', 8, 485, '2023-02-07 17:09:02', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (33, 'nulla', '69773200', 24, 460, '2023-01-20 01:39:41', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (34, 'sed', '93703200', 66, 365, '2023-02-05 18:19:04', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (35, 'autem', '99556000', 56, 194, '2023-02-09 06:19:13', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (36, 'a', '596293', 21, 293, '2023-01-15 18:20:42', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (37, 'iure', '54222', 27, 118, '2023-02-01 08:43:12', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (38, 'corporis', '46114600', 66, 255, '2023-01-10 17:41:09', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (39, 'vero', '3312130', 24, 460, '2023-01-29 01:07:50', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (40, 'temporibus', '15676900', 1, 95, '2023-01-13 20:22:41', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (41, 'qui', '40868200', 62, 497, '2023-01-18 03:12:19', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (42, 'odit', '74242500', 5, 160, '2023-02-07 07:04:06', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (43, 'cupiditate', '98439800', 71, 388, '2023-01-10 16:06:29', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (44, 'quibusdam', '97834900', 56, 461, '2023-02-07 11:14:24', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (45, 'magnam', '23306100', 40, 400, '2023-01-25 00:55:08', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (46, 'similique', '60180200', 13, 320, '2023-01-23 21:26:32', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (47, 'in', '94803800', 59, 203, '2023-02-07 05:41:18', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (48, 'voluptas', '31695700', 34, 377, '2023-01-24 22:08:23', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (49, 'dignissimos', '24111600', 70, 345, '2023-01-21 09:56:01', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (50, 'recusandae', '68132000', 42, 264, '2023-01-11 17:35:13', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (51, 'nam', '78065900', 51, 220, '2023-01-12 09:19:11', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (52, 'debitis', '65347000', 21, 52, '2023-02-05 09:32:34', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (53, 'sit', '4929420', 1, 233, '2023-02-05 10:02:30', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (54, 'quisquam', '67096200', 36, 65, '2023-01-27 16:48:16', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (55, 'ipsa', '52025400', 65, 198, '2023-02-01 12:04:05', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (56, 'qui', '26046600', 62, 110, '2023-02-05 22:54:09', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (57, 'qui', '2985340', 13, 71, '2023-01-21 22:06:46', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (58, 'odit', '49210500', 55, 218, '2023-01-20 01:18:15', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (59, 'quaerat', '17604800', 34, 241, '2023-01-22 00:09:11', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (60, 'molestiae', '36687400', 4, 10, '2023-01-29 19:57:03', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (61, 'non', '978674', 36, 164, '2023-02-04 10:22:40', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (62, 'ipsa', '58734600', 20, 113, '2023-02-07 19:06:39', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (63, 'incidunt', '2253860', 58, 124, '2023-01-15 04:45:58', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (64, 'aliquid', '68915400', 57, 104, '2023-02-07 10:03:33', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (65, 'est', '27258500', 55, 339, '2023-02-06 14:29:37', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (66, 'accusantium', '52182900', 62, 182, '2023-01-26 09:50:46', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (67, 'dignissimos', '62406900', 28, 94, '2023-01-25 03:55:26', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (68, 'ut', '4866910', 46, 40, '2023-01-27 02:51:50', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (69, 'architecto', '24478600', 30, 289, '2023-01-30 14:02:55', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (70, 'suscipit', '77448300', 55, 54, '2023-01-24 21:06:26', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (71, 'sit', '91178400', 16, 436, '2023-02-06 23:08:33', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (72, 'odit', '80032900', 38, 366, '2023-02-05 02:29:51', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (73, 'doloremque', '62676200', 51, 346, '2023-02-03 14:07:49', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (74, 'sint', '65736200', 75, 250, '2023-01-19 14:46:50', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (75, 'ut', '96047900', 59, 49, '2023-01-22 20:39:40', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (76, 'consectetur', '25256200', 61, 498, '2023-01-13 10:09:51', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (77, 'ipsam', '7485900', 57, 343, '2023-01-18 12:51:21', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (78, 'consequatur', '47353500', 9, 356, '2023-02-01 19:25:52', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (79, 'et', '90723500', 2, 334, '2023-01-20 19:47:33', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (80, 'totam', '21511300', 7, 446, '2023-01-31 06:15:33', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (81, 'inventore', '11650700', 9, 33, '2023-02-06 07:45:21', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (82, 'suscipit', '49239300', 45, 111, '2023-02-09 23:20:52', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (83, 'quos', '89501000', 33, 431, '2023-01-12 22:41:49', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (84, 'qui', '51467400', 72, 212, '2023-01-28 07:42:02', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (85, 'voluptatem', '52225100', 44, 459, '2023-01-11 12:48:10', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (86, 'repudiandae', '42881900', 60, 463, '2023-01-15 06:41:35', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (87, 'quod', '62643100', 14, 437, '2023-01-13 07:15:44', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (88, 'quis', '34331000', 37, 13, '2023-01-15 06:03:42', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (89, 'ut', '5610140', 4, 393, '2023-01-18 19:59:59', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (90, 'neque', '83701300', 7, 180, '2023-02-06 09:41:51', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (91, 'consectetur', '14404200', 7, 56, '2023-01-13 05:04:54', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (92, 'omnis', '74891100', 19, 213, '2023-01-20 09:26:41', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (93, 'aut', '49392700', 71, 14, '2023-01-22 11:58:24', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (94, 'praesentium', '49408000', 54, 42, '2023-01-11 05:56:34', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (95, 'qui', '10473800', 28, 75, '2023-01-11 06:21:03', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (96, 'minima', '46326000', 26, 391, '2023-01-29 12:52:10', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (97, 'aut', '32315600', 62, 271, '2023-01-16 09:33:34', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (98, 'ut', '23560200', 11, 140, '2023-01-16 12:21:19', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (99, 'id', '25212100', 66, 246, '2023-01-21 16:25:18', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (100, 'autem', '37211300', 57, 397, '2023-02-04 22:41:54', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (101, 'explicabo', '16091000', 52, 201, '2023-01-25 20:37:16', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (102, 'eaque', '20274400', 66, 423, '2023-01-31 18:48:59', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (103, 'facere', '21579400', 15, 498, '2023-01-17 16:15:47', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (104, 'id', '73789700', 20, 353, '2023-01-13 04:34:53', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (105, 'libero', '15320300', 6, 277, '2023-02-03 11:18:51', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (106, 'atque', '65676600', 53, 50, '2023-02-05 10:19:41', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (107, 'molestias', '56521500', 46, 87, '2023-01-22 20:34:04', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (108, 'dicta', '1403650', 11, 88, '2023-01-20 00:42:13', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (109, 'ea', '35639800', 0, 219, '2023-01-30 21:11:47', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (110, 'itaque', '39264600', 25, 385, '2023-02-04 21:34:47', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (111, 'aut', '41243300', 54, 187, '2023-01-19 04:46:43', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (112, 'architecto', '1269010', 45, 239, '2023-02-06 16:11:46', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (113, 'delectus', '49422000', 24, 258, '2023-01-18 08:59:08', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (114, 'eveniet', '2076600', 31, 113, '2023-01-20 14:21:03', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (115, 'odio', '87034600', 37, 323, '2023-02-05 18:10:26', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (116, 'voluptatem', '48148900', 63, 284, '2023-02-06 20:14:45', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (117, 'porro', '81028900', 26, 50, '2023-02-07 23:54:47', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (118, 'odit', '23882500', 20, 441, '2023-01-11 15:47:00', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (119, 'vero', '9414590', 56, 459, '2023-01-19 01:26:45', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (120, 'fugiat', '87524500', 75, 225, '2023-02-05 09:20:33', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (121, 'dolorem', '66087600', 14, 444, '2023-01-15 14:54:08', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (122, 'aperiam', '5050260', 55, 176, '2023-01-17 23:09:15', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (123, 'repudiandae', '24588800', 1, 484, '2023-01-21 15:51:07', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (124, 'suscipit', '7759670', 36, 369, '2023-01-26 21:34:00', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (125, 'sint', '32165400', 71, 489, '2023-02-04 16:45:13', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (126, 'id', '6398140', 67, 43, '2023-02-01 13:16:57', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (127, 'dolorem', '97297900', 22, 429, '2023-01-17 11:37:53', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (128, 'quis', '16918300', 64, 272, '2023-02-04 03:54:35', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (129, 'omnis', '19139600', 14, 42, '2023-01-16 06:38:38', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (130, 'sapiente', '77085800', 36, 285, '2023-02-02 19:53:34', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (131, 'laborum', '20489300', 25, 456, '2023-01-19 12:16:34', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (132, 'velit', '52509200', 40, 55, '2023-01-17 20:21:01', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (133, 'necessitatibus', '13435600', 0, 472, '2023-02-02 16:47:38', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (134, 'tempore', '74115200', 42, 96, '2023-01-17 01:29:41', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (135, 'harum', '73090300', 41, 99, '2023-01-26 08:11:17', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (136, 'sed', '18684400', 28, 492, '2023-01-31 15:40:08', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (137, 'ipsum', '98412800', 14, 185, '2023-02-01 09:29:32', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (138, 'nam', '50241000', 24, 325, '2023-01-11 20:58:01', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (139, 'sapiente', '83569500', 38, 348, '2023-01-15 10:59:42', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (140, 'corporis', '40984300', 54, 427, '2023-02-03 14:20:16', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (141, 'et', '11490600', 40, 399, '2023-01-19 11:07:57', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (142, 'itaque', '702326', 18, 222, '2023-02-01 02:03:10', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (143, 'molestiae', '74688700', 41, 48, '2023-01-25 15:35:22', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (144, 'fugiat', '30120100', 60, 434, '2023-01-31 17:10:32', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (145, 'natus', '32344500', 28, 113, '2023-01-23 21:06:58', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (146, 'facilis', '44731400', 16, 168, '2023-01-27 13:41:37', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (147, 'eius', '47554000', 46, 68, '2023-01-12 08:55:29', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (148, 'voluptas', '57396700', 6, 183, '2023-01-21 05:24:30', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (149, 'vel', '34546100', 24, 70, '2023-01-28 15:56:20', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (150, 'esse', '1333690', 59, 76, '2023-01-29 18:47:33', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (151, 'non', '85199900', 24, 304, '2023-01-11 07:56:59', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (152, 'blanditiis', '29402200', 44, 436, '2023-02-03 00:51:40', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (153, 'nobis', '88339900', 17, 266, '2023-01-21 15:08:10', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (154, 'qui', '37813500', 47, 296, '2023-02-04 18:41:53', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (155, 'consequuntur', '69121100', 5, 61, '2023-01-27 17:39:56', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (156, 'quia', '64429000', 35, 44, '2023-01-24 14:42:42', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (157, 'qui', '31628700', 15, 305, '2023-02-02 20:19:08', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (158, 'dolore', '62171300', 67, 228, '2023-01-26 03:51:03', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (159, 'maxime', '38376800', 60, 96, '2023-02-05 15:25:55', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (160, 'ducimus', '92522200', 27, 497, '2023-01-13 12:54:00', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (161, 'consequuntur', '38890700', 64, 172, '2023-01-24 17:38:25', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (162, 'consequatur', '57030500', 9, 251, '2023-01-20 16:39:01', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (163, 'maxime', '56712200', 65, 282, '2023-01-27 05:48:57', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (164, 'commodi', '91320800', 16, 171, '2023-01-19 20:50:25', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (165, 'et', '82531800', 30, 136, '2023-01-23 01:15:37', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (166, 'ab', '86878200', 74, 113, '2023-01-19 21:44:58', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (167, 'maxime', '99228300', 3, 261, '2023-01-17 13:18:10', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (168, 'natus', '66643800', 44, 213, '2023-01-23 03:46:19', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (169, 'modi', '13897400', 37, 147, '2023-01-19 20:18:44', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (170, 'in', '37954300', 30, 270, '2023-01-27 16:36:12', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (171, 'consectetur', '85699100', 36, 421, '2023-01-16 05:08:35', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (172, 'rerum', '66637100', 27, 308, '2023-01-21 03:05:15', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (173, 'velit', '80477300', 8, 327, '2023-01-17 14:51:54', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (174, 'magnam', '30970300', 55, 66, '2023-01-31 11:45:11', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (175, 'rerum', '75740300', 37, 340, '2023-01-25 13:32:19', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (176, 'sit', '16274500', 38, 400, '2023-01-23 12:43:28', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (177, 'qui', '65201400', 48, 202, '2023-02-08 14:57:24', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (178, 'ut', '77803000', 7, 335, '2023-01-22 20:47:06', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (179, 'et', '47721500', 53, 293, '2023-02-05 09:17:49', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (180, 'nulla', '9511380', 22, 358, '2023-02-01 12:50:06', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (181, 'occaecati', '55295700', 59, 190, '2023-02-09 12:58:54', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (182, 'ullam', '50814700', 8, 353, '2023-02-09 22:27:41', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (183, 'eveniet', '58962300', 62, 308, '2023-02-01 02:18:24', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (184, 'aliquid', '30379400', 3, 254, '2023-01-29 19:01:55', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (185, 'totam', '45754200', 27, 415, '2023-02-01 08:19:20', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (186, 'amet', '3384700', 37, 331, '2023-02-03 02:41:18', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (187, 'laudantium', '14850100', 55, 399, '2023-01-17 20:01:17', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (188, 'tenetur', '18303300', 61, 16, '2023-01-11 18:41:15', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (189, 'incidunt', '50567600', 73, 19, '2023-01-28 22:19:02', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (190, 'tempore', '71695400', 63, 464, '2023-01-29 02:18:03', '4');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (191, 'quibusdam', '56566400', 45, 266, '2023-01-21 02:49:49', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (192, 'non', '52219000', 70, 154, '2023-01-14 22:09:47', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (193, 'perspiciatis', '56610700', 43, 205, '2023-01-13 03:06:35', '1');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (194, 'assumenda', '94577800', 65, 208, '2023-01-24 11:17:41', '2');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (195, 'tenetur', '80389200', 19, 140, '2023-02-05 04:47:34', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (196, 'cum', '55521100', 29, 384, '2023-02-09 14:34:10', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (197, 'incidunt', '99420000', 57, 108, '2023-01-11 14:06:58', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (198, 'consequuntur', '39307000', 72, 140, '2023-02-07 21:41:14', '3');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (199, 'recusandae', '7664550', 53, 246, '2023-02-01 20:29:18', '5');
INSERT INTO `Product` (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`) VALUES (200, 'quaerat', '24592100', 56, 56, '2023-01-18 01:55:51', '4');



CREATE TABLE Cart_Product (
    Customer_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Cart_Product
#

INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (1, 1);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (2, 2);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (3, 3);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (4, 4);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (5, 5);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (6, 6);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (7, 7);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (8, 8);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (9, 9);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (10, 10);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (11, 11);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (12, 12);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (13, 13);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (14, 14);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (15, 15);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (16, 16);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (17, 17);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (18, 18);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (19, 19);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (20, 20);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (21, 21);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (22, 22);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (23, 23);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (24, 24);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (25, 25);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (26, 26);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (27, 27);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (28, 28);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (29, 29);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (30, 30);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (31, 31);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (32, 32);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (33, 33);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (34, 34);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (35, 35);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (36, 36);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (37, 37);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (38, 38);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (39, 39);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (40, 40);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (41, 41);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (42, 42);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (43, 43);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (44, 44);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (45, 45);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (46, 46);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (47, 47);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (48, 48);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (49, 49);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (50, 50);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (51, 51);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (52, 52);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (53, 53);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (54, 54);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (55, 55);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (56, 56);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (57, 57);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (58, 58);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (59, 59);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (60, 60);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (61, 61);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (62, 62);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (63, 63);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (64, 64);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (65, 65);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (66, 66);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (67, 67);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (68, 68);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (69, 69);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (70, 70);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (71, 71);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (72, 72);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (73, 73);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (74, 74);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (75, 75);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (76, 76);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (77, 77);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (78, 78);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (79, 79);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (80, 80);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (81, 81);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (82, 82);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (83, 83);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (84, 84);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (85, 85);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (86, 86);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (87, 87);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (88, 88);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (89, 89);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (90, 90);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (91, 91);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (92, 92);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (93, 93);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (94, 94);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (95, 95);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (96, 96);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (97, 97);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (98, 98);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (99, 99);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (100, 100);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (1, 101);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (2, 102);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (3, 103);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (4, 104);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (5, 105);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (6, 106);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (7, 107);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (8, 108);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (9, 109);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (10, 110);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (11, 111);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (12, 112);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (13, 113);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (14, 114);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (15, 115);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (16, 116);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (17, 117);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (18, 118);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (19, 119);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (20, 120);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (21, 121);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (22, 122);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (23, 123);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (24, 124);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (25, 125);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (26, 126);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (27, 127);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (28, 128);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (29, 129);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (30, 130);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (31, 131);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (32, 132);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (33, 133);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (34, 134);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (35, 135);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (36, 136);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (37, 137);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (38, 138);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (39, 139);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (40, 140);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (41, 141);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (42, 142);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (43, 143);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (44, 144);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (45, 145);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (46, 146);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (47, 147);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (48, 148);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (49, 149);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (50, 150);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (51, 151);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (52, 152);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (53, 153);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (54, 154);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (55, 155);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (56, 156);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (57, 157);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (58, 158);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (59, 159);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (60, 160);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (61, 161);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (62, 162);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (63, 163);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (64, 164);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (65, 165);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (66, 166);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (67, 167);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (68, 168);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (69, 169);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (70, 170);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (71, 171);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (72, 172);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (73, 173);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (74, 174);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (75, 175);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (76, 176);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (77, 177);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (78, 178);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (79, 179);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (80, 180);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (81, 181);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (82, 182);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (83, 183);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (84, 184);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (85, 185);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (86, 186);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (87, 187);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (88, 188);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (89, 189);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (90, 190);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (91, 191);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (92, 192);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (93, 193);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (94, 194);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (95, 195);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (96, 196);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (97, 197);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (98, 198);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (99, 199);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (100, 200);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (1, 1);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (2, 2);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (3, 3);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (4, 4);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (5, 5);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (6, 6);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (7, 7);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (8, 8);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (9, 9);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (10, 10);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (11, 11);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (12, 12);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (13, 13);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (14, 14);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (15, 15);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (16, 16);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (17, 17);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (18, 18);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (19, 19);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (20, 20);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (21, 21);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (22, 22);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (23, 23);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (24, 24);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (25, 25);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (26, 26);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (27, 27);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (28, 28);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (29, 29);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (30, 30);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (31, 31);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (32, 32);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (33, 33);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (34, 34);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (35, 35);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (36, 36);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (37, 37);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (38, 38);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (39, 39);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (40, 40);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (41, 41);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (42, 42);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (43, 43);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (44, 44);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (45, 45);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (46, 46);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (47, 47);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (48, 48);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (49, 49);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (50, 50);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (51, 51);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (52, 52);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (53, 53);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (54, 54);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (55, 55);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (56, 56);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (57, 57);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (58, 58);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (59, 59);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (60, 60);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (61, 61);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (62, 62);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (63, 63);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (64, 64);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (65, 65);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (66, 66);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (67, 67);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (68, 68);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (69, 69);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (70, 70);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (71, 71);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (72, 72);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (73, 73);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (74, 74);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (75, 75);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (76, 76);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (77, 77);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (78, 78);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (79, 79);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (80, 80);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (81, 81);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (82, 82);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (83, 83);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (84, 84);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (85, 85);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (86, 86);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (87, 87);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (88, 88);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (89, 89);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (90, 90);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (91, 91);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (92, 92);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (93, 93);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (94, 94);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (95, 95);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (96, 96);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (97, 97);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (98, 98);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (99, 99);
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`) VALUES (100, 100);



CREATE TABLE Delivery_Person (
    DelPerson_ID INT NOT NULL,
    User_ID INT NOT NULL,
    Active_Delivery_Request INT NOT NULL,
    Delivery_Rating INT NOT NULL,
    Admin_Username VARCHAR(255) NOT NULL,
    PRIMARY KEY (DelPerson_ID),
    FOREIGN KEY(User_ID) REFERENCES Person(User_ID),
    FOREIGN KEY (Active_Delivery_Request) REFERENCES Orderr(Order_ID),
    FOREIGN KEY (Admin_Username) REFERENCES Adminn(Username)
);

#
# TABLE STRUCTURE FOR: Delivery_Person
#

INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (15, 5, 5, 3, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (48, 15, 16, 1, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (57, 22, 24, 5, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (67, 16, 17, 1, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (74, 29, 31, 5, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (76, 25, 27, 2, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (84, 28, 30, 3, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (87, 3, 3, 3, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (93, 24, 26, 3, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (98, 8, 8, 1, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (111, 12, 13, 1, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (116, 19, 21, 4, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (153, 23, 25, 3, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (168, 13, 14, 2, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (171, 11, 12, 5, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (188, 14, 15, 1, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (192, 10, 11, 2, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (195, 7, 7, 2, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (199, 9, 9, 4, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (200, 30, 32, 2, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (206, 4, 4, 1, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (223, 17, 19, 3, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (230, 6, 6, 5, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (268, 18, 20, 5, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (270, 27, 29, 5, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (271, 2, 2, 4, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (272, 21, 23, 2, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (282, 26, 28, 1, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (284, 1, 1, 4, 'destini.beier');
INSERT INTO `Delivery_Person` (`DelPerson_ID`, `User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `Admin_Username`) VALUES (286, 20, 22, 2, 'destini.beier');



CREATE TABLE Customer_Pending_Orderr (
    Customer_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orderr(Order_ID)
);

#
# TABLE STRUCTURE FOR: Customer_Pending_Orderr
#

INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (1, 1);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (2, 2);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (3, 3);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (4, 4);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (5, 5);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (6, 6);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (7, 7);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (8, 8);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (9, 9);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (10, 11);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (11, 12);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (12, 13);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (13, 14);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (14, 15);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (15, 16);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (16, 17);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (17, 19);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (18, 20);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (19, 21);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (20, 22);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (21, 23);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (22, 24);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (23, 25);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (24, 26);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (25, 27);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (26, 28);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (27, 29);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (28, 30);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (29, 31);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (30, 32);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (31, 33);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (32, 34);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (33, 35);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (34, 36);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (35, 37);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (36, 39);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (37, 40);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (38, 41);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (39, 42);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (40, 43);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (41, 44);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (42, 45);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (43, 46);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (44, 47);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (45, 48);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (46, 49);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (47, 50);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (48, 51);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (49, 52);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (50, 53);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (51, 54);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (52, 55);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (53, 56);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (54, 57);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (55, 58);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (56, 59);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (57, 60);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (58, 61);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (59, 62);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (60, 63);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (61, 64);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (62, 65);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (63, 66);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (64, 67);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (65, 68);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (66, 69);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (67, 70);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (68, 71);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (69, 72);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (70, 73);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (71, 74);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (72, 75);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (73, 76);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (74, 77);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (75, 78);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (76, 80);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (77, 81);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (78, 82);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (79, 84);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (80, 85);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (81, 87);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (82, 88);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (83, 89);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (84, 90);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (85, 91);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (86, 92);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (87, 93);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (88, 94);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (89, 95);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (90, 96);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (91, 97);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (92, 98);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (93, 99);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (94, 100);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (95, 101);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (96, 103);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (97, 104);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (98, 105);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (99, 106);
INSERT INTO `Customer_Pending_Orderr` (`Customer_ID`, `Order_ID`) VALUES (100, 107);



CREATE TABLE Manufacturer (
    Seller_ID INT AUTO_INCREMENT NOT NULL,
    User_ID INT NOT NULL,
    Admin_Username VARCHAR(255) NOT NULL,
    Admin_Password VARCHAR(255) NOT NULL,
    PRIMARY KEY(Seller_ID),
    FOREIGN KEY (User_ID) REFERENCES Person(User_ID),
    FOREIGN KEY (Admin_Username) REFERENCES Adminn(Username)
);

#
# TABLE STRUCTURE FOR: Manufacturer
#

INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (1, 1, 'destini.beier', 'aut');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (2, 2, 'destini.beier', 'velit');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (3, 3, 'destini.beier', 'dolor');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (4, 4, 'destini.beier', 'necessitatibus');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (5, 5, 'destini.beier', 'sed');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (6, 6, 'destini.beier', 'omnis');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (7, 7, 'destini.beier', 'voluptatem');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (8, 8, 'destini.beier', 'placeat');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (9, 9, 'destini.beier', 'nihil');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (10, 10, 'destini.beier', 'non');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (11, 11, 'destini.beier', 'cum');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (12, 12, 'destini.beier', 'quo');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (13, 13, 'destini.beier', 'vitae');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (14, 14, 'destini.beier', 'molestias');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (15, 15, 'destini.beier', 'ut');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (16, 16, 'destini.beier', 'ut');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (17, 17, 'destini.beier', 'voluptatem');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (18, 18, 'destini.beier', 'sint');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (19, 19, 'destini.beier', 'sint');
INSERT INTO `Manufacturer` (`Seller_ID`, `User_ID`, `Admin_Username`, `Admin_Password`) VALUES (20, 20, 'destini.beier', 'debitis');


CREATE TABLE Manufacturer_Product_Sold (
    Seller_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY (Seller_ID) REFERENCES Manufacturer(Seller_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Manufacturer_Product_Sold
#

INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (1, 1);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (2, 2);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (3, 3);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (4, 4);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (5, 5);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (6, 6);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (7, 7);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (8, 8);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (9, 9);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (10, 10);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (11, 11);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (12, 12);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (13, 13);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (14, 14);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (15, 15);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (16, 16);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (17, 17);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (18, 18);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (19, 19);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (20, 20);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (1, 21);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (2, 22);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (3, 23);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (4, 24);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (5, 25);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (6, 26);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (7, 27);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (8, 28);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (9, 29);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (10, 30);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (11, 31);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (12, 32);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (13, 33);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (14, 34);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (15, 35);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (16, 36);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (17, 37);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (18, 38);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (19, 39);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (20, 40);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (1, 41);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (2, 42);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (3, 43);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (4, 44);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (5, 45);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (6, 46);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (7, 47);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (8, 48);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (9, 49);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (10, 50);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (11, 51);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (12, 52);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (13, 53);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (14, 54);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (15, 55);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (16, 56);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (17, 57);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (18, 58);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (19, 59);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (20, 60);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (1, 61);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (2, 62);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (3, 63);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (4, 64);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (5, 65);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (6, 66);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (7, 67);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (8, 68);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (9, 69);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (10, 70);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (11, 71);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (12, 72);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (13, 73);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (14, 74);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (15, 75);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (16, 76);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (17, 77);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (18, 78);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (19, 79);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (20, 80);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (1, 81);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (2, 82);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (3, 83);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (4, 84);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (5, 85);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (6, 86);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (7, 87);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (8, 88);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (9, 89);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (10, 90);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (11, 91);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (12, 92);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (13, 93);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (14, 94);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (15, 95);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (16, 96);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (17, 97);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (18, 98);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (19, 99);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (20, 100);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (1, 101);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (2, 102);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (3, 103);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (4, 104);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (5, 105);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (6, 106);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (7, 107);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (8, 108);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (9, 109);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (10, 110);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (11, 111);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (12, 112);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (13, 113);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (14, 114);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (15, 115);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (16, 116);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (17, 117);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (18, 118);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (19, 119);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (20, 120);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (1, 121);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (2, 122);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (3, 123);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (4, 124);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (5, 125);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (6, 126);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (7, 127);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (8, 128);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (9, 129);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (10, 130);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (11, 131);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (12, 132);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (13, 133);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (14, 134);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (15, 135);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (16, 136);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (17, 137);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (18, 138);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (19, 139);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (20, 140);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (1, 141);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (2, 142);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (3, 143);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (4, 144);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (5, 145);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (6, 146);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (7, 147);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (8, 148);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (9, 149);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (10, 150);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (11, 151);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (12, 152);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (13, 153);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (14, 154);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (15, 155);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (16, 156);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (17, 157);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (18, 158);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (19, 159);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (20, 160);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (1, 161);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (2, 162);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (3, 163);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (4, 164);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (5, 165);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (6, 166);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (7, 167);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (8, 168);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (9, 169);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (10, 170);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (11, 171);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (12, 172);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (13, 173);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (14, 174);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (15, 175);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (16, 176);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (17, 177);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (18, 178);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (19, 179);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (20, 180);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (1, 181);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (2, 182);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (3, 183);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (4, 184);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (5, 185);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (6, 186);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (7, 187);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (8, 188);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (9, 189);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (10, 190);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (11, 191);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (12, 192);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (13, 193);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (14, 194);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (15, 195);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (16, 196);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (17, 197);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (18, 198);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (19, 199);
INSERT INTO `Manufacturer_Product_Sold` (`Seller_ID`, `Product_ID`) VALUES (20, 200);


CREATE TABLE Manufacturer_Upcoming_Product (
    Seller_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY (Seller_ID) REFERENCES Manufacturer(Seller_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Manufacturer_Upcoming_Product
#

INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (1, 1);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (2, 2);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (3, 3);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (4, 4);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (5, 5);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (6, 6);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (7, 7);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (8, 8);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (9, 9);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (10, 10);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (11, 11);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (12, 12);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (13, 13);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (14, 14);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (15, 15);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (16, 16);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (17, 17);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (18, 18);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (19, 19);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (20, 20);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (1, 21);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (2, 22);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (3, 23);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (4, 24);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (5, 25);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (6, 26);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (7, 27);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (8, 28);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (9, 29);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (10, 30);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (11, 31);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (12, 32);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (13, 33);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (14, 34);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (15, 35);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (16, 36);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (17, 37);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (18, 38);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (19, 39);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (20, 40);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (1, 41);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (2, 42);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (3, 43);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (4, 44);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (5, 45);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (6, 46);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (7, 47);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (8, 48);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (9, 49);
INSERT INTO `Manufacturer_Upcoming_Product` (`Seller_ID`, `Product_ID`) VALUES (10, 50);


CREATE TABLE Delivery_Person_Completed_Delivery (
    DelPerson_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    FOREIGN KEY (DelPerson_ID) REFERENCES Delivery_Person(DelPerson_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orderr(Order_ID)
);

#
# TABLE STRUCTURE FOR: Delivery_Person_Completed_Delivery
#

INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (15, 1);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (48, 2);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (57, 3);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (67, 4);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (74, 5);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (76, 6);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (84, 7);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (87, 8);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (93, 9);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (98, 11);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (111, 12);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (116, 13);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (153, 14);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (168, 15);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (171, 16);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (188, 17);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (192, 19);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (195, 20);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (199, 21);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (200, 22);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (206, 23);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (223, 24);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (230, 25);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (268, 26);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (270, 27);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (271, 28);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (272, 29);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (282, 30);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (284, 31);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (286, 32);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (15, 33);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (48, 34);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (57, 35);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (67, 36);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (74, 37);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (76, 39);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (84, 40);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (87, 41);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (93, 42);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (98, 43);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (111, 44);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (116, 45);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (153, 46);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (168, 47);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (171, 48);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (188, 49);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (192, 50);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (195, 51);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (199, 52);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (200, 53);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (206, 54);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (223, 55);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (230, 56);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (268, 57);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (270, 58);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (271, 59);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (272, 60);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (282, 61);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (284, 62);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (286, 63);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (15, 64);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (48, 65);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (57, 66);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (67, 67);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (74, 68);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (76, 69);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (84, 70);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (87, 71);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (93, 72);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (98, 73);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (111, 74);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (116, 75);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (153, 76);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (168, 77);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (171, 78);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (188, 80);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (192, 81);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (195, 82);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (199, 84);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (200, 85);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (206, 87);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (223, 88);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (230, 89);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (268, 90);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (270, 91);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (271, 92);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (272, 93);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (282, 94);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (284, 95);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (286, 96);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (15, 97);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (48, 98);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (57, 99);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (67, 100);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (74, 101);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (76, 103);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (84, 104);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (87, 105);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (93, 106);
INSERT INTO `Delivery_Person_Completed_Delivery` (`DelPerson_ID`, `Order_ID`) VALUES (98, 107);




CREATE TABLE Orderr_Product (
  Quantity INT NOT NULL,
  Order_ID INT NOT NULL,
  Product_ID INT NOT NULL,
  FOREIGN KEY (Order_ID) REFERENCES Orderr (Order_ID),
  FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Orderr_Product
#

INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 1, 1);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 2, 2);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (7, 3, 3);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 4, 4);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 5, 5);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 6, 6);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 7, 7);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 8, 8);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 9, 9);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 11, 10);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 12, 11);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 13, 12);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 14, 13);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 15, 14);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 16, 15);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 17, 16);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 19, 17);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 20, 18);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 21, 19);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 22, 20);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (7, 23, 21);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 24, 22);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 25, 23);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 26, 24);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 27, 25);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 28, 26);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 29, 27);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 30, 28);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 31, 29);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 32, 30);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 33, 31);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 34, 32);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 35, 33);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 36, 34);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 37, 35);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 39, 36);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 40, 37);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 41, 38);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 42, 39);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 43, 40);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 44, 41);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 45, 42);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 46, 43);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 47, 44);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (7, 48, 45);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 49, 46);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 50, 47);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 51, 48);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 52, 49);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 53, 50);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 54, 51);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 55, 52);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 56, 53);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 57, 54);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 58, 55);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 59, 56);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 60, 57);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 61, 58);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 62, 59);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 63, 60);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 64, 61);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 65, 62);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 66, 63);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 67, 64);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 68, 65);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 69, 66);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 70, 67);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 71, 68);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 72, 69);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 73, 70);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 74, 71);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 75, 72);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 76, 73);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 77, 74);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 78, 75);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 80, 76);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 81, 77);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 82, 78);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 84, 79);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 85, 80);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 87, 81);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 88, 82);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 89, 83);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 90, 84);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 91, 85);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 92, 86);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 93, 87);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 94, 88);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 95, 89);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 96, 90);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 97, 91);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 98, 92);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 99, 93);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 100, 94);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 101, 95);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 103, 96);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 104, 97);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 105, 98);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 106, 99);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (7, 107, 100);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 108, 101);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 109, 102);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 110, 103);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 111, 104);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 112, 105);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 113, 106);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 114, 107);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 115, 108);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 116, 109);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 117, 110);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 118, 111);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 119, 112);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 120, 113);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 121, 114);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 122, 115);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 123, 116);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 124, 117);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 125, 118);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 126, 119);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 127, 120);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 128, 121);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 129, 122);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 130, 123);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 131, 124);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 132, 125);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 133, 126);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 134, 127);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 135, 128);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 136, 129);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 137, 130);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 138, 131);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (7, 139, 132);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 140, 133);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 141, 134);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 142, 135);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 144, 136);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 145, 137);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 146, 138);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 147, 139);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 148, 140);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 149, 141);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 150, 142);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 151, 143);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 152, 144);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 153, 145);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 154, 146);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 155, 147);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (7, 156, 148);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 157, 149);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 158, 150);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 159, 151);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 160, 152);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 161, 153);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 162, 154);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 163, 155);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 164, 156);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (7, 165, 157);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 167, 158);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 168, 159);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 169, 160);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 170, 161);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 171, 162);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (7, 172, 163);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 173, 164);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (7, 175, 165);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 176, 166);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 177, 167);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 178, 168);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 179, 169);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 180, 170);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 181, 171);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 182, 172);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 183, 173);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 184, 174);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 185, 175);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (9, 186, 176);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 187, 177);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 188, 178);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 189, 179);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 190, 180);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 191, 181);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 192, 182);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 193, 183);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 194, 184);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 195, 185);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 196, 186);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 197, 187);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (5, 198, 188);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (8, 199, 189);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (2, 200, 190);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 201, 191);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 202, 192);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (6, 203, 193);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 204, 194);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (10, 205, 195);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (1, 206, 196);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 207, 197);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (7, 208, 198);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (4, 209, 199);
INSERT INTO `Orderr_Product` (`Quantity`, `Order_ID`, `Product_ID`) VALUES (3, 210, 200);




CREATE TABLE Delivery_Request(
    Order_ID INT NOT NULL,
    Delivery_Status INT NOT NULL,
    Expected_Completion_Time datetime,
    Amount_Payable FLOAT NOT NULL,
    Delivery_ID INT NOT NULL,
    FOREIGN KEY(Order_ID) REFERENCES Orderr(Order_ID),
    FOREIGN KEY(Delivery_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Delivery_Request
#

INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (1, 2, '2001-08-13 22:05:21', '351330', 1);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (2, 1, '2017-07-08 05:50:53', '825635', 2);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (3, 2, '1992-03-05 17:24:33', '274692', 3);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (4, 1, '1971-12-19 23:38:47', '753153', 4);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (5, 0, '1986-09-18 08:19:12', '385092', 5);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (6, 1, '1988-01-20 12:39:09', '14223', 6);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (7, 1, '2009-11-13 19:18:08', '857131', 7);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (8, 0, '2003-03-04 01:49:00', '3955', 8);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (9, 1, '1987-05-06 07:33:37', '500334', 9);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (11, 1, '1984-10-22 10:37:23', '28317', 10);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (12, 1, '2005-06-20 09:38:39', '691263', 11);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (13, 2, '1985-11-08 17:41:54', '559476', 12);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (14, 1, '1992-09-21 17:42:19', '113570', 13);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (15, 0, '1998-01-23 09:44:09', '379918', 14);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (16, 0, '1981-10-13 13:12:57', '596247', 15);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (17, 1, '2013-11-17 18:12:51', '544672', 16);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (19, 0, '2002-08-02 16:21:01', '673781', 17);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (20, 0, '2009-03-02 20:16:22', '966758', 18);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (21, 0, '1992-09-17 08:06:01', '985272', 19);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (22, 2, '2018-08-13 11:15:17', '845271', 20);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (23, 2, '1977-02-22 05:41:57', '3873', 21);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (24, 2, '1996-08-14 23:01:06', '70489', 22);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (25, 0, '1985-11-08 11:39:06', '603025', 23);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (26, 2, '1982-04-28 12:02:17', '168282', 24);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (27, 0, '2021-04-19 05:54:55', '752773', 25);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (28, 2, '2012-12-13 11:16:16', '100496', 26);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (29, 0, '2013-11-02 10:40:22', '308621', 27);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (30, 0, '2021-06-14 14:19:33', '557052', 28);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (31, 1, '2002-11-30 19:24:03', '413549', 29);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (32, 0, '1979-12-27 13:17:41', '8509', 30);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (33, 2, '2008-05-15 05:04:10', '349058', 31);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (34, 1, '1980-11-30 23:38:46', '823989', 32);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (35, 0, '1987-04-29 01:18:54', '385159', 33);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (36, 2, '1991-01-27 20:39:17', '667236', 34);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (37, 0, '1998-07-23 17:41:06', '736225', 35);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (39, 0, '1993-11-08 19:05:17', '594496', 36);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (40, 0, '1992-07-18 23:34:54', '955216', 37);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (41, 2, '1980-02-05 07:51:07', '872808', 38);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (42, 1, '2021-05-03 03:47:27', '468888', 39);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (43, 1, '1972-05-29 09:15:35', '995203', 40);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (44, 0, '1974-11-04 02:33:49', '800091', 41);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (45, 2, '2015-08-08 20:08:55', '734734', 42);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (46, 2, '2006-09-19 12:21:21', '628771', 43);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (47, 2, '2022-01-31 14:38:48', '447319', 44);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (48, 2, '1972-07-09 05:59:51', '227006', 45);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (49, 0, '1973-02-22 07:25:09', '206138', 46);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (50, 2, '2008-07-28 02:52:46', '961557', 47);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (51, 0, '2000-11-11 11:02:36', '742219', 48);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (52, 1, '2010-05-14 08:56:28', '5934', 49);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (53, 0, '1975-02-04 04:14:58', '75455', 50);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (54, 2, '1978-05-06 23:40:07', '695304', 51);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (55, 2, '2007-09-08 02:59:00', '495163', 52);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (56, 0, '2007-12-11 05:24:57', '872426', 53);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (57, 2, '1975-12-08 22:48:06', '301746', 54);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (58, 2, '1993-12-23 00:37:30', '706671', 55);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (59, 1, '1978-01-28 21:55:24', '57100', 56);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (60, 1, '1981-07-04 08:15:02', '712711', 57);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (61, 0, '1985-08-21 14:27:23', '195872', 58);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (62, 0, '1981-08-22 21:07:31', '503076', 59);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (63, 2, '1993-02-01 07:28:06', '279946', 60);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (64, 2, '1971-04-08 14:43:45', '825379', 61);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (65, 1, '1971-04-27 23:34:33', '454972', 62);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (66, 2, '2022-02-28 20:51:39', '298696', 63);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (67, 2, '2005-08-30 11:41:31', '634217', 64);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (68, 1, '2002-02-27 09:31:12', '399124', 65);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (69, 2, '2017-01-22 07:04:08', '485610', 66);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (70, 0, '2022-09-10 13:30:48', '910651', 67);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (71, 1, '2004-04-25 10:16:18', '849786', 68);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (72, 0, '2003-03-08 08:35:33', '513768', 69);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (73, 2, '2005-06-11 05:41:59', '537005', 70);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (74, 0, '2004-11-29 16:28:43', '933719', 71);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (75, 0, '1993-03-13 07:25:09', '745459', 72);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (76, 1, '2011-03-29 07:28:37', '832088', 73);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (77, 0, '2007-05-21 10:51:46', '86721', 74);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (78, 1, '1979-04-01 21:34:41', '162800', 75);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (80, 2, '1985-06-28 13:45:28', '111825', 76);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (81, 2, '1987-08-18 11:33:27', '711206', 77);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (82, 1, '2018-11-04 20:29:01', '253829', 78);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (84, 2, '2004-01-02 04:41:30', '713782', 79);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (85, 0, '1991-07-16 01:35:53', '942561', 80);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (87, 1, '2000-03-19 23:02:51', '123509', 81);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (88, 1, '2001-09-11 03:40:43', '309743', 82);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (89, 0, '1975-07-22 03:52:50', '826884', 83);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (90, 2, '2021-03-27 23:33:33', '482140', 84);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (91, 0, '1997-09-16 13:42:00', '414382', 85);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (92, 2, '1976-12-12 02:24:31', '205708', 86);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (93, 2, '2017-10-01 05:12:02', '458063', 87);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (94, 1, '1974-09-30 08:35:45', '507081', 88);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (95, 1, '1984-01-26 18:35:42', '345673', 89);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (96, 1, '2012-09-28 06:28:13', '336972', 90);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (97, 0, '2006-04-04 19:07:39', '453527', 91);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (98, 2, '2022-06-17 00:42:28', '744850', 92);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (99, 2, '1971-11-26 00:18:52', '822074', 93);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (100, 1, '2013-07-26 21:29:03', '434868', 94);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (101, 0, '1986-11-15 19:52:40', '850715', 95);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (103, 0, '1979-10-31 06:14:12', '918286', 96);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (104, 2, '2006-01-26 03:25:10', '774391', 97);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (105, 2, '1993-02-17 10:31:22', '456411', 98);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (106, 1, '1980-04-13 21:13:25', '79809', 99);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (107, 2, '2017-12-09 15:18:30', '899251', 100);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (108, 0, '1989-01-10 06:28:37', '129106', 1);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (109, 0, '1996-10-26 04:37:45', '133553', 2);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (110, 2, '1973-03-12 08:24:37', '826262', 3);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (111, 2, '1970-11-05 19:49:02', '614686', 4);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (112, 1, '1984-04-16 09:34:14', '159802', 5);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (113, 2, '1994-08-16 14:52:15', '716245', 6);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (114, 2, '1970-02-06 11:46:21', '413105', 7);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (115, 1, '2003-01-25 21:08:32', '183974', 8);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (116, 0, '1985-10-16 04:38:04', '506808', 9);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (117, 1, '2002-05-18 15:04:48', '914316', 10);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (118, 1, '1989-01-31 01:13:43', '513885', 11);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (119, 2, '2009-11-01 06:36:21', '492739', 12);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (120, 1, '1971-07-18 02:24:42', '290165', 13);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (121, 0, '1999-11-05 05:50:10', '24756', 14);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (122, 1, '2008-08-10 11:30:06', '450215', 15);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (123, 1, '1976-03-21 14:10:09', '81818', 16);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (124, 0, '1975-11-22 09:05:11', '751397', 17);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (125, 0, '2010-12-26 08:12:57', '690488', 18);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (126, 1, '2003-11-30 02:03:18', '831320', 19);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (127, 1, '1983-11-20 14:28:06', '186540', 20);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (128, 2, '1993-11-13 02:03:53', '363209', 21);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (129, 2, '1991-03-24 12:47:26', '524375', 22);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (130, 0, '2009-03-21 00:08:09', '409609', 23);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (131, 0, '1993-01-27 04:07:27', '57826', 24);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (132, 0, '2010-09-24 06:27:12', '749764', 25);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (133, 2, '2001-05-03 12:09:39', '462311', 26);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (134, 0, '2013-04-30 03:50:46', '543557', 27);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (135, 0, '1988-11-25 00:45:01', '549646', 28);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (136, 2, '2011-07-07 12:54:58', '67901', 29);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (137, 2, '1996-03-28 15:36:07', '386034', 30);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (138, 2, '2014-07-18 13:27:08', '259003', 31);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (139, 0, '1970-09-22 14:31:00', '299422', 32);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (140, 1, '1980-05-26 03:59:23', '865320', 33);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (141, 0, '1987-05-23 07:36:18', '257884', 34);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (142, 2, '2012-09-16 00:54:14', '701157', 35);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (144, 0, '2003-09-27 07:19:54', '928739', 36);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (145, 0, '1980-02-14 03:59:49', '167838', 37);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (146, 0, '2003-08-03 12:13:44', '251013', 38);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (147, 1, '1996-09-13 14:26:20', '687707', 39);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (148, 1, '1980-07-22 04:40:04', '493433', 40);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (149, 0, '1977-01-27 22:45:01', '624969', 41);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (150, 1, '2011-09-24 19:53:45', '852361', 42);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (151, 2, '1991-05-23 10:24:37', '263066', 43);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (152, 2, '1982-09-13 14:47:58', '273125', 44);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (153, 1, '1972-10-19 23:50:17', '177905', 45);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (154, 0, '1973-05-30 20:42:32', '345409', 46);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (155, 2, '1985-07-24 11:26:42', '670869', 47);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (156, 2, '1976-10-09 12:14:57', '154869', 48);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (157, 2, '2019-05-05 22:57:29', '8635', 49);
INSERT INTO `Delivery_Request` (`Order_ID`, `Delivery_Status`, `Expected_Completion_Time`, `Amount_Payable`, `Delivery_ID`) VALUES (158, 0, '1991-05-26 16:25:14', '729664', 50);



CREATE TABLE Product_Sales(
    Product_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Price FLOAT NOT NULL,
    FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Product_Sales
#

INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (1, 1, '5322');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (2, 2, '6986');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (3, 3, '3054');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (4, 4, '6651');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (5, 5, '5380');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (6, 6, '2818');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (7, 7, '9930');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (8, 8, '3061');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (9, 9, '6137');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (10, 10, '3375');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (11, 11, '7406');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (12, 12, '7853');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (13, 13, '7860');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (14, 14, '9548');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (15, 15, '7039');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (16, 16, '5677');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (17, 17, '5582');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (18, 18, '873');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (19, 19, '5364');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (20, 20, '8710');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (21, 21, '4647');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (22, 22, '3282');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (23, 23, '6028');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (24, 24, '7072');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (25, 25, '523');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (26, 26, '1994');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (27, 27, '7700');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (28, 28, '7314');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (29, 29, '9310');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (30, 30, '7290');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (31, 31, '7589');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (32, 32, '8046');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (33, 33, '9379');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (34, 34, '4337');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (35, 35, '8038');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (36, 36, '1999');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (37, 37, '8055');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (38, 38, '9545');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (39, 39, '7748');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (40, 40, '7943');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (41, 41, '8416');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (42, 42, '7895');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (43, 43, '9844');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (44, 44, '2150');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (45, 45, '8161');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (46, 46, '264');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (47, 47, '8124');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (48, 48, '5141');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (49, 49, '8094');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (50, 50, '853');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (51, 51, '1874');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (52, 52, '4388');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (53, 53, '4231');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (54, 54, '311');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (55, 55, '4684');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (56, 56, '9393');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (57, 57, '7437');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (58, 58, '7243');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (59, 59, '6711');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (60, 60, '3383');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (61, 61, '8273');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (62, 62, '4118');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (63, 63, '9639');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (64, 64, '2176');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (65, 65, '9828');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (66, 66, '1509');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (67, 67, '6516');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (68, 68, '1629');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (69, 69, '9740');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (70, 70, '7814');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (71, 71, '7154');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (72, 72, '1244');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (73, 73, '4779');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (74, 74, '9573');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (75, 75, '5314');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (76, 76, '5035');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (77, 77, '6323');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (78, 78, '5812');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (79, 79, '2971');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (80, 80, '2714');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (81, 81, '3042');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (82, 82, '9544');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (83, 83, '2259');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (84, 84, '8215');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (85, 85, '3585');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (86, 86, '1556');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (87, 87, '9982');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (88, 88, '5920');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (89, 89, '3361');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (90, 90, '8387');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (91, 91, '8244');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (92, 92, '4270');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (93, 93, '5186');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (94, 94, '3107');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (95, 95, '2575');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (96, 96, '2658');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (97, 97, '1735');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (98, 98, '2634');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (99, 99, '9240');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (100, 100, '9622');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (101, 1, '1679');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (102, 2, '9980');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (103, 3, '5130');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (104, 4, '2990');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (105, 5, '6942');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (106, 6, '6232');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (107, 7, '2720');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (108, 8, '8810');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (109, 9, '5077');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (110, 10, '5378');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (111, 11, '6396');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (112, 12, '8783');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (113, 13, '7758');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (114, 14, '4387');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (115, 15, '5531');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (116, 16, '6185');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (117, 17, '6299');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (118, 18, '7351');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (119, 19, '1263');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (120, 20, '5585');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (121, 21, '229');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (122, 22, '841');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (123, 23, '2909');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (124, 24, '6993');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (125, 25, '4843');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (126, 26, '6788');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (127, 27, '8255');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (128, 28, '5666');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (129, 29, '5784');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (130, 30, '9293');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (131, 31, '9570');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (132, 32, '1211');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (133, 33, '9290');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (134, 34, '697');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (135, 35, '3629');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (136, 36, '4247');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (137, 37, '2926');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (138, 38, '1423');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (139, 39, '4493');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (140, 40, '8837');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (141, 41, '5437');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (142, 42, '7685');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (143, 43, '5581');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (144, 44, '5793');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (145, 45, '1753');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (146, 46, '8795');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (147, 47, '596');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (148, 48, '3530');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (149, 49, '5075');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (150, 50, '5851');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (151, 51, '6008');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (152, 52, '2443');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (153, 53, '4973');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (154, 54, '5030');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (155, 55, '4745');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (156, 56, '6462');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (157, 57, '4869');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (158, 58, '9714');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (159, 59, '281');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (160, 60, '3404');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (161, 61, '2544');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (162, 62, '1755');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (163, 63, '3363');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (164, 64, '7923');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (165, 65, '8422');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (166, 66, '5727');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (167, 67, '375');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (168, 68, '2295');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (169, 69, '3839');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (170, 70, '4544');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (171, 71, '5272');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (172, 72, '3211');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (173, 73, '4837');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (174, 74, '8961');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (175, 75, '9196');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (176, 76, '3117');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (177, 77, '8972');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (178, 78, '4146');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (179, 79, '8081');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (180, 80, '9526');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (181, 81, '4902');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (182, 82, '7746');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (183, 83, '3359');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (184, 84, '7747');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (185, 85, '8954');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (186, 86, '8217');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (187, 87, '2922');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (188, 88, '4516');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (189, 89, '2305');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (190, 90, '8267');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (191, 91, '4865');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (192, 92, '7361');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (193, 93, '610');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (194, 94, '4706');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (195, 95, '2957');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (196, 96, '3783');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (197, 97, '286');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (198, 98, '1532');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (199, 99, '8060');
INSERT INTO `Product_Sales` (`Product_ID`, `Customer_ID`, `Price`) VALUES (200, 100, '248');


CREATE TABLE Product_Category(
    Category_ID INT AUTO_INCREMENT NOT NULL,
    cName VARCHAR(255),
    PRIMARY KEY (Category_ID)
);

#
# TABLE STRUCTURE FOR: Product_Category
#

INSERT INTO Product_Category(Category_ID,cName) VALUES (1,'Electronics');
INSERT INTO Product_Category(Category_ID,cName) VALUES (2,'Home & Kitchen');
INSERT INTO Product_Category(Category_ID,cName) VALUES (3,'Clothing');
INSERT INTO Product_Category(Category_ID,cName) VALUES (4,'Furniture');
INSERT INTO Product_Category(Category_ID,cName) VALUES (5,'Books & Toys');
INSERT INTO Product_Category(Category_ID,cName) VALUES (6,'Sports & Outdoor');
INSERT INTO Product_Category(Category_ID,cName) VALUES (7,'Health & Wellness');
INSERT INTO Product_Category(Category_ID,cName) VALUES (8,'Automotive Accessories');
INSERT INTO Product_Category(Category_ID,cName) VALUES (9,'Food & Grocery');
INSERT INTO Product_Category(Category_ID,cName) VALUES (10,'Shoes');


CREATE TABLE Admin_Customers(
    Admin_Username VARCHAR(255) NOT NULL,
    Customer_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Admin_Customers
#

INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 1);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 2);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 3);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 4);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 5);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 6);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 7);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 8);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 9);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 10);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 11);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 12);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 13);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 14);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 15);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 16);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 17);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 18);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 19);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 20);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 21);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 22);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 23);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 24);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 25);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 26);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 27);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 28);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 29);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 30);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 31);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 32);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 33);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 34);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 35);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 36);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 37);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 38);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 39);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 40);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 41);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 42);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 43);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 44);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 45);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 46);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 47);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 48);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 49);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 50);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 51);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 52);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 53);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 54);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 55);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 56);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 57);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 58);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 59);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 60);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 61);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 62);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 63);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 64);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 65);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 66);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 67);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 68);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 69);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 70);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 71);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 72);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 73);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 74);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 75);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 76);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 77);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 78);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 79);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 80);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 81);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 82);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 83);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 84);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 85);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 86);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 87);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 88);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 89);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 90);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 91);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 92);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 93);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 94);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 95);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 96);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 97);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 98);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 99);
INSERT INTO `Admin_Customers` (`Admin_Username`, `Customer_ID`) VALUES ('destini.beier', 100);


CREATE TABLE Admin_Manufacturers(
    Admin_Username VARCHAR(255) NOT NULL,
    Seller_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Seller_ID) REFERENCES Manufacturer(Seller_ID)
);

#
# TABLE STRUCTURE FOR: Admin_Manufacturers
#

INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 1);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 2);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 3);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 4);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 5);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 6);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 7);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 8);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 9);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 10);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 11);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 12);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 13);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 14);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 15);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 16);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 17);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 18);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 19);
INSERT INTO `Admin_Manufacturers` (`Admin_Username`, `Seller_ID`) VALUES ('destini.beier', 20);


CREATE TABLE Admin_Products(
    Admin_Username VARCHAR(255) NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Admin_Products
#

INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 1);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 2);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 3);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 4);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 5);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 6);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 7);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 8);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 9);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 10);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 11);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 12);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 13);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 14);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 15);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 16);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 17);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 18);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 19);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 20);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 21);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 22);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 23);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 24);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 25);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 26);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 27);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 28);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 29);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 30);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 31);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 32);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 33);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 34);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 35);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 36);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 37);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 38);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 39);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 40);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 41);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 42);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 43);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 44);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 45);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 46);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 47);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 48);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 49);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 50);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 51);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 52);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 53);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 54);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 55);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 56);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 57);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 58);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 59);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 60);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 61);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 62);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 63);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 64);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 65);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 66);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 67);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 68);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 69);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 70);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 71);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 72);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 73);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 74);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 75);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 76);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 77);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 78);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 79);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 80);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 81);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 82);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 83);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 84);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 85);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 86);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 87);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 88);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 89);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 90);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 91);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 92);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 93);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 94);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 95);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 96);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 97);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 98);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 99);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 100);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 101);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 102);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 103);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 104);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 105);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 106);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 107);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 108);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 109);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 110);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 111);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 112);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 113);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 114);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 115);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 116);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 117);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 118);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 119);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 120);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 121);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 122);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 123);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 124);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 125);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 126);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 127);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 128);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 129);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 130);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 131);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 132);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 133);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 134);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 135);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 136);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 137);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 138);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 139);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 140);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 141);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 142);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 143);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 144);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 145);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 146);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 147);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 148);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 149);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 150);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 151);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 152);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 153);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 154);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 155);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 156);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 157);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 158);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 159);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 160);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 161);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 162);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 163);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 164);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 165);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 166);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 167);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 168);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 169);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 170);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 171);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 172);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 173);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 174);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 175);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 176);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 177);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 178);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 179);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 180);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 181);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 182);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 183);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 184);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 185);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 186);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 187);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 188);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 189);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 190);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 191);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 192);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 193);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 194);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 195);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 196);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 197);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 198);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 199);
INSERT INTO `Admin_Products` (`Admin_Username`, `Product_ID`) VALUES ('destini.beier', 200);


CREATE TABLE Admin_Product_Categories(
    Admin_Username VARCHAR(255) NOT NULL,
    Category_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Category_ID) REFERENCES Product_Category(Category_ID)
);

#
# TABLE STRUCTURE FOR: Admin_Product_Categories
#

INSERT INTO Admin_Product_Categories(Admin_Username,Category_ID) VALUES ('destini.beier',1);
INSERT INTO Admin_Product_Categories(Admin_Username,Category_ID) VALUES ('destini.beier',2);
INSERT INTO Admin_Product_Categories(Admin_Username,Category_ID) VALUES ('destini.beier',3);
INSERT INTO Admin_Product_Categories(Admin_Username,Category_ID) VALUES ('destini.beier',4);
INSERT INTO Admin_Product_Categories(Admin_Username,Category_ID) VALUES ('destini.beier',5);
INSERT INTO Admin_Product_Categories(Admin_Username,Category_ID) VALUES ('destini.beier',6);
INSERT INTO Admin_Product_Categories(Admin_Username,Category_ID) VALUES ('destini.beier',7);
INSERT INTO Admin_Product_Categories(Admin_Username,Category_ID) VALUES ('destini.beier',8);
INSERT INTO Admin_Product_Categories(Admin_Username,Category_ID) VALUES ('destini.beier',9);
INSERT INTO Admin_Product_Categories(Admin_Username,Category_ID) VALUES ('destini.beier',10);

CREATE TABLE Admin_DeliveryPersons(
    Admin_Username VARCHAR(255) NOT NULL,
    DelPerson_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(DelPerson_ID) REFERENCES Delivery_Person(DelPerson_ID)
);

#
# TABLE STRUCTURE FOR: Admin_DeliveryPersons
#

INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 15);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 48);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 57);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 67);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 74);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 76);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 84);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 87);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 93);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 98);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 111);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 116);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 153);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 168);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 171);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 188);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 192);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 195);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 199);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 200);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 206);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 223);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 230);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 268);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 270);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 271);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 272);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 282);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 284);
INSERT INTO `Admin_DeliveryPersons` (`Admin_Username`, `DelPerson_ID`) VALUES ('destini.beier', 286);


CREATE TABLE Admin_ActiveDelReqs(
    Admin_Username VARCHAR(255) NOT NULL,
    Req_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Req_ID) REFERENCES Delivery_Request(Order_ID)
);

#
# TABLE STRUCTURE FOR: Admin_ActiveDelReqs
#

INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 1);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 2);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 3);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 4);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 5);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 6);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 7);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 8);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 9);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 11);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 12);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 13);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 14);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 15);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 16);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 17);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 19);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 20);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 21);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 22);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 23);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 24);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 25);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 26);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 27);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 28);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 29);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 30);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 31);
INSERT INTO `Admin_ActiveDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 32);


CREATE TABLE Admin_PendingDelReqs(
    Admin_Username VARCHAR(255) NOT NULL,
    Req_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Req_ID) REFERENCES Delivery_Request(Order_ID)
);

#
# TABLE STRUCTURE FOR: Admin_PendingDelReqs
#

INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 1);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 2);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 3);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 4);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 5);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 6);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 7);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 8);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 9);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 11);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 12);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 13);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 14);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 15);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 16);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 17);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 19);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 20);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 21);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 22);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 23);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 24);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 25);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 26);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 27);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 28);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 29);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 30);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 31);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 32);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 33);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 34);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 35);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 36);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 37);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 39);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 40);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 41);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 42);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 43);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 44);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 45);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 46);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 47);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 48);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 49);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 50);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 51);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 52);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 53);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 54);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 55);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 56);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 57);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 58);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 59);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 60);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 61);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 62);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 63);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 64);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 65);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 66);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 67);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 68);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 69);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 70);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 71);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 72);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 73);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 74);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 75);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 76);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 77);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 78);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 80);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 81);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 82);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 84);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 85);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 87);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 88);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 89);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 90);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 91);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 92);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 93);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 94);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 95);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 96);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 97);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 98);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 99);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 100);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 101);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 103);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 104);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 105);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 106);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 107);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 108);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 109);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 110);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 111);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 112);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 113);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 114);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 115);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 116);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 117);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 118);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 119);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 120);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 121);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 122);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 123);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 124);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 125);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 126);
INSERT INTO `Admin_PendingDelReqs` (`Admin_Username`, `Req_ID`) VALUES ('destini.beier', 127);




CREATE TABLE Rates_Product(
    Customer_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Customer_Rating FLOAT NOT NULL,
    FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Rates_Product
#

INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (1, 1, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (2, 2, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (3, 3, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (4, 4, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (5, 5, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (6, 6, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (7, 7, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (8, 8, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (9, 9, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (10, 10, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (11, 11, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (12, 12, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (13, 13, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (14, 14, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (15, 15, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (16, 16, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (17, 17, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (18, 18, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (19, 19, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (20, 20, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (21, 21, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (22, 22, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (23, 23, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (24, 24, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (25, 25, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (26, 26, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (27, 27, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (28, 28, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (29, 29, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (30, 30, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (31, 31, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (32, 32, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (33, 33, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (34, 34, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (35, 35, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (36, 36, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (37, 37, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (38, 38, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (39, 39, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (40, 40, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (41, 41, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (42, 42, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (43, 43, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (44, 44, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (45, 45, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (46, 46, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (47, 47, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (48, 48, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (49, 49, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (50, 50, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (51, 51, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (52, 52, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (53, 53, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (54, 54, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (55, 55, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (56, 56, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (57, 57, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (58, 58, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (59, 59, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (60, 60, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (61, 61, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (62, 62, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (63, 63, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (64, 64, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (65, 65, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (66, 66, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (67, 67, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (68, 68, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (69, 69, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (70, 70, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (71, 71, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (72, 72, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (73, 73, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (74, 74, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (75, 75, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (76, 76, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (77, 77, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (78, 78, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (79, 79, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (80, 80, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (81, 81, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (82, 82, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (83, 83, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (84, 84, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (85, 85, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (86, 86, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (87, 87, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (88, 88, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (89, 89, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (90, 90, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (91, 91, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (92, 92, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (93, 93, '4');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (94, 94, '3');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (95, 95, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (96, 96, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (97, 97, '2');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (98, 98, '5');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (99, 99, '1');
INSERT INTO `Rates_Product` (`Customer_ID`, `Product_ID`, `Customer_Rating`) VALUES (100, 100, '2');

CREATE TABLE Rates_Delivery(
    Customer_ID INT NOT NULL,
    Delivery_ID INT NOT NULL,
    Customer_Rating FLOAT NOT NULL,
    FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY(Delivery_ID) REFERENCES Delivery_Person(DelPerson_ID)
);

#
# TABLE STRUCTURE FOR: Rates_Delivery
#

INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (1, 15, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (2, 48, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (3, 57, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (4, 67, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (5, 74, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (6, 76, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (7, 84, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (8, 87, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (9, 93, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (10, 98, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (11, 111, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (12, 116, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (13, 153, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (14, 168, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (15, 171, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (16, 188, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (17, 192, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (18, 195, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (19, 199, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (20, 200, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (21, 206, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (22, 223, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (23, 230, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (24, 268, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (25, 270, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (26, 271, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (27, 272, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (28, 282, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (29, 284, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (30, 286, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (31, 15, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (32, 48, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (33, 57, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (34, 67, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (35, 74, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (36, 76, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (37, 84, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (38, 87, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (39, 93, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (40, 98, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (41, 111, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (42, 116, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (43, 153, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (44, 168, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (45, 171, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (46, 188, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (47, 192, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (48, 195, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (49, 199, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (50, 200, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (51, 206, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (52, 223, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (53, 230, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (54, 268, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (55, 270, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (56, 271, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (57, 272, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (58, 282, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (59, 284, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (60, 286, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (61, 15, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (62, 48, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (63, 57, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (64, 67, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (65, 74, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (66, 76, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (67, 84, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (68, 87, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (69, 93, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (70, 98, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (71, 111, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (72, 116, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (73, 153, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (74, 168, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (75, 171, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (76, 188, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (77, 192, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (78, 195, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (79, 199, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (80, 200, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (81, 206, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (82, 223, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (83, 230, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (84, 268, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (85, 270, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (86, 271, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (87, 272, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (88, 282, '3');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (89, 284, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (90, 286, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (91, 15, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (92, 48, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (93, 57, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (94, 67, '2');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (95, 74, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (96, 76, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (97, 84, '5');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (98, 87, '1');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (99, 93, '4');
INSERT INTO `Rates_Delivery` (`Customer_ID`, `Delivery_ID`, `Customer_Rating`) VALUES (100, 98, '3');
