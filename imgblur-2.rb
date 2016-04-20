class Image

	attr_accessor :image

	def initialize(image)
		self.image = image
	end

	def output_image
		self.image.each { |x| puts x.join }
	end

	def blur
		height = image.length
		width = image[0].length
		buffer = []
		
		image.length.times do |y|
			buffer[y] = []
			image[y].length.times do |x|
				if image[y][x] == 1
					buffer[y][x] = 1
				else
					buffer[y][x] = 0
				end
			end
		end

		image.each.with_index do |row, i|
  		row.each.with_index do |cell, j|
				if cell == 1
					if j+1 < width 
						buffer[i][j+1] = 1
					end
					if (j-1) >= 0 && (j-1) < width
				  	buffer[i][j-1] = 1
				  end
				  if i+1 < height
				  	buffer[i+1][j] = 1
				  end
				  if (i-1) >= 0 && (i-1) < height
				  	buffer[i-1][j] = 1
				  end
    		end
  		end
	end

	self.image = buffer
	output_image
	end

end

row1 = [0, 1, 0, 0]
row2 = [0, 0, 0, 0]
row3 = [0, 0, 0, 0]
row4 = [0, 0, 0, 0]
row5 = [0, 1, 0, 0]
row6 = [0, 0, 0, 0]

image = Image.new(
	[row1, row2, row3, row4, row5, row6]
)

image.blur