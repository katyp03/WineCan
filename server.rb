require 'sinatra'
require 'sinatra/activerecord'
set :database, {adapter: "sqlite3", database: "db/wineCan.db"}
require './models'
require 'sinatra/flash'
require 'bundler/setup'
enable :sessions

before do
	if session[:user_id]
		@current_user = User.find(session[:user_id])
	end
end

get '/' do
  
  erb :home
end

post '/sign_in' do
	@user = User.find_by(username: params[:username])
	if @user && @user.password == params[:password]
		session[:user_id] = @user.id
		redirect '/'
	else
		flash[:alert] = "username/password combination does not exist"
		redirect '/'
	end
end

get '/sign_out' do
	session[:user_id] = nil
	redirect '/'
end

post '/search' do
	@user = User.find_by(username: params[:search])
	if @user
	redirect '/user/' + params[:search]
	else
	flash[:alert] = "no users by that name"
	redirect '/'
	end
end

post '/comment' do
	Comment.create([{body: params[:comment], user_id: @current_user.id}, post_id: params[:post]])
end

get '/user/:user' do
	@user = User.find_by(username: params[:user].to_sym)
	erb :profile
end

get '/post/:post' do
	@post = Post.find_by(id: params[:post])
	erb :post
end