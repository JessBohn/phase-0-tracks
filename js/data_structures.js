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

function Car(brand, year, isBroken){
  this.brand = brand;
  this.year = year;
  this.isBroken = isBroken;
  this.honk = function() {
    if (this.isBroken) {
      console.log("Buy a new car!");
    } else {
      console.log("You're good to go!");
    }   
  };
}

var car = new Car("Toyota", 1987, false)
console.log(car);
car.honk()

var car2 = new Car("Kia", 2001, true)
console.log(car2);
car2.honk()