require 'helper'

class TestDimension < Test::Unit::TestCase
  should "blah" do
  	a_class = Class.new do
  		include Dimension::D2
  	end
  	a = a_class.new
  	a.class.methods.include?[:validate_rectangle_args]
  end
end
