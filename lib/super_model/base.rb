class SuperModel
  
  # The Base module for SuperModel classes.
  # 
  # Objects can include or extend SuperModel::Base.
  module Base
    
    # # Extend ClassMethods when SuperModel::Base is extended.
    # def self.included(receiver)
    #   receiver.extend(ClassMethods)
    # end
    # 
    # # Extend ClassMethods when SuperModel::Base is included.
    # def self.extended(receiver)
    #   receiver.extend(ClassMethods)
    # end
    
  end
  
end