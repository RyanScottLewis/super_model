require 'super_model/type_error'

class SuperModel
  
  class IntegerTypeError < TypeError
    valid_types Integer
    valid_methods :to_int, :to_i
  end
  
end
