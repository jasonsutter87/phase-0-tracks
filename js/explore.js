//reverse method
//the reverse method will take a string for an input.
//the string will be read and split apart
//make a empty string
//from there it will take the last letter and put it in 
//front of the will creat a new stringin revse order
var mainSwitch = "on"

function reverse(string) {
  var newString = null;
  

  for (var i = string.length; i >= 0; i--) {
  	
  	if (newString == null) {

	 var newString = string[i] 
			
		} else {
			newString = newString + string[i] 
		}
  	}

  console.log(newString);

}


//driver code
if (mainSwitch == "on"){ 

	reverse("Jason Sutter is Programming");
}else{
	reverse("Going to bed...goodnight!");
}