# app.rb
require 'bundler/setup'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader' if development?

set :database_file, 'config/database.yml'


before do
	@users = Barber.order 'created_at DESC'
end

class User < ActiveRecord::Base
end

class Client < ActiveRecord::Base

end
class Barber < ActiveRecord::Base
end
class Audit < ActiveRecord::Base
end
get '/' do
	erb :index
end

get '/new' do
	erb :new
end

post '/new' do
	@name = params[:name]

	Barber.create :name => @name

	erb :index
end

get '/book' do
	erb :book
end

post '/book' do

	@name = params[:name]
	@phone = params[:phone]
	@dresser = params[:dresser]
	@datetime = params[:datetime]
	@color = params[:colorpicker]

	c = Client.new

	c.name = @name
	c.phone = @phone
	c.datestamp = @datetime
	c.barber = @dresser
	c.color = @color
		erb 'Thank you. Your request has been submitted!'


end