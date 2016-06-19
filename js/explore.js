// Jessica Bohn
// 06/19/16

function reverse(str) {
  // Set first variable to empty string
  var reverse = "";
  // Set second variable to number of characters in string
  // WHILE second variable does not equal zero
    // set second variable value lower by one increment
  for (var i = str.length; i >= 0; i--) {
    // reset first variable to itself plus the character the place value of the second variable
    var reverse = reverse + str.charAt(i);
  }
  // set final value of the first variable
  return reverse;
}


// Set new variable to functional call
reversedString = reverse("magic cats");

if (1==1) {
  console.log(reversedString)
}