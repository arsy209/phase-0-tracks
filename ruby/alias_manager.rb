
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
new_new_name.join(" ").split.map {|letter| letter.capitalize}.join(" ")

end


secret_hash={}

print "Please enter your first name here:"
first_name=gets.chomp.downcase
print "Please enter your last name here:"
last_name=gets.chomp.downcase
new_name =last_name+ " "+first_name
print "Your new secret name is: " + decode(new_name)


while true
print " enter quit if you are done otherwise you can continue to decode more names "
	input = gets.chomp
	if input == "quit"
     break
	
 p secret_hash[first_name.capitalize+" "+last_name.capitalize] = decode(new_name)
stored_aliases.each {|real_name, new_name| puts "#{real_name} is also known as #{new_name}."}
end
end 
secret_hash.each do |name,new_name|
	puts "The true identity of #{new_name} is actually #{name}"
end