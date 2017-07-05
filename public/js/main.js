document.getElementById("editButton").addEventListener("click", function(){
	console.log("so far so good");
	document.querySelectorAll(".postContent").forEach(element => element.style.display="none");
	document.querySelectorAll(".editForm").forEach(element => element.style.display="inline-block");
});