module SuperModel
  
  module Validations
    
    def self.validators
      @validators ||= []
    end
    
    def self.register(validator_class)
      validators << validator_class unless validators.include?(validator_class)
    end
    
  end
  
end


class Foo
  include SuperModel::Validations
  
  
end


p SuperModel::Validations.validators
p Foo::Validations.validators