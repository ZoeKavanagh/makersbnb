if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rale_task'

  RSpec::Core::RakeTask.new :spec

  task default: [:spec]
end
