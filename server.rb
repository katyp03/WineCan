require 'sinatra'
require 'sinatra/activerecord'
set :database, {adapter: "sqlite3", database: "db/wineCan.db"}
require './models'

get '/' do
  # @users = User.all
  erb :home
end

# get '/user/:id' do
#   @user = User.find(params[:id])
#   erb :profile
# end