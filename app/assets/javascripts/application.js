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

	// hiding create private card form
	$(".c-private-cards").hide();
	$(".create-private-cards").click(function(){
		$(".c-private-cards").toggle();
	});

	// show private cards to user
	$(".private-card-info").hide();
	$(".show-private-cards-button").click(function(){
		$(".private-card-info").toggle();
	});

	//************JS for the flipcard**************************

	$("#card").flip({
  		trigger: 'click'
	});


	//set counter to zero intially
	var counter = 0;

	//this should be grabbing the updated cardLoad var for the JS page
	$(".loadButton").click(function(){
		var ajax_card_display_update = $.get("home/card_load", function(data){
			console.log(data)
		});	
		console.log(ajax_card_display_update);
		});


	//intial display upon load
	$(".cardQuestion").html("Select a Level to Get Started");
	$(".cardAnswer").html("Answers will display here");
	//when next button clicked, increment counter by one
	$(".nextButton").click(function(){
		//if length of array - 1 (the position) equals the counter, start at 0
		//this way the cards will just rotate through again
		if ((gon.cardDisplay.length - 1) == counter){
			counter = 0;
		} 
		else {
			counter++;
		};
		//this replaces the html of the selected element with 
		//the current displayed card to the flipcard element in the DOM
		$(".cardQuestion").html(gon.cardDisplay[counter].question);
		$(".cardAnswer").html(gon.cardDisplay[counter].answer);
	});
	//when previous button clicked, subtract one from counter
	$(".previousButton").click(function(){
		//if counter is zero, set counter to the last index position
		//of cardDisplay
		if (counter == 0){
			counter = (gon.cardDisplay.length - 1);
		}
		else {
			counter--;
		};	
		//this replaces the html of the selected element with 
		//the current displayed card to the flipcard element in the DOM
		$(".cardQuestion").html(gon.cardDisplay[counter].question);
		$(".cardAnswer").html(gon.cardDisplay[counter].answer);
	});

});