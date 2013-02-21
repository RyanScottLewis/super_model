require 'super_model/associations'

class SuperModel
  module Associations
    
    module HasMany
      
      def has_many(resource_name, options={})
        
        options[:resource_name] ||= SuperModel::Associations.sanitize_resource_name( resource_name, :pluralize )
        options[:foreign_key] ||= SuperModel::Associations.foreign_key_for( options[:resource_name], :pluralize )
        
        SuperModel::Associations.def_foreign_key_methods( self, options[:foreign_key] )
        
        SuperModel::Associations.def_association_methods(
          class: self,
          resource_name: options[:resource_name],
          foreign_key: options[:foreign_key],
          getter_proc: Proc.new do
            instance_variable_get("@#{ options[:foreign_key] }").collect { |id| ObjectSpace._id2ref(id) } if instance_variable_defined?("@#{ options[:foreign_key] }")
          end,
          setter_proc: Proc.new do |collection|
            send( "#{ options[:foreign_key] }=", collection.collect(&:object_id) )
          end
        )
        
      end
      
    end
    
  end
end
