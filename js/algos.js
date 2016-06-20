// Jessica Bohn
// 06/20/16
// 7.3 - Solo Challenge

// Release 0
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

var newphrases = new Phrases(["you're a cutie", "hello handsome", "hi handsome pants", "what's up love"]);

var morephrases = new Phrases(["The Great Catsby", "Lambda Lambda Lambda", "pretty kitty cat"]);