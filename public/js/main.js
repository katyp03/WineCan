var newCan;
document.addEventListener("DOMContentLoaded", function() {
  	var newCanBtn = document.getElementById('newPost'),
  		newCanFrm = document.getElementById('postNew')
  	newCanBtn.addEventListener("click", function() {
  		newCanFrm.classList.remove("off");
  		newCanFrm.classList.add("on");
  	});
});

var newSubmit,
	exitButton,
	myModal;
document.addEventListener("DOMContentLoaded", function(){
	newSubmit = document.getElementById('newSubmit');
	exitButton = document.getElementById('exitButton');
	myModal = document.getElementById('postNew');
	exitButton.addEventListener("click", function(){
		myModal.className = "off";
	});
	newSubmit.addEventListener("click", function(){
		myModal.className = "off";
	})
});
  document.getElementById("editButton").addEventListener("click", function(){
	document.querySelectorAll(".content").forEach(element => element.style.display="none");
	document.querySelectorAll(".editForm").forEach(element => element.style.display="inline-block");
});
