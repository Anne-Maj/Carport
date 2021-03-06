CREATE DATABASE  IF NOT EXISTS `fog`;

use fog;

DROP TABLE IF EXISTS `width`;
CREATE TABLE `width` (
                         `widthId` int NOT NULL AUTO_INCREMENT,
                         `width` int(5) NOT NULL,
                         PRIMARY KEY (`widthId`)
);
DROP TABLE IF EXISTS `length`;
CREATE TABLE `length` (
                          `lengthId` int NOT NULL AUTO_INCREMENT,
                          `length` int(5) NOT NULL,
                          PRIMARY KEY (`lengthId`)
);
DROP TABLE IF EXISTS `height`;
CREATE TABLE `height` (
                          `heightId` int NOT NULL AUTO_INCREMENT,
                          `height` int(4) NOT NULL,
                          PRIMARY KEY (`heightId`)
);
DROP TABLE IF EXISTS `roofMaterial`;
CREATE TABLE `roofMaterial` (
                          `roofMaterialId` int NOT NULL AUTO_INCREMENT,
                          `roofMaterial` varchar(40) NOT NULL,
                          flatRoof boolean NOT NULL,
                          PRIMARY KEY (`roofMaterialId`)
);

insert into height (height) values (2000);
insert into height (height) values (2200);
insert into height (height) values (2400);
insert into width (width) values (2400);
insert into width (width) values (3400);
insert into width (width) values (4400);
insert into length (length) values (2800);
insert into length (length) values (3800);
insert into length (length) values (4800);
insert into roofMaterial (roofMaterial, flatRoof) values ('Plastmo sort', 1);
insert into roofMaterial (roofMaterial, flatRoof) values ('Plastmo gennemsigtig', 1);
insert into roofMaterial (roofMaterial, flatRoof) values ('Plastmo hvid', 1);
insert into roofMaterial (roofMaterial, flatRoof) values ('Tagsten sort', 0);
insert into roofMaterial (roofMaterial, flatRoof) values ('Tagpap sort', 0);
insert into roofMaterial (roofMaterial, flatRoof) values ('Trapez plast sort', 0);

DROP TABLE IF EXISTS `materials`;

CREATE TABLE `materials` (
                             `materialId` int NOT NULL AUTO_INCREMENT, `category` varchar(255) NOT NULL, `name` varchar(255), `description`
                                          varchar(255), `price` double, primary key (`materialId`));

insert into materials (category, name, description, price) VALUES
('Træ','25x200 mm. trykimp.bræt','Stern vandbræt sider', 50);

insert into materials (category, name, description, price) VALUES
('Træ','25x200 mm. trykimp.bræt','Stern vandbræt forende', 50);

insert into materials (category, name, description, price) VALUES
('Træ','97x97 mm. trykimp. stolpe','Stolpe', 60);

insert into materials (category, name, description, price) VALUES
('Træ','19x100 mm. trykimp. bræt','Beklædningsplader skur', 15);

insert into materials (category, name, description, price) VALUES
('Træ','38x73 mm. lægte ubeh.','Z til bagside af dør i skur', 20);

insert into materials (category, name, description, price) VALUES
('Træ','45x195 mm. spærtræ ubeh.','Remme i sider', 250);

insert into materials (category, name, description, price) VALUES
('Træ','45x195 mm. spærtræ ubeh.','Spær', 250);

insert into materials (category, name, description, price) VALUES
('Træ','45x95 mm reglar ubh.','Løsholter til skur sider', 80);

insert into materials (category, name, description, price) VALUES
('Træ','45x95 mm reglar ubh.','Løsholter til skur gavle', 80);

insert into materials (category, name, description, price) VALUES
('Træ','Færdigsamlet spær','Spær', 750);

insert into materials (category, name, description, price) VALUES
('Træ','25x150 mm trykimp.bræt','Vindskeder på rejsning', 55);

insert into materials (category, name, description, price) VALUES
('Træ','38x73 mm. Taglægte T1','Til montering på spær', 85);

insert into materials (category, name, description, price) VALUES
('Træ','38x73 mm. Taglægte T1','Til montering af rygsten', 85);

insert into materials (category, name, description, price) VALUES
('Tagpakken','Plastmo blåtonet 1200x1200 mm. ','Tagplade', 300);

insert into materials (category, name, description, price) VALUES
('Tagpakken','Tagsten dobbelt-s sort','Tagsten', 120);

insert into materials (category, name, description, price) VALUES
('Tagpakken','Rygsten sort','Rygsten', 140);

insert into materials (category, name, description, price) VALUES
('Tagpakken','Rygstensbeslag','Rygstensbeslag', 40);

insert into materials (category, name, description, price) VALUES
('Tagpakken','Plastmo bundskruer 200 stk.','Skruer til tagplader', 380);

insert into materials (category, name, description, price) VALUES
('Tagpakken','Toplægte holder','Monteres på toppen af spæret', 220);

insert into materials (category, name, description, price) VALUES
('Tagpakken','1 pk. tagstens bindere og nakkekroge','Montering af tagsten', 320);

insert into materials (category, name, description, price) VALUES
('Tagpakken','5,0 x 100 mm. Skruer 100 stk.','Til taglægter', 180);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','Hulbånd 1x20 mm. 10 mtr.','Vindkryds på spær', 160);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','Universal 190 mm højre','Beslag til spær på rem', 170);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','Universal 190 mm venstre','Beslag til spær på rem', 175);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','4,0 x 50 mm. beslagskruer 250 stk.','Skruer til universalbeslag + hulbånd', 550);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','Bræddebolt 10x120 mm.','Montering rem på stolper', 15);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','Firkantskiver 40x40x11 mm.','Montering rem på stolper', 10);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','4,5x60 mm. skruer 200 stk.','Skruer til montering af stern, vindskeder og vandbræt', 420);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','Stalddørsgreb 50x75 mm.','Til lås på dør i skur', 135);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','T hængsel 390 mm.','Til skur', 95);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','Vinkelbeslag 35','Til montering af løsholter i skur', 100);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','4,5 x 70 mm. skruer 400 stk.','Til montering af yderste beklædning', 600);

insert into materials (category, name, description, price) VALUES
('Beslag & skruer','4,5 x 50 mm. skruer 300 stk.','Til montering af inderste beklædning', 450);

insert into materials (category, name, description, price) VALUES
('Tagpakken','Plastmo sort 1200x1200 mm. ','Tagplade', 300);

insert into materials (category, name, description, price) VALUES
('Tagpakken','Plastmo gennemsigtig 1200x1200 mm. ','Tagplade', 300);

insert into materials (category, name, description, price) VALUES
('Tagpakken','Plastmo hvid 1200x1200 mm. ','Tagplade', 300);

insert into materials (category, name, description, price) VALUES
('Tagpakken','Tagpap','Tagpap sort', 100);

insert into materials (category, name, description, price) VALUES
('Tagpakken','Tagplade','Trapez plast sort', 100);
