SET FOREIGN_KEY_CHECKS=0;
-- gg_User
INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('michael', 'pwd', 'michael@test.de', '12345', NULL, 'Musterstadt, Musterweg 2', NULL, 'EMAIL:1-FON:0-ADRESS:1-PICTURE:0');
INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('bugs', 'pwd', 'bugs@test.de', '23456', '01234/56789', 'Musterhausen, Musterstr. 1 ', NULL, 'EMAIL:0-FON:1-ADRESS:1-PICTURE:0');
INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('cristian', 'pwd', 'cristian@test.de', '34567', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('biggi', 'pwd', 'biggi@test.de', '45678', NULL, NULL, '..\\test\\bild.jpg', 'EMAIL:0-FON:0-ADRESS:0-PICTURE:1');
INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('anka', 'pwd', 'anka@test.de', '56789', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('dag', 'pwd', 'dag@test.de', '12346', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('tatjana', 'pwd', 'tatjana@test.de', '23457', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('josef', 'pwd', 'josef@test.de', '34568', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
INSERT INTO gg_User (Login_Name, Pwd_Hash, Email, Zip_Code, Fon, Adress, Picture, Visibility_Flags) VALUES('joerg', 'pwd', 'joerg@test.de', '45679', NULL, NULL, NULL, 'EMAIL:0-FON:0-ADRESS:0-PICTURE:0');
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