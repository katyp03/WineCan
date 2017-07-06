var newCanBtn,
	newCanFrm;
document.addEventListener("DOMContentLoaded", function() {
  	var newCanBtn = document.getElementById('newPost');
  	var newCanFrm = document.getElementById('postNew');

  	newCanBtn.addEventListener("click", function() {
  		newCanFrm.classList.remove("off");
  		newCanFrm.classList.add("on");
  	});
});

var year = new Date().getFullYear();
document.querySelector("#year").innerHTML = year;

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

  document.getElementById("deleteAccount").addEventListener("click", function(){
  	if (confirm("Are you sure you want to delete your account?" )){
  		window.location = "/deleteAccount"
  	}
  	else{
  		alert("wise decision")
  	}

  })

  document.getElementById("editButton").addEventListener("click", function(){
	document.querySelectorAll(".content").forEach(element => element.style.display="none");
	document.querySelectorAll(".editForm").forEach(element => element.style.display="inline-block");
	document.querySelectorAll(".editFormLabel").forEach(element => element.style.display="inline-block");
});
