// Jessica Bohn & Sarah Dickers
// 06/19/16
// 7.2 Pairing

var horses = ["Daisy", "Marigold", "Brownie", "Blackie"];
var colors = ["pink", "rainbow", "silver", "peach"];

horses.push("Stallion");
colors.push("blue");

var object = {};

console.log(object);

for (var i = 0; i < horses.length; i++){
   object[horses[i]] = colors[i];
 }

console.log(object)