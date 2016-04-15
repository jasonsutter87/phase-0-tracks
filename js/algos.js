// Add a file called algos.js to the phase-0-tracks/js folder.
// In algos.js, write a function that takes an array of words or phrases and returns the longest word in the array. 
//So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". 
//This is a logical reasoning challenge, so try to reason through this based on what you already know, rather 
//than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will
// do what you expect in JS.

// Add driver code that tests your function on a few arrays.


//Release 0
console.log("****  RELEASE 0  ****");
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


//Release 1
console.log("****  RELEASE 1  ****");
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


// Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
// So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't 
// have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length,
// with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that
// you'll have to look up, but the solution on how to do so is relatively straightforward.)


// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word"
// function, and prints the result.


//Release 2
console.log("****  RELEASE 2  ****");
//random word function
function randomWords(int){
	//set incoming integer 
	var incomingInt = int;
	//create empty array for random words
	var randomlist = []

	//pre print statement
	console.log("Printing random word list!");
	//for loop. loop number of integers
	for(var x = 0; x < incomingInt; x++){
		//set random number 1-10
		var randomLetterCount = Math.floor(Math.random() * (11-1) + 1);	
		//create empty array for random letter list
		var randomWord = []
		//for loop
		for(var i = 0; i < randomLetterCount; i++){
			//set random lower case letter a..z
			var randomLetter = Math.floor(Math.random() * (123-97) + 97);
			//push random letter to random word list
			randomWord.push(String.fromCharCode(randomLetter));
		}
		//push random word to random words list
		randomlist.push(randomWord.join(""));
	}
	//printing random list
	console.log(randomlist);
	//return random list so we can access it outside the function.
	return randomlist;
}

//create a new 10 random words with the randomWords function.
var randomLong = randomWords(10);

//run random word list through longest word function.
console.log("The longest word in the list is:");
longestWord(randomLong);