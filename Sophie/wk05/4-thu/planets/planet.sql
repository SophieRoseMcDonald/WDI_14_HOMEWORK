-- dish (name, image_url, location, user)
CREATE DATABASE planets

CREATE TABLE planets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(300),
  image_url VARCHAR(400)
);

INSERT INTO planets (name,image_url) VALUES ('venus','url'
