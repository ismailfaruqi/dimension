module Dimension
	module D2
		def self.included(base)
			base.extend(ClassMethods)
		end

		def area
			dimension_d2_rectangle_width * dimension_d2_rectangle_height
		end

		def circumference
		end

		def dimension
			@dimension || Dimension.new(self)
		end

		def count
			2
		end

		module ClassMethods
			attr_accessor :width_method
			attr_accessor :height_method
			attr_accessor :area_method
			attr_accessor :radius_method

			def acts_as_rectangle(args)
				validate_rectangle_args(args)
				self.width_method = args[:width]
				self.height_method = args[:height]
				self.area_method = Proc.new { |x, y|
					x * y
				}
			end

			def acts_as_circle(args)
				validate_circle_args(args)
				self.radius_method = args[:radius]
				self.area_method = Proc.new { |x|
					Math.PI * x ^ 2
				}
			end

			private

			def validate_rectangle_args(args)
				raise InvalidArgumentException.new('validate_rectangle_args need both :width and :height arguments to be set') if args[:width].nil? || args[:height].nil?
			end

			def validate_circle_args(args)
				raise InvalidArgumentException.new('validate_circle_args need :radius argument to be set') if args[:radius]
			end
		end
	end
end