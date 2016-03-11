-- SQL (PostgreSQL) code
-- Used for extracting the country each data point is observed in

update outside_tracker
set country_id=(
	  select country_id
	  from world_cities
	  where st_within(ST_POINT(LONGITUDE, LATITUDE), geom)=true
	  limit 1
);

