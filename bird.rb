#this is for IRB

class Bird
	def makes_sound
	"woijwveonwvoief"
	end
end

	class Raven < Bird
end

vans_bird = Raven.new

van_bird.makes_sound

#overriding it

class Oriole < Bird
	def makes_sound
		"kaw-kaw"
	end
end
