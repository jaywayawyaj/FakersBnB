require 'data_mapper'

class User
  include Data_Mapper::Resource

property :id, Serial
property :email, String
property :password, BCryptHash

end
