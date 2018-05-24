require 'pg'

the_databases = ['makersbnb', 'makersbnb_test']


if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new :spec

  task default: [:spec]

  task :test_database_setup do
    connection = PG.connect(dbname: the_databases[1])
  end
end

task :setup do
  connection = PG.connect

  p "Destroying #{the_databases[0]} and recreating it..."

  connection.exec("DROP DATABASE #{the_databases[0]};")
  connection.exec("CREATE DATABASE #{the_databases[0]};")

  p "All done."
end
