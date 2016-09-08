
require_relative "guess_word"

describe start_game do
let (:GuessTheWord) {GuessTheWord.new}
start with "makes empty spaces for the word" do
	expect(guesses.start_game("Sammy")).to eq (" _ _ _ _ _ ")
end
start with "sets the word into the array" do
	expect(guesses.gamer("Sammy")).to eq (" S,a,m,m,y ")
end
match_array "checks the array" do
	expect(guesses.def([Sammy]).to eq ("Sammy"))
end
	
end
