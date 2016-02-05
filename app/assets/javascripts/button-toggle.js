 $(document).on('page:update', function(){
	// alert("HELOOOOO SETH")
	$("#editp").unbind().click(function(evt){
		console.log("click!");
		$("#edit-profile").toggle(400);
	});

	$(".edit-private-cards").unbind().click(function(){
		$(".private-cards").toggle(400);
	});

	$("#new-quiz-button").unbind().click(function(){
		$(".create-quiz").toggle(400);
	});

	$(".show-quizzes-button").unbind().click(function(){
		$(".quizzes").toggle(400);
	});

	$(".show-cards-button").unbind().click(function(){
		$(".cards").toggle(400);
	});

	$(".show-public-cards-button").unbind().click(function(){
		$(".publicCard").toggle(400);
	});

	$(".show-all-users").unbind().click(function(){
		$(".users").toggle(400);
	});

	$(".create-new-card-button").unbind().click(function(){
		$(".new-card").toggle(400);
	});
	
	$(".create-private-cards").unbind().click(function(){
		$(".c-private-cards").toggle(400);
	});

	$(".show-private-cards-button").unbind().click(function(){
		console.log("SHOWING")
		$(".private-card-info").toggle(400);
	});

})

$(document).on('page:load page:change', function(){
		// alert(" DOT COM")


	// hiding and showing edit profile form
	$("#edit-profile").hide();
// })

// $(document).ready(function(){

	// hiding and showing private cards
	$(".private-cards").hide();


	//hiding and showing create quiz function
	//hide the content to be shown initially
	$(".create-quiz").hide();
	// when new quiz button is clicked, toggle the hidden content


	//hiding and showing all the quizzes
	$(".quizzes").hide();


	// hiding and showing all the cards
	$(".cards").hide();


	//hiding and showing all the public cards
	$(".publicCard").hide();


	//hiding and showing all the users
	$(".users").hide();


	//hiding and showing card create form
	$(".new-card").hide();


	// hiding create private card form
	$(".c-private-cards").hide();


	// show private cards to user
	$(".private-card-info").hide();

});