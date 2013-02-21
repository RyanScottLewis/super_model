require 'bundler/setup'
require 'super_model'

class User < SuperModel
  
  has_one :photo
  has_many :photos
  
end

class Photo < SuperModel
  
  belongs_to :user
  
end


p1 = Photo.new
p2 = Photo.new

u = User.new( photo: p1, photos: [p1, p2] )

p u.photo.user

p u.photo == p1

u.photo_id = p2.object_id # TODO: Wait.. this is wrong.. the BelongsTo association holds the ASSOCIATION_id methods....

p u.photo == p2

p u.photos

u.photos = [p1, p2]

p u.photos

p u.photo_ids