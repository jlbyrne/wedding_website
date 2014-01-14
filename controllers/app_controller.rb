#this app is simple enough I think all of the routing can go on
#one page.  

get '/' do
  erb :index
end

get '/guest_list' do
	erb :guest_list, layout: false
	session[:guest] = "blah blah blah" 
end

get '/rsvp' do
	erb :rsvp, layout: false
end

get '/itinerary' do
	erb :itinerary, layout: false
end

get '/accomodations' do
	erb :accomodations, layout: false
end

get '/charleston' do
	erb :charleston, layout: false
end

get '/our_story' do
	erb :our_story, layout: false
end

get '/registry' do
	erb :registry, layout: false
end

post '/name_check' do
	guest = (Guest.where(:first_name => params[:firstname], :last_name => params[:firstname])).first
	if guest
		@family = Guest.where(:family_id => guest.family_id)
		erb :rsvp_form
	else
		@error = "We appreciate your interest, but unfortunately we can't invite everyone we would like."
		erb :rsvp
	end
end