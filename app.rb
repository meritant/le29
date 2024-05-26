# app.rb
require 'bundler/setup'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader' if development?

set :database_file, 'config/database.yml'


before do
	@barber = Barber.all
end

class User < ActiveRecord::Base
end

class Client < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 3 }
	validates :phone, { presence: true }
	validates :datestamp, { presence: true }
	validates :color, { presence: true }


end
class Barber < ActiveRecord::Base
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
	@c = Client.new
	erb :book
end

post '/book' do

	@c = Client.new params[:client]
	if @c.save
		erb 'Thank you. Your request has been submitted!'

	else
		@error = @c.errors.full_messages.first
		erb :book
		end
end

get '/barber/:id' do

@dresser = Barber.find params[:id]

	erb :barber
end

get '/bookings' do

	@clients = Client.all

erb :bookings
end

get '/client/:id' do
	@client=Client.find params[:id]

	erb :client
end