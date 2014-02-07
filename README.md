dimension
=========

A gem to help you measure object's dimension -in Ruby's way.

Installation
------------

```
gem install dimension
```

or, put this in your `Gemfile`

```ruby
gem 'dimension', :github => 'ismailfaruqi/dimension'
```

Usage
-----

```ruby
class A
	include Dimension::D2

	acts_as_rectangle :width => :foo, :height => :bar
	
	def foo
		4
	end

	def bar
		6
	end
end

A.foo # => 4
A.dimension.width # => 4

A.bar # => 6
A.dimension.height # => 6

A.dimension.area # => 24
A.dimension.shape # :rectangle
A.dimension.count # => 2

```

Available methods
-----------------

```ruby 
include Dimension::D2
acts_as_rectangle, :width => :foo, :height => :bar
```

```ruby 
include Dimension::D2
acts_as_circle, :radius => :foo
```

```ruby 
include Dimension::D3
acts_as_box, :width => :foo, :height => :bar, :length => :baz
```

```ruby 
include Dimension::D3
acts_as_sphere, :radius => :foo
```


Testing
-------

Run the following command:
```
rake test
```


Contributing to dimension
-------------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2014 Ismail Faruqi. See LICENSE.txt for
further details.

