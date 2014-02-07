module Dimension
	module D2
		def self.included?(base)
			base.extend(ClassMethods)
		end

		def area
			dimension_d2_rectangle_width * dimension_d2_rectangle_height
		end

		def circumference
		end

		def weight
		end

		def height
		end

		module ClassMethods
			def act_as_rectangle(args)
				validate_rectangle_args(args)
				class << self
					alias :dimension_d2_rectangle_width args[:width]
					alias :dimension_d2_rectangle_height args[:height]
				end
			end

			def act_as_circle(args)
				validate_circle_args(args)
				class << self
					alias :dimension_d2_circle_radius args[:radius]
				end
			end

			private

			def validate_rectangle_args(args)
				raise InvalidArgumentException.new if args[:width].blank? || args[:height].blank?
			end

			def validate_circle_args(args)
				raise InvalidArgumentException.new if args[:radius]
			end
		end
	end
end