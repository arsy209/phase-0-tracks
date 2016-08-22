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