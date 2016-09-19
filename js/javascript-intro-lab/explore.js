
//pseudocode

//1.takes a word and reverses it
//2.prints out the results using console.log()
//3. puts a number 1 == 1 and prints true



function reverse(word) {
	var new_word = "";
	for (var a = word.length - 1; a >= 0; a--){
		new_word += word[a];
	}
	if (word === new_word) 
	{
		return;
	}
	
	return new_word;
}


// driver code
// create new variable for changed string

var reversed_name = reverse("Arsh");
var reversed_clan = reverse("Coyotes");
console.log(reversed_name);
console.log(reversed_clan);
console.log(1 == 1);
console.log(2 == 1);