require 'super_model/error/type'

class SuperModel
  class Error
    
    class ProcType < Type
      valid_types Proc
      valid_methods :call
    end
    
  end
end
