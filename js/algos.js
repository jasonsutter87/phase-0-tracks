// Add a file called algos.js to the phase-0-tracks/js folder.
// In algos.js, write a function that takes an array of words or phrases and returns the longest word in the array. 
//So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". 
//This is a logical reasoning challenge, so try to reason through this based on what you already know, rather 
//than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will
// do what you expect in JS.
// Add driver code that tests your function on a few arrays.


function longestWord (array){
	var incomingArray = array;
	var longest = [];
	for(var i  = 0; i < incomingArray.length; i++){
		if(longest[0] == undefined){
			longest.push(incomingArray[i]);
		}else if(incomingArray[i].length > longest[0].length){
 			longest.splice(0,1);
 			longest.push(incomingArray[i]);
 		}

	}
	console.log(longest);
}

longestWord(["long phrase","longest phrase","longer phrase", "Jason wants to win the longest string contest"]);