$(document).ready(function() {
	$("a#login-hook").on('click', function(event){
		event.preventDefault();
		var url = $(this).attr('href');
		console.log(url);
		$.get(url, function(url_response){
			console.log(url_response);
			$('.container').hide();
			$('#login-hook').closest('div').append(url_response);
		});

	});
	
	$('#nav').on('submit','#login-layout', function(event){
		event.preventDefault();
		var data = $(this).serialize();	
		var url = $(this).attr('action');
		console.log(data);
		$.post(url, data, function(body){
			var new_nav = $(body).find('#nav').html();
			console.log(new_nav)
			$('#login-layout').hide();
			$('#nav').html(new_nav);
			$('.container').show();
		});
	});
	// $('#create-hook').on('click', function(event){
	// 	event.preventDefault();
	// 	var url = $(this).attr('href');
	// 	$.get(url, function(url_body){
	// 		var form = $(url_body).find('#regular-create').html();
	// 		$('#create-hook').closest('div').append(form);
	// 	});
	// });
});



$(document).ready(function() {
	
  $("#next_frame").on('click', function(event){
    event.preventDefault();
    

    var location = $('.frames > li').css('right');
    console.log(location);
    if (location > '65%'){
      $('.frames > li').animate({right:'-=66.66%'})
       }
       else{
        $('.frames > li').animate({right:'+=33.33%'})
      };

  });

  $("#previous_frame").on('click', function(event){
    event.preventDefault();
    var location = $('.frames > li').css('right');
    console.log(location);
    if (location <'1%'){
      $('.frames > li').animate({right:'+=66.66%'})
       }
       else{
        $('.frames > li').animate({right:'-=33.33%'})
      };



  });

});