module Dimension
	class Dimension
		def initialize(obj)
			@obj = obj
		end

		def width
			send @obj, @obj.class.width_method
		end

		def height
		end
	end
end