require 'super_model/validations/acceptance'
require 'super_model/validations/confirmation'
require 'super_model/validations/date'
require 'super_model/validations/date_time'
require 'super_model/validations/exclusion'
require 'super_model/validations/format'
require 'super_model/validations/inclusion'
require 'super_model/validations/length'
require 'super_model/validations/numericality'
require 'super_model/validations/presence'
require 'super_model/validations/time'
require 'super_model/validations/uniqueness'

class SuperModel
  
  module Validations
    
    class << self
      
      def validators
        @validators ||= []
      end
      
      def register(validator_class)
        validators << validator_class unless validators.include?(validator_class)
      end
      
      def add_validations(receiver)
        receiver.extend(Acceptance::ClassMethods)
        receiver.extend(Confirmation::ClassMethods)
        receiver.extend(Date::ClassMethods)
        receiver.extend(DateTime::ClassMethods)
        receiver.extend(Exclusion::ClassMethods)
        receiver.extend(Format::ClassMethods)
        receiver.extend(Inclusion::ClassMethods)
        receiver.extend(Length::ClassMethods)
        receiver.extend(Numericality::ClassMethods)
        receiver.extend(Presence::ClassMethods)
        receiver.extend(Time::ClassMethods)
        receiver.extend(Uniqueness::ClassMethods)
      end
      
      def included(receiver)
        add_validations(receiver)
      end
      
      def extended(receiver)
        add_validations(receiver)
      end
      
    end
    
  end
  
end
