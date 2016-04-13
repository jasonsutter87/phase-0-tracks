//  In your new file, declare two separate arrays:
// an array of four colors ("blue", for instance, though you're welcome to get crazy with something like "iridescent blue/green with silver sparkles")

var color = ["green", "blue", "light-red", "blackish grey...not black, but not grey"];

// an array of four names that you might give a horse ("Ed" is always a solid choice to start with)
// Write additional code that adds another color to the colors array, and another horse name to the horses array.
var names = ["Bob", "Horsey", "Secretariat", "Allison"];

//pushing new color to array
color.push("orange");
//print color array
console.log(color);

//pushing new name to array
names.push("Alexander");
//print color name
console.log(names);

//combining names with colors into a new object
var horse = {};
//console.log(horse);

//for loop
for (var i = 0; i < names.length; i++){
  
  horse[names[i]] = color[i];
  
}
//print horse
console.log(horse);

// constructor function
function Car(make, color, topSpeed) {
  this.make = make;
  this.color = color;
  this.needsGas =  function(answer){
    if(answer == "yes"){
      console.log("We Need to stop for gas!!");
    }else{
      console.log("Keep Driving tank is full");
    }   
  };

  this.topSpeed = topSpeed;
  
};

//test1
console.log(Car);
var newCar = new Car("BMW", "Green", 120);
console.log(newCar);
newCar.needsGas("yes");

//test2
var newCar1 = new Car("Toyota", "Grey", 88);
console.log(newCar1);
newCar1.needsGas("no");
