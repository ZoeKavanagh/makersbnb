require 'data_mapper'
require 'pg'

p 'loading datamapper'

if ENV['RACK_ENV'] == 'test'
  DataMapper.setup(:default, 'postgres://localhost/makersbnb_test')
else
  DataMapper.setup(:default, 'postgres://localhost/makersbnb')
end

DataMapper.finalize()
