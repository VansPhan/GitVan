class House

	attr_accessor :color, :year, :sqft

	def initialize(color, year, sqft)
		@color = color
		@year = year
		@sqft = sqft

		
	end


end



# irb(main):009:0> load "classes_object.rb"
# => true
# irb(main):010:0> van = House.new "red", "2005", "4000"
# => #<House:0x007fef8c849f80 @color="red", @year="2005", @sqft="4000">