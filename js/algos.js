// Jessica Bohn
// 06/20/16
// 7.3 - Solo Challenge

// I honestly could not figure out how to get release 1 or 2 to work correctly
// I pushed this assignment off to focus on the assessment and did not leave
// enough time to accurately research and learn the proper basics for this javascript challenge
// I will be fixing this later today after I go through some of the provided material for learning javascript



// BUSINESS CODE

// Release 0
// Create function that takes a list of phrases and outputs the longest phrase
function Phrases(Array) {
  // Input list of different phrases
  // ****var phrases = ["you're a cutie", "hello handsome", 
  // ****"hi handsome pants", "what's up love"]
  this.phrases = Array;
  // Set variable for number of characters in string, longestPhrase, to empty string
  this.longestPhrase = "";
  // Set index variable, i, to zero
  // FOR i less than the length of the array
    // Increase value of i by 1
  for (var i = 0; i < this.phrases.length; i++) {
    // IF longestPhrase is less than the length of string in array at i
    if ( this.phrases[i].length > this.longestPhrase.length ) {
      // Set longestPhrase to length of string in array at i
      this.longestPhrase = this.phrases[i];
    }
  }
  // Print string at index of value i where longestPhrase is max for the set
  console.log(this.longestPhrase)
}

// Release 1 - ****couldn't get this to work correctly
function Compare(Object1, Object2) {
  // Create function that takes two objects and compares their contents to find a matching set
  // Set each object to a different variable, object1 and object2
  this.object1 = Object1;    // {name: "Jessica", age: 22, state: "Texas"};
  this.object2 = Object2;    // {name: "David", age: 29, state: "Texas"};
  console.log(this.object1[Object.keys(this.object1)[0]]);
  console.log(this.object1[0]);
  // console.log(object1[0].keys)
  // Iterate through each object simultaneously
  for (var i = 0; i < this.object1.length; i++) {
    // IF one set of data in both objects matches
    if ( this.object1[i] = this.object2[i]) {
      // Return true
      console.log("true");
      // ELSE
    } else {
      // Return false
      console.log("false");
    }
  }
} 

// Release 2
// Create function that takes in an integer and outputs a list with that amount of items
  //randomWordList = [];
  // Set variable, numItems, to inputted integer
  
  // Set length of list to numItems

  // Set variable, numLetters, to random number
  //var numLetters = Math.floor(Math.random() * 10);
  // Generate word of length numLetters with random letters
  //console.log(numLetters.toString(26).substr());


      

// DRIVER CODE

var newphrases = new Phrases(["you're a cutie", "hello handsome", "hi handsome pants", "what's up love"]);
var morephrases = new Phrases(["The Great Catsby", "Lambda Lambda Lambda", "pretty kitty cat"]);

var firstcompare = new Compare({name: "Jessica", age: 22, state: "Texas"}, {name: "David", age: 29, state: "Texas"});