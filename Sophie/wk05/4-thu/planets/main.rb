
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

get '/planets/new' do
erb :new
end

get '/planets/:id' do
conn = PG.connect(dbname: 'planets')
sql= "SELECT * FROM planets WHERE ID = #{params[:id]}; "
@planet = conn.exec(sql).first
conn.close
# @planets = params[:id]
#get a single planet with this id
#and display it in the show template
erb :show
end

post '/planets' do
conn = PG.connect(dbname: 'planets')
sql= "INSERT INTO planets (name, image_url) VALUES ('#{params[:name]}','#{params[:image_url]}');"
conn.exec(sql)
conn.close
redirect '/'
end

get '/' do
conn = PG.connect(dbname: 'planets')
sql= "SELECT * FROM planets; "
@planets = conn.exec(sql)
conn.close
erb :index
end

post '/planets/:id/delete' do
# return "deleting fish planet #{params[:id]}"
conn = PG.connect(dbname: 'planets')
sql= "DELETE FROM planets WHERE ID = #{params[:id]}; "
@planet = conn.exec(sql).first
conn.close
redirect '/'
end
