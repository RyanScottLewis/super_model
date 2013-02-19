require 'super_model/validations'

module SuperModel
  
  class Base
    
    def self.inherited(subclass)
      Validations.register(subclass)
    end
    
  end
  
end