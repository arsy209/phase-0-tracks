puts "WELCOME TO THE NAME CHANGER PROGRAM:\n"



def decode(new_name)

vowels="aeiou"
alphabet="bcdfghjklmnpqrstvwxyz"

new_name_split=new_name.split("")
new_new_name=[ ]

new_name_split.map! do |letter|

				if vowels.include?(letter)
			   	   new_new_name << vowels[vowels.index(letter)+1]
				elsif alphabet.include?(letter)
					new_new_name << alphabet[alphabet.index(letter)+1]
				elsif letter == " "
					new_new_name << " "
			    end
end
				new_new_name.join("").split.map{|letter| letter.capitalize}.join(" ")
end



secret_names={}
while true
			print "\nInput your first name here:"
				  first_name=gets.chomp.downcase
			print "\nInput your last name here:"
				  last_name=gets.chomp.downcase
		 		  new_name =last_name+" "+first_name
			print "\nYour new assigned secret name is:\n " + decode(new_name)


			print " \n\nYou can enter quit or continue by pressing enter the button."
		 		  choice = gets.chomp
	      
	      		if choice == "quit"
  
 				break


				end
			secret_names[last_name.capitalize+","+first_name.capitalize] = decode(new_name)
end


name = (decode(new_name))
secret_names.store(new_name,name)

secret_names.each  {|name, new_name| 
	puts "#{new_name} is also known as #{name}."}