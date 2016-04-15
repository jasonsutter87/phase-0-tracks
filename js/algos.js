// Add a file called algos.js to the phase-0-tracks/js folder.
// In algos.js, write a function that takes an array of words or phrases and returns the longest word in the array. 
//So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". 
//This is a logical reasoning challenge, so try to reason through this based on what you already know, rather 
//than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will
// do what you expect in JS.

// Add driver code that tests your function on a few arrays.


//longest word function
function longestWord (array){
	//save incomeing array to array variable
	var incomingArray = array;
	//empty longest array to be populated 
	var longest = [];
	//for loop. 
	for(var i  = 0; i < incomingArray.length; i++){
		//if the longest array is empty, populate with first array
		if(longest[0] == undefined){
			longest.push(incomingArray[i]);
		//if the longest array has an entry already, check if the second array has more characters.
		//if so delete the first item in longest and push new entry
		}else if(incomingArray[i].length > longest[0].length){
 			longest.splice(0,1);
 			longest.push(incomingArray[i]);
 		}
	}
	//print final longest phrase
	console.log(longest);
}

//longest word drivercode
longestWord(["long phrase","longest phrase","longer phrase", "Jason wants to win the longest string contest"]);


// In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair. 
// (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.)
//  If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, 
//  because at least one key-value pair matches between the two objects. If no pairs match (and keep in mind that the two objects
//   may not even have any of the same keys), the function should return false. To make your life easier, don't worry about 
// whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent. Again, try to
//  reason through the problem using the basics you've already learned, rather than looking up slick search functions that will 
//  do the job for you. We'd rather see you write code that you actually understand!

// Add some driver code that tests both outcomes of your function.

//check key value function
function keyValueCheck(obj1, obj2){
	//set incoming items as incomingHash1 and incomingHash12
	var incomingHash1 = obj1;
	var incomingHash2 = obj2;
	
	//if incomingHash1 name is the same as incomingHash2 OR incomingHash1 age the same as incomingHash2
	if ( incomingHash1.name == incomingHash2.name || incomingHash1.age == incomingHash2.age) {
		//print true
		console.log("There is a match, either the name or age");
	}
	//print false
	else{
		console.log("There is no match with names or age");
	}
}

//check key value driver code
keyValueCheck( {name: "Steven", age: 54}, {name: "Tamir", age: 54} );
