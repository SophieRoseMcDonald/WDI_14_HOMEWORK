-- dish (name, image_url, location, user)
CREATE DATABASE goodfoodhunting;

CREATE TABLE dishes (
  id SERIAL PRIMARY KEY,
  name VARCHAR(300),
  image_url VARCHAR(400)
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  body VARCHAR(500) NOT NULL,
  dish_id INTEGER NOT NULL,
  FOREIGN KEY (dish_id) REFERENCES dishes (id) ON DELETE RESTRICT
);

-- Foreign key will handle the comment in the database when you go to delete a post that has a comment or child/related element

INSERT INTO dishes (name,image_url) VALUES ('pudding','https://www.justonecookbook.com/wp-content/uploads/2016/09/Japanese-Pudding-II-600x900.jpg');

-- #NOT NULL force user to enter information

CREATE TABLE dish_types (
  id SERIAL PRIMARY KEY,
  name VARCHAR(300) NOT NULL
);


CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(300) NOT NULL,
  password_digest VARCHAR(400)
);
