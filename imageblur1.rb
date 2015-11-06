=begin
Creating Arrays, 
Accessing Elements, 
Obtaining Information about an Array, 
Adding Items to Arrays, 
Removing Items from an Array, 
Iterating over Array, 
Selecting Items from an Array

Also play with the following methods in the console, 
[]=, join, shuffle, sample, each and collect methods.
=end
class Image
	attr_accessor :image

	def initialize(image) 
		@image = image
	end 

	
	def output_image 
		@image.each do |array|
		puts array.join("")
		end
	end
end 
