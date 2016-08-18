




//Ruby has lots of handy functions like .reverse, but in JavaScript, we mostly have to write our own. In comments, pseudocode a function that takes a string as a parameter and reverses the string. reverse("hello"), for example, should return "olleh". This isn't a task specific to JavaScript -- your pseudocode should be in plain English and use phrases like "for each" instead of JavaScript-specific terms. Remember that you can add strings in JavaScript, so '' + 'a' would result in the string 'a'. Take your time. This is the most valuable skill in programming: being able to think through a problem logically.
//Under your commented pseudocode, implement your function in JavaScript. Test it with driver code if you like. Anytime you'd like to run your code, you can run node explore.js from the js folder in your terminal, similar to how you run Ruby programs.
//Add driver code that calls the function in order to reverse a string of your choice (as long as it's not a palindrome!), and stores the result of the function in a variable.
//Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.

//pseudocode

//1.takes a word or sentence
//2.reverses that word using console.log()
//3. puts a number 1 == 1 and prints true



function reverse(word) {
	var new_word = ""
	for (var a = word.length - 1; a >= 0; a--){
		new_word += word[a]
	}
	if (word === new_word) 
	{
		return
	}
	
	return new_word
}

// create new variable for changed string

var reversed_new_word = reverse("hello")
var reversed_name = reverse("Arshdeep Singh")
console.log(reversed_new_word)
console.log(reversed_name)
console.log(1 == 1)
console.log(2 == 1)