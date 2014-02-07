module Dimension
	class Dimension
		def initialize(obj)
			@obj = obj
		end

		def width
			@obj.send @obj.class.width_method
		end

		def height
			@obj.send @obj.class.height_method
		end

		def area
			@obj.class.area_method.call(self.width, self.height)
		end

		def shape
		end

		def arity
		end
	end
end