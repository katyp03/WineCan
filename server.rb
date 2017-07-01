require 'sinatra'
require 'sinatra/activerecord'
set :database, {adapter: "sqlite3", database: "db/wineCan.db"}
require './models'

# get '/' do
  
# end