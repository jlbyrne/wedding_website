$(document).ready(function() {

	navBarHandler();

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
			var containerData = $(data).filter('div.container');
			$(".container").replaceWith(containerData);
		});
	});
}
