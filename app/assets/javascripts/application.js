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


	//************JS for the flipcard**************************

	$("#card").flip({
  		trigger: 'click'
	});


	//set counter to zero intially
	var counter = 0;

	//this should be grabbing the updated cardLoad var for the JS page
	$(".loadButton").submit(function(){
		var ajax_card_display_update = $.get("/home/card_load", function(data){
			console.log(data)
		});	
		// console.log(ajax_card_display_update);
		//do I want to put gon.cardDisplay in here so it returns it?
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

