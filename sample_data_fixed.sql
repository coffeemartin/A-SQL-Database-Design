pragma foreign_keys = 1;

INSERT INTO GameTitle (title, release_year, platform, price) 
VALUES 
('FIFA 22', 2021, 'Sony PS4', 99.95),
('FIFA 22', 2021, 'Sony PS5', 109.95),
('FIFA 22', 2021, 'Xbox Series X', 129.95),
('Disco Elysium - The Final Cut',2019,'PC',119.90),
('Disco Elysium - The Final Cut',2018,'PC',109.90),
('Angry Birds Star Wars', 2013, 'Xbox One', 25.99),
('Half-Life: Alyx',2020,'PC',84.95),
('Valheim',2021,'XBox',80.0),
('Valheim',2020,'Sony PS4',60.0),
('Valheim',2019,'Sony PS4',45.0),
('Back 4 Blood', 2021, 'Sony PS5', 99.95),
('Back 4 Blood', 2021, 'Sony PS4', 79.95);

INSERT INTO GameLicense(title,release_year,platform,license_id) 
VALUES 
('Valheim',2020,'Sony PS4','12342'),
('Valheim',2020,'Sony PS4','22343'),
('Valheim',2020,'Sony PS4','76236'),
('Valheim',2020,'Sony PS4','40264'),
('FIFA 22',2021,'Sony PS4','52199'),
('FIFA 22',2021,'Sony PS4','35398'),
('FIFA 22',2021,'Sony PS5','83179'),
('FIFA 22',2021,'Sony PS5','52131'),
('FIFA 22',2021,'Sony PS5','46578'),
('FIFA 22',2021,'Xbox Series X','80398'),
('FIFA 22',2021,'Xbox Series X','15527'),
('FIFA 22',2021,'Xbox Series X','71811'),
('FIFA 22',2021,'Xbox Series X','43928'),
('Half-Life: Alyx',2020,'PC','00130'),
('Angry Birds Star Wars',2013,'Xbox One','20246');

INSERT INTO Gamer(gamer_id,first_name,last_name,email) 
VALUES
(11,'Bobby','Simpson','bobby@mail.com'),
(12,'Cherry','Tan','tanc@qq.com'),
(13,'Vishnu','Patel','vp@logic.com'),
(14,'Angel','Gomez','agom@edu.au');

INSERT INTO 
gameRental(gamer_id,license_id,date_out,date_back,rental_cost) 
VALUES 
(11,'20246','2021-08-01 12:33:00','2021-08-08 12:00:11',5.0),
(11,'12342','2021-08-09 07:02:01','2021-08-11 13:04:03',9.75423611048609),
(11,'76236','2021-08-18 13:00:00','2021-08-20 12:00:05',8.87517361203209),
(11,'80398','2021-08-27 12:45:45','2021-09-01 11:13:12',35.0699002592871),
(11,'80398','2021-09-03 11:00:05','2021-09-04 08:00:00',8.68493648930802),
(11,'71811','2021-09-11 08:11:12','2021-09-13 08:05:11',15.96785188280861),
(12,'00130','2021-09-15 08:32:23','2021-09-18 10:15:44',16.04734661460971),
(12,'71811','2021-09-15 08:32:23',NULL,NULL);
