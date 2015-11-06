class Image 
	attr_reader :width, :height

	def initialize(image)
	 @image = image
   @width = @image[0].length - 1
   @height = @image.length - 1
	end

  # takes @image array and outputs pixels
  def output_image 
    @image.each do |array|
      puts array.join("")
    end
  end

  #takes @image array and finds the position of the pixels with value of 1
	def find_ones
    ones = []
		@image.each_with_index do |row, row_index|
  			row.each_with_index do |pixel, col_index|
    			#puts "element [#{xi}, #{yi}] is #{y}"
    			if pixel==1
            ones.push [row_index, col_index]
          end
  			end
		end
    ones
  end

  #takes the array with positions of ones and modifies the pixels to the left, right, top and bottom to 1
  def blur_image
    pixels_to_change = find_ones

    pixels_to_change.each do |row_index, col_index|
      can_move_left = col_index != 0
      can_move_right = col_index != width
      can_move_up = row_index != 0
      can_move_down = row_index != height

      @image[row_index][col_index - 1] = 1 if can_move_left
      @image[row_index][col_index + 1] = 1 if can_move_right
      @image[row_index - 1][col_index] = 1 if can_move_up
      @image[row_index + 1][col_index] = 1 if can_move_down
    end
  end   
end		

image = Image.new([
      [0, 0, 0, 0, 0],
      [0, 1, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 0, 0, 1]
    ])

image.blur_image
image.output_image


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.blur_image
image.output_image
