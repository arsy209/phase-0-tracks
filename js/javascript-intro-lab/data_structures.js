var colors =["red","blue","yellow","green"];
var names = ["Bob","Steve","Mo","Larry"];

colors.push("orange");
names.push("Curly");

console.log(colors);
console.log(names);

var horse_colors = {};
//if the colors length and are not the same, the for loop will not work
if (colors.length == names.length){
for (i = 0 ; i < colors.length ; i++) {
 horse_colors[names[i]] = colors[i];
}
}

console.log(horse_colors) ;

function Car(make,model,year){
 console.log("Your new car:",this) ;

 this.make = make ;
 this.model = model ;
 this.year = year ;

 this.start = function() {console.log("VROOOOM")} ;

 console.log("New Car Bought") ;
}

console.log("Your Car is Ready");
var my_car = new Car("Aston Martin","DB10",2017);
console.log(my_car);
console.log("Your Car sounds like:");
my_car.start();

console.log("~ ~ ~ ~ ~");

console.log("Your Car is Ready");
var another_car = new Car("Bavarian Motorworks","X8",2017);
console.log(another_car);
console.log("Your Car sounds like:");
another_car.start();

console.log("~ ~ ~ ~ ~");

console.log("Your Car is Ready");
var one_more_car = new Car("lamborghini","Centenario Roadster",2017);
console.log(one_more_car);
console.log("Your Car sounds like:");
one_more_car.start();