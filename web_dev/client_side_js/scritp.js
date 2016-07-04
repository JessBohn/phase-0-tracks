console.log("Hello world");

var paras = document.getElementsByTagName("p");

var photo = document.getElementById("logo");

photo.style.border = "3px solid red";

function changeBackgroundColor(event) {
  console.log("It worked!");
  event.target.style.color="#ffff65";
}

var info = document.getElementsByClassName("backgroundinfo");
var backgroundinfo = info[0];
backgroundinfo.addEventListener("click", changeBackgroundColor);