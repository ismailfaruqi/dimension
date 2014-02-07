require 'helper'

class TestDimension < Test::Unit::TestCase
  
  should "pass success for acts_as_rectangle" do
  	a_class = Class.new do
  		include Dimension::D2
  		acts_as_rectangle :width => :foo, :height => :bar

  		def foo
  			4
  		end

  		def bar
  			6
  		end
  	end
  	a = a_class.new
  	assert_not_equal nil, a.dimension
  	assert_equal Dimension::Dimension, a.dimension.class
  	assert_equal 4, a.dimension.width
  	assert_equal 6, a.dimension.height
  	assert_equal 24, a.dimension.area
  	assert_equal 20, a.dimension.circumference
  end

  should "pass success for acts_as_circle" do
  	a_class = Class.new do
  		include Dimension::D2
  		acts_as_circle :radius => :foo

  		def foo
  			4
  		end
  	end
  	a = a_class.new
  	assert_not_equal nil, a.dimension
  	assert_equal Dimension::Dimension, a.dimension.class
  	assert_equal 4, a.dimension.radius
  	assert_equal Math::PI * 4**2, a.dimension.area
  	assert_equal 2 * Math::PI * 4, a.dimension.circumference
  end
end
