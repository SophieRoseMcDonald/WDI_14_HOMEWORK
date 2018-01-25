
require 'sinatra'
# require 'sinatra/reloader'
require 'httparty'
require 'pg'

get '/' do
  erb :index
end

get '/movie_index' do
  result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&s=#{params[:movie]}")
  @movie_index_data = result["Search"]
erb :movie_index
end

get '/movie' do
  result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&t=#{params[:movie]}")
  @movie_data = result.parsed_response
  #@movie_data = result
  conn = PG.connect(dbname: 'movies_database')
  sql= "INSERT INTO movies(title, year, rated, genre, director, actors, plot, movie_image_url) VALUES ('#{@movie_data['Title']}','#{@movie_data['Year']}','#{@movie_data['Rated']}','#{@movie_data['Genre']}','#{@movie_data['Director']}','#{@movie_data['Actors']}', '#{@movie_data['Plot']}', '#{@movie_data['Poster']}';"
  @movie_history = conn.exec(sql).first
  conn.close
  erb :movie
end
# get '/movie' do
#   file = File.open('movie_history.txt', 'a')
#   file.puts(params[:movie])
#   file.close
#   result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&t=#{params[:movie]} ")
#   @movie_data = result.parsed_response
#   erb :movie
# end

#
# get '/movie_history' do
#   file = File.readlines('movie_history.txt')
#   @list = file
#   erb :movie_history
# end
