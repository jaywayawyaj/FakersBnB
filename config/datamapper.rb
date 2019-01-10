require './lib/user'
require_relative '../lib/property'
require 'data_mapper'

DataMapper.setup(:default, "postgres://localhost/fakers_bnb_development")
DataMapper.finalize
DataMapper.auto_migrate!
