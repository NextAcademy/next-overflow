

$(document).ready(function () {

	$('#askaquestion').click(function(){
		var title = document.getElementById('search').value;
		var question = document.getElementById('question_title');
		var question = $("#question_title");
		question.parent().addClass("pmd-textfield-floating-label-active");
		question.parent().addClass("pmd-textfield-floating-label-completed");
		question.val(question.val() + title);
	});
});