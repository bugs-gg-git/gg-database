SET FOREIGN_KEY_CHECKS=0;
-- gg_User
INSERT INTO gg_User (Login_Name,Pwd_Hash,Email,Phone,Zip_Code,City,Street,FirstName,LastName) VALUES ('michael','pwd','michael@test.de','0170 123450021',12345,'Musterstadt-Unterstadt','Musterweg 1','Michael','Mustermann');
INSERT INTO gg_User (Login_Name,Pwd_Hash,Email,Phone,Zip_Code,City,Street,FirstName,LastName) VALUES ('bugs','pwd','bugs@test.de','0170 234560022',23456,'Musterhausen','Musterstraße 2','Burkhard','Mustermann');
INSERT INTO gg_User (Login_Name,Pwd_Hash,Email,Phone,Zip_Code,City,Street,FirstName,LastName) VALUES ('cristian','pwd','cristian@test.de','0170 345670023',34567,'Musterringen','Mustergasse 3','Cristian','Mustermann');
INSERT INTO gg_User (Login_Name,Pwd_Hash,Email,Phone,Zip_Code,City,Street,FirstName,LastName) VALUES ('biggi','pwd','biggi@test.de','0170 456780024',45678,'Musterburg','Musterallee 4','Brigitte','Musterfrau');
INSERT INTO gg_User (Login_Name,Pwd_Hash,Email,Phone,Zip_Code,City,Street,FirstName,LastName) VALUES ('anka','pwd','anka@test.de','0170 567890025',56789,'Musterin','Musterpfad 5','Anka','Musterfrau');
INSERT INTO gg_User (Login_Name,Pwd_Hash,Email,Phone,Zip_Code,City,Street,FirstName,LastName) VALUES ('dag','pwd','dag@test.de','0170 123460026',12346,'Musterstadt-Oberstadt','Hauptstr. 6','Dag','Mustermann');
INSERT INTO gg_User (Login_Name,Pwd_Hash,Email,Phone,Zip_Code,City,Street,FirstName,LastName) VALUES ('tatjana','pwd','tatjana@test.de','0170 234570027',23457,'Musterhausen-Musterberg','Peter-Vom-Stein-Weg 7a','Tatjana','Musterfrau');
INSERT INTO gg_User (Login_Name,Pwd_Hash,Email,Phone,Zip_Code,City,Street,FirstName,LastName) VALUES ('josef','pwd','josef@test.de','0170 345680028',34568,'Musterringen an der Muster','Oberstädter Straße 8-10','Josef','Mustermann');
INSERT INTO gg_User (Login_Name,Pwd_Hash,Email,Phone,Zip_Code,City,Street,FirstName,LastName) VALUES ('joerg','pwd','joerg@test.de','0170 456790029',45679,'Musterburg-Oberberg','Oberbergweg 9','Jörg','Mustermann');

