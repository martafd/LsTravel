sliderInt = 1;
sliderNext = 2;

$(document).ready(function(){
	$('#slider>a>img#1').fadeIn(300);
	startSlider();
});


function startSlider(){
	count = $('#slider>a>img').size();
	loop = setInterval(function(){
		$('#slider>a>img').fadeOut(300);
		$("#slider>a>img#"+sliderNext).fadeIn(300);
		
		sliderInt = sliderNext;
		sliderNext = sliderNext + 1;
		
	},3000);
}

function prev(){
	newSlide = sliderInt-1;
	showSlide(newSlide);
}

function next(){
	newSlide = sliderInt+1;
	showSlide(newSlide);
	
}

function showSlide(Id){
	stopLoop();
	if(Id>count){
		Id=1;
	}
	else if(Id < 1){
		Id = count;
	}
	$("#slider > a > img").fadeOut(300);
	$("#slider > a > img#" + Id).fadeIn(300);
	sliderInt = Id;
	sliderNext = Id + 1;
	startSlider();
}

$("#slider > a > img").hover(
	function(){
		stopLoop();
		
	},function(){
		startSlider();
	}
);

function stopLoop(){
	window.clearInterval(loop);
	}