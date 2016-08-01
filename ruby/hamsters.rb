p " hello, what is your hamsters name? otherwise choose a name:"
name = gets.chomp
p " how loud is your hamster from a scale of 1 to 10?"
scale = gets.chomp.to_i 
p " what is the fur color of your hamster?"
fur_color = gets.chomp
p " Is #{name} a good canidate for adoption (yes/no)?"
canidate = gets.chomp
p " what is the estimated age of your hamster?"
estimated_age = gets.chomp.to_i


if estimated_age == " "
	p "nil"

 puts " thank you "
end