-- ALT
--INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('michael', 'pwd', 'michael@test.de', '12345', NULL, 'Musterstadt, Musterweg 2', NULL, 'EMAIL:1-FON:0-ADRESS:1-PICTURE:0');
--INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('bugs', 'pwd', 'bugs@test.de', '23456', '01234/56789', 'Musterhausen, Musterstr. 1 ', NULL, 'EMAIL:0-FON:1-ADRESS:1-PICTURE:0');
--INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('cristian', 'pwd', 'cristian@test.de', '34567', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
--INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('biggi', 'pwd', 'biggi@test.de', '45678', NULL, NULL, '..\\test\\bild.jpg', 'EMAIL:0-FON:0-ADRESS:0-PICTURE:1');
--INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('anka', 'pwd', 'anka@test.de', '56789', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
--INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('dag', 'pwd', 'dag@test.de', '12346', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
--INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('tatjana', 'pwd', 'tatjana@test.de', '23457', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
--INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('josef', 'pwd', 'josef@test.de', '34568', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
--INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('joerg', 'pwd', 'joerg@test.de', '45679', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
-- ENDE ALT

-- gg_Present
INSERT INTO gg_Present (Owner_ID,Title, Description) VALUES (1,'4 Winterreifen', '…');
INSERT INTO gg_Present (Owner_ID,Title, Description) VALUES (1,'12 Bioeier jede Woche', '…');
INSERT INTO gg_Present (Owner_ID,Title, Description) VALUES (3,'Website „GernGemacht“', '…');
INSERT INTO gg_Present (Owner_ID,Title, Description) VALUES (4,'Schubkarre', '…');
INSERT INTO gg_Present (Owner_ID,Title, Description) VALUES (4,'Linux-PC voll funktionsfähig', '…');
INSERT INTO gg_Present (Owner_ID,Title, Description) VALUES (5,'Jacke wattiert', '…');
INSERT INTO gg_Present (Owner_ID,Title, Description) VALUES (6,'Hausbau', '…');
INSERT INTO gg_Present (Owner_ID,Title, Description) VALUES (8,'Selbstgestrickte Wollstrümpfe', '…');
INSERT INTO gg_Present (Owner_ID,Title, Description) VALUES (8,'Selbstgestrickte Wollmütze', '…');
-- gg_Tag
INSERT INTO gg_Tag (Tag_ID,Tag) VALUES (1, 'Auto');
INSERT INTO gg_Tag (Tag_ID,Tag) VALUES (2, 'Essen');
INSERT INTO gg_Tag (Tag_ID,Tag) VALUES (3, 'EDV');
INSERT INTO gg_Tag (Tag_ID,Tag) VALUES (4, 'Kleidung');
INSERT INTO gg_Tag (Tag_ID,Tag) VALUES (5, 'Haus');
INSERT INTO gg_Tag (Tag_ID,Tag) VALUES (6, 'Werkzeug');
-- gg_Offer
INSERT INTO gg_Offer (User_ID,Present_ID) VALUES (1, 1);
INSERT INTO gg_Offer (User_ID,Present_ID) VALUES (1, 2);
INSERT INTO gg_Offer (User_ID,Present_ID) VALUES (3, 3);
INSERT INTO gg_Offer (User_ID,Present_ID) VALUES (6, 7);
INSERT INTO gg_Offer (User_ID,Present_ID) VALUES (8, 8);
-- gg_Demand
INSERT INTO gg_Demand (User_ID,Present_ID) VALUES (4, 4);
INSERT INTO gg_Demand (User_ID,Present_ID) VALUES (4, 5);
INSERT INTO gg_Demand (User_ID,Present_ID) VALUES (5, 6);
INSERT INTO gg_Demand (User_ID,Present_ID) VALUES (8, 9);
-- gg_Interest
INSERT INTO gg_Interest (User_ID,Present_ID) VALUES (7, 7);
INSERT INTO gg_Interest (User_ID,Present_ID) VALUES (2, 3);
INSERT INTO gg_Interest (User_ID,Present_ID) VALUES (8, 9);
-- gg_Present_has_Tags
INSERT INTO gg_Present_has_Tags (Present_ID,Tag_ID) VALUES (1, 1);
INSERT INTO gg_Present_has_Tags (Present_ID,Tag_ID) VALUES (2, 2);
INSERT INTO gg_Present_has_Tags (Present_ID,Tag_ID) VALUES (3, 3);
INSERT INTO gg_Present_has_Tags (Present_ID,Tag_ID) VALUES (4, 6);
INSERT INTO gg_Present_has_Tags (Present_ID,Tag_ID) VALUES (5, 3);
INSERT INTO gg_Present_has_Tags (Present_ID,Tag_ID) VALUES (6, 4);
INSERT INTO gg_Present_has_Tags (Present_ID,Tag_ID) VALUES (7, 5);
INSERT INTO gg_Present_has_Tags (Present_ID,Tag_ID) VALUES (8, 4);
INSERT INTO gg_Present_has_Tags (Present_ID,Tag_ID) VALUES (9, 4);
INSERT INTO gg_Present_has_Tags (Present_ID,Tag_ID) VALUES (1, 6);
-- Ende

SET FOREIGN_KEY_CHECKS=1;