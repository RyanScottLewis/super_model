require 'spec_helper'

puts "=-=-=-="
puts "=-=-=-="
p SuperModel::VERSION
puts "=-=-=-="
puts "=-=-=-="


class User
  
end

class Photo < SuperModel
  belongs_to :user
end

describe Photo do
  
  let(:user) { User.new }
  
  describe '#user' do
    
  end
  
  describe '#user_id' do
    
  end
  
end
