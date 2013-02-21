require 'super_model/error'

class SuperModel
  class Error
    
    class Type < Error
      
      class << self
        
        def valid_types(*types)
          @valid_types = types unless types.empty?
          @valid_types ||= []
        end
        
        def valid_methods(*method_names)
          @valid_methods = method_names unless method_names.empty?
          @valid_methods ||= []
        end
        
        def check(object, options={})
          type_assertion = valid_types.any? { |type| object.is_a?(type) } unless valid_types.empty?
          method_assertion = valid_methods.any? { |type| object.respond_to?(type) } unless valid_methods.empty?
          
          if type_assertion && method_assertion
            raise self unless type_assertion || method_assertion
          elsif type_assertion && !method_assertion
            raise self unless type_assertion
          elsif !type_assertion && method_assertion
            raise self unless method_assertion
          else
            # TODO
          end
          
          object
        end
        
      end
      
      def to_s
        messages = []
        messages << self.class.valid_types.collect { |type| "be a #{type}" }
        messages << self.class.valid_methods.collect { |method| "respond to #{method}" }
        messages.flatten!
        messages.last = "or #{messages.last}"
        
        message = "must #{messages.join(', ')}"
      end
      
    end
    
  end
end
