console.log("The script is running!");
// console.log(document)

var title = document.getElementsByTagName("p")
var lizard = title[0];
lizard.style.color = "green";

function disappearingChameleon(event) {
  // console.log("click happened! here's the click event:");
  // console.log(event);
  photo.style.display = "none";
}

function appearingChameleon(event) {
  photo.style.display = "inline";
}

var photo = document.getElementById("lizard-photo");

var disappear_button = document.getElementById("disappear_btn");
disappear_button.addEventListener("click", disappearingChameleon);

var reveal_button = document.getElementById("reveal_btn");
reveal_button.addEventListener("click", appearingChameleon);