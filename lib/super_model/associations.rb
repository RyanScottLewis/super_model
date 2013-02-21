require 'active_support/core_ext/string/inflections'
require 'super_model/associations/belongs_to'
require 'super_model/associations/has_many'
require 'super_model/associations/has_one'
require 'super_model/error/invalid_plurality'

class SuperModel
  
  # SuperModel::Associations adds associations for standard Ruby objects and
  # provides a base for ORMs to add their own association functionality.
  # 
  # This module must be included in a Class.
  module Associations
    
    class << self
      
      def sanitize_resource_name(resource_name, plurality)
        Error::InvalidPlurality.check(plurality)
        
        resource_name.to_s.send("#{ plurality }ize").underscore
      end
      
      def foreign_key_for(resource_name, plurality)
        Error::InvalidPlurality.check(plurality)
        
        "#{resource_name}_id".send("#{ plurality }ize")
      end
      
      def extend_with_associations(receiver)
        receiver.extend(HasOne)
        receiver.extend(HasMany)
        receiver.extend(BelongsTo)
      end
      
      def included(receiver)
        extend_with_associations(receiver)
      end
      
      def extended(receiver)
        extend_with_associations(receiver)
      end
      
    end
    
  end
  
end
