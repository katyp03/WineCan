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
  @i =0
  @last_post = Post.last.id
  @post = Post.find(@last_post)
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
	flash[:search] = "no users by that name"
	redirect '/'
	end
end

post "/newuser" do
	User.create(email: params[:email], password: params[:password], username: params[:username], bio: params[:bio], hometown: params[:hometown], avatar_id: params[:avatar_id].to_i)
	@user = User.find_by(username: params[:username])
	session[:user_id] = @user.id
	redirect '/'
end

post '/newpost' do
	Post.create(title: params[:title], body: params[:body], image: params[:image], user_id: @current_user.id)
	@post = Post.find_by(title: params[:title])
	redirect '/post/' + @post.id.to_s
end

post '/comment' do
	Comment.create(body: params[:body], user_id: @current_user.id, post_id: params[:post_id].to_i)
	redirect '/post/' + params[:post_id]
end

get '/user/:user' do
	@user = User.find_by(username: params[:user].to_sym)
	erb :profile
end

get '/post/:post' do
	@post = Post.find_by(id: params[:post])
	
	erb :post
end
get '/post/:post/delete' do
@post = Post.find_by(id: params[:post])
@user = User.find_by(id: @post.user_id).username
@post.destroy
redirect '/user/' + @user
end