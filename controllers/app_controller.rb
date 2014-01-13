#this app is simple enough I think all of the routing can go on
#one page.  

get '/' do
  erb :index
end

get '/guest_list' do
	erb :guest_list, layout: false
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