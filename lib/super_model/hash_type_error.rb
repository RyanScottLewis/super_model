require 'super_model/type_error'

class SuperModel
  
  class HashTypeError < TypeError
    valid_types Hash
    valid_methods :to_hash, :to_h
  end
  
end
