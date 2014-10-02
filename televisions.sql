-- In case there is already a televisions_lab database, drop it
DROP DATABASE IF EXISTS televisions_lab;
-- Create a televisions_lab database
CREATE DATABASE televisions_lab;
-- Connect to the televisions_lab databases
\c televisions_lab

-- Create a tv_models table
--  The table should have id, make, model, screen_size, resolution,
--  price, release_date, photo_url
CREATE TABLE tv_models (
  id SERIAL PRIMARY KEY,
  make TEXT,
  model TEXT,
  screen_size VARCHAR(80),
  resolution VARCHAR(80),
  price FLOAT,
  release_date DATE,
  photo_url VARCHAR(80)
);


-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns
ALTER TABLE tv_models 
  DROP COLUMN resolution;
ALTER TABLE tv_models 
  ADD vertical_resolution VARCHAR(80);
ALTER TABLE tv_models 
  ADD horizontal_resolution VARCHAR(80);

-- Insert 10 televisions into the tv_models table

INSERT INTO tv_models 
  (make, model, screen_size, horizontal_resolution, vertical_resolution, price, release_date, photo_url) 
  VALUES 
  ('Vizio','SL-123','1080p','32in','26in','999.99','2001-01-01','http://www.reddit.com');

INSERT INTO tv_models 
  (make, model, screen_size, horizontal_resolution, vertical_resolution, price, release_date, photo_url) 
  VALUES 
  ('Sony','Sony-345','720p','40in','20in','459.89','2004-04-02','http://www.sony.com');

INSERT INTO tv_models 
  (make, model, screen_size, horizontal_resolution, vertical_resolution, price, release_date, photo_url) 
  VALUES 
  ('LG','LG-320','1080p','32in','24in','1099.99','2007-04-02','http://www.lg.com');

INSERT INTO tv_models 
  (make, model, screen_size, horizontal_resolution, vertical_resolution, price, release_date, photo_url) 
  VALUES 
  ('Samsung','UN40H6350','1080p','40-Inch','24in','1099.99','2007-04-02','http://www.amazon.com/Samsung-UN40H6350-40-Inch-1080p-120Hz/dp/B00I94ISS0/');

INSERT INTO tv_models 
  (make, model, screen_size, horizontal_resolution, vertical_resolution, price, release_date, photo_url) 
  VALUES 
  ('Vizio','E500i-B1','1080p','50-Inch','23in','1099.99','2007-04-02','http://www.amazon.com/VIZIO-E500i-B1-50-Inch-1080p-Smart/dp/B00GKKI4IE/');

INSERT INTO tv_models 
  (make, model, screen_size, horizontal_resolution, vertical_resolution, price, release_date, photo_url) 
  VALUES 
  ('Toshiba','32L1400U','720p','32-Inch','17.3in','189.99','2007-04-02','http://www.amazon.com/Toshiba-32L1400U-32-Inch-720p-60Hz/dp/B00I0S72JQ/');

INSERT INTO tv_models 
  (make, model, screen_size, horizontal_resolution, vertical_resolution, price, release_date, photo_url) 
  VALUES 
  ('Sharp','LC-32LE451U','720p','32-Inch','17.3in','179.99','2008-04-02','http://www.amazon.com/Sharp-LC-32LE451U-32-inch-Aquos-720p/dp/B00IN2WDFW/');

INSERT INTO tv_models 
  (make, model, screen_size, horizontal_resolution, vertical_resolution, price, release_date, photo_url) 
  VALUES 
  ('Seiki','SE39UY04','4k Ultra HD','39-Inch','17.3in','599.99','2008-04-02','http://www.amazon.com/Seiki-SE39UY04-39-Inch-Ultra-120Hz/dp/B00DOPGO2G/');

INSERT INTO tv_models 
  (make, model, screen_size, horizontal_resolution, vertical_resolution, price, release_date, photo_url) 
  VALUES 
  ('LG','55LB6300','1080p','55-Inch','17.3in','599.99','2014-04-02','http://www.amazon.com/LG-Electronics-55LB6300-55-Inch-1080p/dp/B00II6VW3M/');

INSERT INTO tv_models 
  (make, model, screen_size, horizontal_resolution, vertical_resolution, price, release_date, photo_url) 
  VALUES 
  ('Samsung','PN60F8500','1080p','60-Inch','34.3in','2397.99','2014-04-02','http://www.amazon.com/Samsung-PN60F8500-60-Inch-1080p-Plasma/dp/B00BCPGZOM/');



-- Select all entries from the tv_models table
SELECT * FROM tv_models























