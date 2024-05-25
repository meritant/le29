# Rakefile
require 'bundler/setup'
require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  task :environment do
    require './app'
  end
end

namespace :db do
  desc "Create a migration (example: rake db:create_migration NAME=create_users)"
  task :create_migration, [:name] => :environment do |t, args|
    if args[:name].nil?
      puts "You must specify a migration name. Example: rake db:create_migration NAME=create_users"
    else
      system "bundle exec rake db:create_migration NAME=#{args[:name]}"
    end
  end
end
