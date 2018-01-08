
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  erb :index
end

get '/movie_input' do
  result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&t=#{params[:movie]}")
  @film = result.parsed_response
  erb :movie
end

get '/about' do
  erb :about
end
