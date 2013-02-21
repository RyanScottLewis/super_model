require 'super_model/associations'
require 'super_model/error/hash_type'
require 'super_model/error/integer_type'
require 'super_model/error/proc_type'

class SuperModel
  module Associations
    
    module BelongsTo
      
      class << self
        
        def def_foreign_key_methods(options={})
          Error::HashType.check( options, required_keys: [:class, :foreign_key] )
          
          options[:class].instance_eval do
            attr_reader options[:foreign_key]
            
            define_method("#{ options[:foreign_key] }=") do |value|
              instance_variable_set( "@#{ options[:foreign_key] }", Error::IntegerType.check(value) )
            end
          end
        end
        
        def def_association_methods(options={})
          Error::HashType.check( options, required_keys: [:class, :resource_name, :getter_proc, :setter_proc] )
          Error::ProcType.check( options[:getter_proc] )
          Error::ProcType.check( options[:setter_proc] )
          
          options[:class].instance_eval do
            define_method( options[:resource_name], &options[:getter_proc] )
            define_method( "#{ options[:resource_name] }=", &options[:setter_proc] )
          end
        end
        
      end
      
      def belongs_to(resource_name, options={})
        options[:resource_name] ||= SuperModel::Associations.sanitize_resource_name( resource_name, :singular )
        options[:foreign_key] ||= SuperModel::Associations.foreign_key_for( options[:resource_name], :singular )
        
        BelongsTo.def_foreign_key_methods(
          class: self,
          foreign_key: options[:foreign_key]
        )
        
        BelongsTo.def_association_methods(
          class: self,
          resource_name: options[:resource_name],
          getter_proc: Proc.new do
            ObjectSpace._id2ref( instance_variable_get("@#{ options[:foreign_key] }") ) if instance_variable_defined?("@#{ options[:foreign_key] }")
          end,
          setter_proc: Proc.new do |value|
            send( "#{ options[:foreign_key] }=", value.object_id )
          end
        )
        
      end
      
    end
    
  end
end
