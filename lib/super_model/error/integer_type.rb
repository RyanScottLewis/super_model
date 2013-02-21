require 'super_model/error/type'

class SuperModel
  class Error
    
    class IntegerType < Type
      valid_types Integer
      valid_methods :to_int, :to_i
    end
    
  end
end
