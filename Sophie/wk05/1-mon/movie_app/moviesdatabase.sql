CREATE DATABASE movies_database

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(300),
  year VARCHAR(10),
  rated VARCHAR(10),
  genre VARCHAR(100),
  director VARCHAR(300),
  actors VARCHAR(200),
  plot VARCHAR(800),
  movie_image_url VARCHAR(400)
);

conn = PG.connect(dbname: 'movies_database')
sql= "INSERT INTO movies (title, year, rated, genre, director, actors, plot, movie_image_url) VALUES ('#{@movie_data['Title']}','#{@movie_data['Year']}','#{@movie_data['Rated']}','#{@movie_data['Genre']}','#{@movie_data['Director']}','#{@movie_data['Actors']}', '#{@movie_data['Plot']}', '#{@movie_data['Poster']}';"
conn.exec(sql)
conn.close
