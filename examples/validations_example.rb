require 'bundler/setup'
require 'super_model'

# class User < SuperModel
#   
# end

require 'super_model/validations/uniqueness'
require 'super_model/validations/length'
require 'super_model/validations/format'

p SuperModel::Validations.validators
