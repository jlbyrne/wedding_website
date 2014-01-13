$(document).ready(function() {

	navBarHandler();
	rsvpFormHandler();

});

function navBarHandler() {
	$("a.nav-link").on("click", function(e){

		e.preventDefault();
		//the 'or' operator is here to make sure the 'welcome' link will
		// still work.  it doesn't have an id, so its route would otherwise
		// be undefined
		var route = $(this).attr('id') || "";

		$.get("/" + route + "", function(data) {
			$(".container").html(data);
		});
	});
}

function rsvpFormHandler() {

}