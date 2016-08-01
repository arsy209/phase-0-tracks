
puts "What is the Hamster's Name: "
name = gets.chomp
puts "the volume Level of the hamster, scale from 1-10: "
volume = gets.chomp.to_i
puts "What is the Hamster's fur color: "
color = gets.chomp
candidate = false
until candidate
puts "Is the Hamster a good candidate for adoption? (yes/no): "
adoption = gets.chomp
    if adoption == 'yes'
        candidate = true
    
    elsif adoption == 'no'
        candidate = true
    
    else puts "I did not understand, please type yes or no"
    
    end
end
puts "What is the Hamster's estimated Age: "
age = gets.chomp
    
    if age == "" 
        age = nil
    
    else puts "Thanks"
    
    end
hamster_information = 
                        {
                            name: name,
                            volume: volume,
                            color: color,
                            adoption: adoption,
                            age: age,
                        }
