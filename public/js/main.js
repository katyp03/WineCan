var newCan;
document.addEventListener("DOMContentLoaded", function() {
  	var newCan = document.getElementById('newPost');
  	newCan.addEventListener("click", function() {
  		newCan.classList.remove("off");
  		newCan.classList.add("on");
  	});
});

var newSubmit,
	exitButton,
	myModal;
document.addEventListener("DOMContentLoaded", function(){
	newSubmit = document.getElementById('newSubmit');
	exitButton = document.getElementById('exitButton');
	myModal = document.getElementById('newCanForm');
	exitButton.addEventListener("click", function(){
		myModal.className = "off";
	});
	newSubmit.addEventListener("click", function(){
		myModal.className = "off";
	})
  document.getElementById("editButton").addEventListener("click", function(){
	console.log("so far so good");
	document.querySelectorAll(".postContent").forEach(element => element.style.display="none");
	document.querySelectorAll(".editForm").forEach(element => element.style.display="inline-block");
});