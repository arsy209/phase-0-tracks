#create a method that would go through each of the letters of the alphabet for the inputted word
#first it would split the word and allow the method to run through each of the letters
#after the method is done, it would joined the splitted word back together
#if it reaches a certain vowel, it would switch it with another vowel and continue on till it reaches the end of the word
#if no vowels found then it would go through the alphabet and change words with the next letter in the alphabet
#add a driver code which would allow the user to input their first and last name and print out their new secret name after running it through the method



puts "WELCOME TO THE NAME CHANGER PROGRAM:\n"


#this method would run through the inputted name and print out their new name
def decode(new_name)

vowels="aeiou"
alphabet="bcdfghjklmnpqrstvwxyz"

new_name_split=new_name.split("")
new_new_name=[ ]

#maps out each of the splitted letter
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


#driver code
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

#this would store each of the names and then print it out at the end after the user press quit
name = (decode(new_name))
secret_names.store(new_name,name)

secret_names.each  {|name, new_name| 
                puts "#{new_name} is also known as #{name}."}
