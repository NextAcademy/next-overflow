

$(document).ready(function () {
	console.log("hi");
	var title = document.querySelector('#search') ;
	$('#askaquestion').click(function(){
		console.log("hi");
		var div = document.getElementById('question_title')
		div.innerHTML = div.innerHTML + 'Extra stuff';
	});
});