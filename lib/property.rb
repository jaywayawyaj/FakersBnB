require 'data_mapper'

class Property
  include DataMapper::Resource

  property :id,  Serial
  property :name, String
  property :description, String
  property :price, Integer

end
