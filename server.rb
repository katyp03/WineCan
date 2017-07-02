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
# get '/user/:id' do
#   @user = User.find(params[:id])
#   erb :profile
# end