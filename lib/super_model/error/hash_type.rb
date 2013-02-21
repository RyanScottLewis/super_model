require 'super_model/error/type'

class SuperModel
  class Error
    
    class HashType < Type
      
      def self.check(object, options={})
        super
        
        raise self unless options[:required_keys].is_a?(Array) && options[:required_keys].all? { |key| object.has_key?(key) }
        
        object
      end
      
      valid_types Hash
      valid_methods :to_hash, :to_h
    end
    
  end
end
