// Jessica Bohn
// 06/19/16

// Set first variable to empty string
// Set second variable to number of characters in string
// WHILE second variable does not equal zero
  // print character in string equal to second variable's value place in string
  // reset first variable to itself plus the character the place value of the second variable
  // set second variable value lower by one increment
// print final value of the first variable

function reverse(str) {
  var reverse = "";
  for (var i = str.length; i >= 0; i--) {
    var reverse = reverse + str.charAt(i);
  }
  return reverse;
}

reversedString = reverse("magic cats");

if (1==1) {
  console.log(reversedString)
}