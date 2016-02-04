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
//= require jquery.remotipart
//= require turbolinks
//= require_tree .


// When the page "upadates" this will allow us to delete users and cards


$(document).on("page:update ready", function(){


	//************JS for the flipcard**************************

	$("#card").flip({
  		trigger: 'click'
	});


	//set global counter to zero initially
	var counter = 0;

	//this should be grabbing the updated cardLoad var for the JS page
	//on submit of .loadButton, do these actions


	//initial display upon load
	$(".cardQuestion").html("Select a Level to Get Started");
	$(".cardAnswer").html("Answers will display here");
	//when next button clicked, increment counter by one
	$(".nextButton").click(function(){
		console.log(gon.richard)
		consol.log(gon.watch.cardDisplay)
		//if length of array - 1 (the position) equals the counter, start at 0
		//this way the cards will just rotate through again

		//add logic only goes if there is something in cardDisplay to avoid errors
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
			counter = (cardDisplay.length - 1);
		}
		else {
			counter--;
		};	
		//this replaces the html of the selected element with 
		//the current displayed card to the flipcard element in the DOM
		$(".cardQuestion").html(cardDisplay[counter].question);
		$(".cardAnswer").html(cardDisplay[counter].answer);
	});

});

