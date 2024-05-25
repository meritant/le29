# app.rb
require 'bundler/setup'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader' if development?

set :database_file, 'config/database.yml'

class User < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

get '/' do
	@users = User.all
	erb :index
end
