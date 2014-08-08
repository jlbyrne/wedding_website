$(document).ready(function() {

	navBarHandler();
	// backgroundHandler();

});

function navBarHandler() {
	$("a.nav-link").on("click", function(e){
		e.preventDefault();
		//the 'or' operator is here to make sure the 'welcome' link will
		// still work.  it doesn't have an id, so its route would otherwise
		// be undefined
		var route = $(this).attr('id') || "";

		$.get("/" + route + "", function(data) {
			// the 'welcome' link also can't be rendered without the layout,
			//so we're making sure here that only the container html is added 
			//to the page.
			backgroundHandler(route);
			var containerData = $(data).filter('div.container');
			$(".container").replaceWith(containerData);
		});
	});
}

function backgroundHandler(id) {
	if (id === "charleston"){
		$("html").css("background-image", "url(/images/king_st.jpg)");
	} else if ( id === "accomodations" ) {
		$("html").css("background-image", "url(/images/cityview.jpg)");
	} else if ( id === "itinerary" ) {
		$("html").css("background-image", "url(/images/aquarium.jpg)");
	} else if ( id === "our_story" ) {
		$("html").css("background-image", "url(/images/sol_and_jenny.jpg)");
	} else if ( id === "registry" ) {
		$("html").css("background-image", "url(/images/market.jpg)");
	} else {
		$("html").css("background-image", "url(/images/Church-Street.jpg)");
	}
}