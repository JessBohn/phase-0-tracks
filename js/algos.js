// Jessica Bohn
// 06/20/16
// 7.3 - Solo Challenge


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

// Create function that takes two objects and compares their contents to find a matching set
  // Set each object to a different variable, object1 and object2
  // Iterate through each object simultaneously
    // IF one set of data in both objects matches
      // Return true
    // ELSE
      // Return false
      

// DRIVER CODE

var newphrases = new Phrases(["you're a cutie", "hello handsome", "hi handsome pants", "what's up love"]);
var morephrases = new Phrases(["The Great Catsby", "Lambda Lambda Lambda", "pretty kitty cat"]);