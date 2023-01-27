CREATE VIEW GamerRentalSummary AS 
select gamer_id, first_name||" "||last_name as gamer_name, title as game_title, release_year as game_release_year, 
platform as game_platform, count(*) as times_rented, printf("%.2f",sum(rental_cost)) as total_rental_cost from gamerental JOIN gamer USING (gamer_id) JOIN GameLicense USING (license_id) WHERE date_back IS NOT NULL 
Group by gamer_id, title, release_year, platform;