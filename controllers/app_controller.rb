#this app is simple enough I think all of the routing can go on
#one page.  

get '/' do
  erb :index
end

get '/rsvp' do
	erb :rsvp, layout: false
end

get '/itinerary' do
	erb :itinerary, layout: false
end

get '/flights' do
	erb :flights, layout: false
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
	guest = (Guest.where(:first_name => params[:firstname].downcase, :last_name => params[:lastname].downcase)).first
	if guest
		@family = Guest.where(:family_id => guest.family_id)
		erb :rsvp_form, layout: false
	else
		#TODO: come up with a better 'you're not invited' message
		@error = "We appreciate your interest in our special day, but unfortunately we can't invite everyone we would like."
		erb :rsvp, layout: false
	end
end