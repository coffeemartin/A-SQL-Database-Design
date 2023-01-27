CREATE TABLE GameTitle(
title TEXT,
release_year INTEGER,
platform TEXT,
price REAL,
PRIMARY KEY (title, release_year, platform)
);

CREATE TABLE GameLicense(
title TEXT,
release_year INTEGER,
platform TEXT,
license_id TEXT PRIMARY KEY 
CHECK (
length(license_id)=5
AND 
license_id GLOB '[0-9][0-9][0-9][0-9][0-9]'
AND
((substr((license_id),1,1)+ substr((license_id),2,1)*3 + substr((license_id),3,1) + substr((license_id),4,1)*3)%10 = 
cast(substr((license_id),5,1)as integer))
)
);

CREATE TABLE Gamer (
gamer_id INTEGER PRIMARY KEY,
first_name TEXT,
last_name TEXT,
email TEXT
)
;

CREATE TABLE gameRental (
gamer_id INTEGER,
license_id TEXT,
date_out TEXT,
date_back TEXT,
rental_cost REAL,
FOREIGN KEY (gamer_id) REFERENCES Gamer (gamer_id)
ON UPDATE CASCADE,
FOREIGN KEY (license_id) REFERENCES GameLicense (license_id)
)
;