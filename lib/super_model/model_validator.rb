
def self.inherited(subclass)
  SuperModel::Validations.register(subclass)
end