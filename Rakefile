require 'pg'

if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new :spec

  task default: [:spec]

  task :setup do
  p "Creating databases..."

    ['makersbnb_test'].each do |database|
      connection = PG.connect
      connection.exec("CREATE DATABASE #{ database };")
      connection = PG.connect(dbname: database)
      # connection.exec("CREATE TABLE booking(id SERIAL PRIMARY KEY, text VARCHAR(60), time VARCHAR(60));")
    end
  end
end
