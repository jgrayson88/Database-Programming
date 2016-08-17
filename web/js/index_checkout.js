//  Mocking up the usability 

$('.sectionHead a').click(function () {
  var open = $(this).attr('href');
  	event.preventDefault();
  	$( open).slideToggle( 500 );
});

$('input.btn').click(function () {
  var open = $(this).parent().parent('ul');
  var next = $(this).attr('data-id');
  	event.preventDefault();	$('div.almost').slideUp( 500 );  
  	$( open ).slideUp( 500, function(){
  $( '#' + next ).slideDown(500, function() {
  
    
     $('html,body').animate({
          scrollTop:  $( '#' + next ).offset().top
        }, 1000);
  });
  });
});

function popupOpenClose(popup) {
	
	/* Add div inside popup for layout if one doesn't exist */
	if ($(".wrapper").length == 0){
		$(popup).wrapInner("<div class='wrapper'></div>");
	}
	
	/* Open popup */
	$(popup).show();

	/* Close popup if user clicks on background */
	$(popup).click(function(e) {
		if ( e.target == this ) {
			if ($(popup).is(':visible')) {
				$(popup).hide();
			}
		}
	});

	/* Close popup and remove errors if user clicks on cancel or close buttons */
	$(popup).find("button[name=close]").on("click", function() {
		if ($(".formElementError").is(':visible')) {
			$(".formElementError").remove();
		}
		$(popup).hide();
	});
}

$(document).ready(function () {
	$("[data-js=open]").on("click", function() {
		popupOpenClose($(".popup"));
	});
});