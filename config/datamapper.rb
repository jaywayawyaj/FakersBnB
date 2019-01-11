require './lib/user'
require_relative '../lib/property'
require 'data_mapper'

DataMapper.setup(:default, "postgres://localhost/fakers_bnb_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_migrate!
