# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

##### BEGIN USER CLASS ####
class User
	
	attr_accessor :name

	ALL = []

	def initialize(name)
	 @name = name
	 ALL << self
	end

	def self.all
		ALL
	end

	def photos
		Photo.all.select do |photo|
			photo.user == self
		end
	end

	def make_comment(message, photo)
		Comment.new(message, self, photo)
	end

	def comments
		Comment.all.select do |comment|
			comment.user == self
		end
	end

end
##### END USER CLASS ####

##### BEGIN PHOTO CLASS ####
class Photo
	
	attr_reader :user, :comments

	ALL = []

	def initialize(user)
		@user = user
		ALL << self
	end

	def self.all
		ALL
	end

	def comments
		Comment.all.select do |comment|
			comment.photo == self
		end
	end
end
##### END PHOTO CLASS ####

##### BEGIN COMMENT CLASS ####
class Comment
	
	attr_reader :user, :photo

	ALL = []

	def initialize(message, user, photo)
		@message = message
		@user = user
		@photo = photo
		ALL << self
	end

	def self.all
		ALL
	end
end
##### END COMMENT CLASS ####

user = User.new("Sophie")
photo = Photo.new(user)
photo2 = Photo.new(user)
user.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch", photo)

puts photo.user.name
# => "Sophie"
puts user.photos
# => [<photo 1>]

puts Comment.all

puts photo.comments

user.make_comment("kljdfalkdjfhlkdfjhd", photo2)

puts photo2.comments
# => [<comment1>]

puts Comment.all


