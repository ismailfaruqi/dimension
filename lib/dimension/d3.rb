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
		end
	end
end