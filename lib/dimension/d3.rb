module Dimension
	module D3
		def self.included?(base)
			base.extend(ClassMethods)
		end

		def dimension
			@dimension || Dimension.new(self)
		end

		def count
			3
		end

		module ClassMethods
			attr_accessor :width_method
			attr_accessor :length_method
			attr_accessor :height_method
			attr_accessor :volume_method
			attr_accessor :radius_method

			def acts_as_block(args)
				validate_block_args(args)
				self.width_method = args[:width]
				self.height_method = args[:height]
				self.length_method = args[:length]
				self.volume_method = Proc.new { |obj|
					obj.dimension.width * obj.dimension.height * obj.dimension.length
				}
			end

			def acts_as_sphere(args)
				validate_sphere_args(args)
				self.radius_method = args[:radius]
				self.volume_method = Proc.new { |obj|
					Math::PI * obj.dimension.radius**3
				}
			end

			private

			def validate_block_args(args)
				raise InvalidArgumentException.new('validate_block_args need both :width, :length, and :height arguments to be set') if 
				args[:width].nil? || args[:height].nil? || args[:length].nil?
			end

			def validate_sphere_args(args)
				raise InvalidArgumentException.new('validate_sphere_args need :radius argument to be set') if args[:radius].nil?
			end
		end
	end
end