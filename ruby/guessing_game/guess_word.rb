
#create a game that allows two players to play against eachother
#asks the players for their name
#heads or tails decides who will go first
#the winning player of the toss will choose a word for the other person to guess
#allows the user to guess the word in the given amount of turns
#the user has the choice of inputting their guessed word to check if its correct or not


puts "WELCOME, LETS PLAY A LITTLE GAME!\n\n\n\n"

class GuessTheWord 
attr_accessor :given_word, :array_checker, :correct_answer, :incorrect_answer
  def initialize(word)
    @given_word = word
    @correct_answer = []
    @incorrect_answer = []
  end
 #saves the given value given by the player for the other player to solve
  def start_game
    #users given word goes through each letter with index. 
    @given_word[0]
    final_word = given_word[0]
    solution = given_word[0].chars
    redaction = given_word[0].chars
    solution.map! do |solution|
    solution = " _ "
    end
    return solution.join
  end
#creates a variable to check the word out
  def check_game
    @given_word
    @given_word[0]
    final_word = given_word[0]
    solution = given_word[0].chars
    redaction = given_word[0].chars
  end
#gives the player a set amount of turns to guess before the game ends.
  def logic(array_checker)
turns = 10
turn_counter = 0
until turn_counter == 10

puts "You have #{turns} turns to guess the word.You would need to guess the letters before the your given turns are over. If you know the word you typed is correct, you can type Guess to type the word."
  user_guess = gets.chomp.to_s.downcase         
   
        if user_guess == "guess"
        puts "Lets see if you know the word:\n"
        guess = gets.chomp
        if guess.chars == array_checker
          puts "CORRECT ANSWER!!,This was too easy for you."
        break
      else
        puts "That was the incorrect word, Better luck next time buddy!"
      break
        end
      end 
    if array_checker.include? user_guess
    
      puts "the letter #{user_guess} is included in the word."
      puts "````````````````````````````````"
      correct_answer.push(user_guess)
      correct_answer.uniq!
      p correct_answer
      turns += 0 
      turn_counter += 0 
    else
      puts "the letter #{user_guess} is included in the word" 
      incorrect_answer.push(user_guess)
      incorrect_answer.uniq!
      p incorrect_answer
      puts "the letter #{user_guess} is not included in the word"
      p correct_answer
      turns -= 1 
      turn_counter += 1
    end
  end 
   if turn_counter == 10
      puts "Too bad you ran out of turns, better luck next time"
    end
  end
end


#driver code

puts "Player 1, please enter your name:\n "
player_1 = gets.chomp.capitalize
puts "Player 2 , please enter your name:\n"
player_2 = gets.chomp.capitalize

loop do
puts "#{player_1} Choose Heads or Tails to see who goes first:\n"
choice = gets.chomp
  if choice == "heads"
    puts"YOU GO FIRST!, #{player_1} choose a word for #{player_2} to guess\n"
  break
  elsif choice == "tails"
    puts " Aw shucks, Heads was the correct choice, #{player_2} choose a word for #{player_1} to guess\n"
  break
end
end
answer_1 = []
answer_2 = gets.chomp.downcase
answer_1.push(answer_2)

guesses =  GuessTheWord.new(answer_1)
puts  "the given word is #{answer_2.length} letters long."
p guessing_words = guesses.start_game 
array_checker = guesses.check_game
guesses.logic(array_checker)
     