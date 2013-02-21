require 'super_model/error/type'

class SuperModel
  class Error
    
    class InvalidPlurality < Error
      
      def self.check(object)
        raise self unless [:singular, :plural].include?(object)
      end
      
      def to_s
        '`plurality` must be either :singular or :plural'
      end
      
    end
    
  end
end
