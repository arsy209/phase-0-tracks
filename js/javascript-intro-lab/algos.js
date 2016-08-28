//RELEASE 0
//write a function that takes an array of words or phrases and returns the longest word or phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". This is a logical reasoning challenge, so try to reason through this based on what you already know, rather than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will do what you expect in JS.



function longest_word(word) {
  var longest = word[0];
    for (var i = 0; i< word.length; i++) {
      if (word[i].length > longest.length) {
        longest = word[i];
      }
    }
    return longest;
}
//RELEASE 1
//write a function that takes two objects and checks to see if the objects share at least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, because at least one key-value pair matches between the two objects. If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent. 

function compare_items(first_item, second_item) {
  for (var key in first_item) {
    for (var nextKey in second_item) {
      if (key === nextKey) {
        if (first_item[key] === second_item[nextKey]) {
          return true;
        } 
      }
    }
  }
  return false;
}
//RELEASE 2
//Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)

function randomWords(string) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var new_string ="";
  
  for (var i =0; i < string; i++) {
    new_string += (alphabet[Math.round(Math.random() * 25)]);
  }
  
  return new_string;
}


function randomWords(string) {
  var wordArr =[];  
  for(var j=0; j<string; j++) {  
    
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var new_string ="";
    
    for (var i =0; i < Math.ceil(Math.random()*15); i++) {
      new_string += (alphabet[Math.round(Math.random() * 10)]);
    }
    
    wordArr.push(new_string);
  }
  return wordArr;
}

//DRIVER CODES!!

// Driver code for longest_word
var different_strings = ["CHARMANDER","SQUIRTLE","BULBASAUR"];
console.log(longest_word(different_strings));


// Driver code for compare_items
var person_1 = {name: "Bobby", age: 23};
var person_2 = {name: "Jimmy", age: 13};
console.log(compare_items(person_1, person_2));


// Driver code for randomWords
for (var i =0; i<15; i++) {
  var randomArr = randomWords(Math.ceil(Math.random()*10));
  console.log(randomArr);
  console.log(longest_word(randomArr));
}