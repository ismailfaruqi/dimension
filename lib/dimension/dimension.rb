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

		def length
			@obj.send @obj.class.length_method
		end

		def radius
			@obj.send @obj.class.radius_method
		end

		def area
			@obj.class.area_method.call(@obj)
		end

		def volume
			@obj.class.volume_method.call(@obj)
		end

		def surface_area
		end

		def circumference
			@obj.class.circumference_method.call(@obj)
		end

		def shape
		end

		def arity
		end
	end
end