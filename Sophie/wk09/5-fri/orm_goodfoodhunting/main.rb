
require 'sinatra'
require 'sinatra/reloader'

require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/comment'
require_relative 'models/dish_type'
require_relative 'models/user'

enable :sessions

get '/' do
  @dishes = Dish.all
  erb :index
end

get '/dishes/new' do
  erb :new
end


get '/dishes/:id' do
  redirect '/login' unless logged_in?

  @dish = Dish.find(params[:id])
  @comment = Comment.where(dish_id: @dish.id)
  erb :show
end

get'/dishes/:id/edit' do
  @dish = Dish.find(params[:id])
  erb :edit
end

post '/dishes' do
  #add new record to dishes table
  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.save
  redirect '/'
end

delete '/dishes/:id' do
  dish = Dish.find(params[:id])
  dish.destroy
  redirect '/'
end

put '/dishes/:id' do
  dish = Dish.find(params[:id])
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.save
  #redirect "dishes/' + #{params[:id]}"
  redirect "dishes/#{params[:id]}"
end

post '/comments' do
  comment = Comment.new
  comment.body = params[:body]
  comment.dish_id = params[:dish_id]
  comment.save
  redirect "/dishes/#{comment.dish_id}"
end

get '/login' do
  erb :login
end

post '/session' do
  #check email exists
  user = User.find_by(email: params[:email])
  #have a user and authenticate return truthy
  #check password
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id #just a hash
    redirect '/'
  else
    erb :login
  end
end

delete '/session' do
  session[:user_id] = nil
  redirect '/login'
end


helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in? #this method returns a boolean
    !!current_user # !! negates the current_user converting it to a true or false
  #   if session[:user_id]
  #     return true
  #   else
  #     return false
  #   end
  end
end
