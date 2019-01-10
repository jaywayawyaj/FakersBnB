require './lib/user'

DataMapper.setup(:default, "postgres://localhost/fakers_bnb_development")
DataMapper.finalize
DataMapper.auto_migrate!
