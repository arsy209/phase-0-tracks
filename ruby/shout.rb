module Shout

   def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  	def self.yelling_happily(words)
	words + " this is the besttt " " ;)"
	end

end

puts Shout.yell_angrily("YOOO")
puts Shout.yelling_happily("HEYYY")
