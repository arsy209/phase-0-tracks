// declaring an array in JavaScript is similar to Ruby
var colors = ["Indigo", "Hot Pink", "Mousey Brown", "Grassy Green"];
var horses = ["Trigger", "Larry", "Far Out", "Missy Myers"];

colors.push("Plush Purple");
horses.push("Ginger");

console.log(colors);
console.log(horses);

var horse_colors = {};
 if (colors.length == horses.length) {
 	for(i=0; i<colors.length; i++) {
 		horse_colors[horses[i]] = colors[i];
 	}

 }

 console.log(horse_colors);

 function Car(color,year,model){
 console.log("This is your new car:", this);
 this.color = color;
 this.year = year;
 this.model = model;
this.start = function() {console.log("TADAAA")};
console.log("Heres your new car:");
}

console.log("Your new car is ready for you");
var new_car =  new Car("Red",2016,"Flashy");
console.log(new_car);
console.log("PRESENTING YOUR NEW CAR");
new_car.start();

console.log("Your new car is ready for you");
var new_car2 =  new Car("Sky Blue",2016, "Nitetime");
console.log(new_car2);
console.log("PRESENTING YOUR NEW CAR");
new_car2.start();