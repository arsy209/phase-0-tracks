puts "WELCOME TO THE NAME CHANGER PROGRAM WHERE YOUR REAL NAME IS CHANGED TO A SECRET NAME:\n"

def decode(new_name)
alphabet_vowels="aeiou"
alphabet_consonants="bcdfghjklmnpqrstvwxyz"

new_name_split=new_name.split("")
new_new_name=[ ]

new_name_split.map! do |letter|
	if alphabet_vowels.include?(letter)
		new_new_name << alphabet_vowels[alphabet_vowels.index(letter)+1]
	elsif alphabet_consonants.include?(letter)
		new_new_name << alphabet_consonants[alphabet_consonants.index(letter)+1]
	elsif letter == " "
		new_new_name << " "
	end
end
		new_new_name.join("").split.map{|letter| letter.capitalize}.join(" ")
end




secret_hash={}
while true
	print "\nPlease enter your first name here:"
		  first_name=gets.chomp.downcase
	print "\nPlease enter your last name here:"
		  last_name=gets.chomp.downcase
		  new_name =last_name+" "+first_name
	print "\nYour new secret name is:\n " + decode(new_name)


	print " \n\nEnter quit if you are done otherwise you can continue to decode more names by pressing enter "
		  input = gets.chomp
	      
	      if input == "quit"
  
 break


end
	secret_hash[last_name.capitalize+" "+first_name.capitalize] = decode(new_name)
end


name = (decode(new_name))
secret_hash.store(name, new_name)

secret_hash.each  {|name, new_name| 
	puts "#{new_name} is also known as #{name}, is that not shocking!!!!!."}
	

