require 'pg'

if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new :spec

  task default: [:spec]

  task :test_database_setup do
  # p "Cleaning database..."

  connection = PG.connect(dbname: 'makersbnb_test')
  # connection.exec("TRUNCATE booking;")
  end

end

task :setup do
  p "Creating databases..."

  ['makersbnb'].each do |database|
    connection = PG.connect
    connection.exec("CREATE DATABASE #{ database };")
    connection = PG.connect(dbname: database)
  end

  ['makersbnb_test'].each do |database|
    connection = PG.connect
    connection.exec("CREATE DATABASE #{ database };")
    connection = PG.connect(dbname: database)
  end
end

task :drop_databases do
  p "Destroying makersbnb databases. This will remove all data in those databases!"

  ['makersbnb', 'makersbnb_test'].each do |database|
    connection = PG.connect
    connection.exec("DROP DATABASE #{ database }")
  end
end
