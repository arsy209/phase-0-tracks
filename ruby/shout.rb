module Shout

   #def self.yell_angrily(words)
        #words + "!!!" + " :("
   #end

  	#def self.yelling_happily(words)
		#words + " this is the besttt " " ;)"
	#end

#end

#puts Shout.yell_angrily("YOOO")
#puts Shout.yelling_happily("HEYYY")

 def lecture(words)
 	words + ",im telling your dad !!!!!!!"
 end

 def happy(words)
 	words + " ,You are the best!"
end
end
class Angry_mom
	include Shout
end

class Happy_kid
	include Shout
end

mom = Angry_mom.new
p mom.lecture("how dare you not listen to me")
kid =  Happy_kid.new
p kid.happy("I LOVE THIS NEW TOY")