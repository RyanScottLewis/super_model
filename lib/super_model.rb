require 'version'
require 'super_model/validations'
require 'super_model/associations'

# TODO: SuperModel DESCRIPTION HERE!
# 
# Objects can subclass SuperModel.
class SuperModel
  
  is_versioned
  
  extend SuperModel::Associations
  extend SuperModel::Validations
  
  def initialize(attributes={})
    attributes.each { |name, value| send("#{name}=", value) }
  end
  
end
