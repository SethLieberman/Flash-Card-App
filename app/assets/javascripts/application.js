// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


// When the page "upadates" this will allow us to delete users and cards
$(document).ready(function(){
// $(document).on('page:update', function(){
	
	// this is hiding the answer
	$(".answer").hide();
	// this will toggle the anwer when you click on the questions
	$(".question").click(function(e){
		$(".answer").toggle();
	});

	// hiding and showing edit profile form
	$(".edit-profile").hide();
	$(".editp").click(function(){
		$(".edit-profile").toggle();
	});
	// hiding and showing private cards
	$(".private-cards").hide();
	$(".edit-private-cards").click(function(){
		$(".private-cards").toggle();
	});

	//hiding and showing create quiz function
	//hide the content to be shown initially
	$(".create-quiz").hide();
	// when new quiz button is clicked, toggle the hidden content
	$("#new-quiz-button").click(function(){
		$(".create-quiz").toggle();
	});

	//hiding and showing all the quizzes
	$(".quizzes").hide();
	$(".show-quizzes-button").click(function(){
		$(".quizzes").toggle();
	});

	// hiding and showing all the cards
	$(".cards").hide();
	$(".show-cards-button").click(function(){
		$(".cards").toggle();
	});

	//hiding and showing all the public cards
	$(".publicCard").hide();
	$(".show-public-cards-button").click(function(){
		$(".publicCard").toggle();
	});

	//hiding and showing all the users
	$(".users").hide();
	$(".show-all-users").click(function(){
		$(".users").toggle();
	});

	//hiding and showing card create form
	$(".new-card").hide();
	$(".create-new-card-button").click(function(){
		$(".new-card").toggle();
	});


	// $("#card").flip('toggle');
	$("#card").flip({
  		trigger: 'click'
});
// });
});