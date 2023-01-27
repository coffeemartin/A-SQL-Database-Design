CREATE TRIGGER PriceLogger AFTER UPDATE 
on gameRental
FOR EACH ROW
WHEN old.rental_cost IS NULL AND new.date_back is not NULL
BEGIN
     UPDATE gameRental
     SET rental_cost = 3 + 0.05 * (julianday(NEW.date_back) - julianday(OLD.date_out))* 
     (SELECT price FROM GameTitle JOIN GameLicense USING (title,release_year,platform) WHERE license_id = NEW.license_id)
     WHERE license_id = NEW.license_id AND rental_cost IS NULL;
 END;