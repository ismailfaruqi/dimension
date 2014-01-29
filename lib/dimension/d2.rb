module Dimension
	module D2
		def self.included?(base)
			base.extend(ClassMethods)
		end

		def area
		end

		module ClassMethods
			def act_as_rectangle(args)
			end

			def act_as_circle(args)
			end

			private

			def validate_rectangle_args(args)
			end

			def validate_circle_args(args)
			end
		end
	end
end