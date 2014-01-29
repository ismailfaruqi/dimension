module Dimension
	module D3
		def self.included?(base)
			base.extend(ClassMethods)
		end

		module ClassMethods
		end
	end
end