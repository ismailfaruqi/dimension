module Dimension
	class Dimension
		def initialize(obj)
			@obj = obj
		end

		def width
			binding.pry
			send @obj, @obj.class.width_method
		end

		def height
		end
	end
end