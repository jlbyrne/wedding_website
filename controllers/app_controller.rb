#this app is simple enough I think all of the routing can go on
#one page.  

get '/' do
  erb :index
end

get '/guest_list' do
	erb :guest_list
end

get '/rsvp' do
	erb :rsvp
end

get '/itinerary' do
	erb :itinerary
end

get '/accomodations' do
	erb :accomodations
end

get '/charleston' do
	erb :charleston
end

get '/our_story' do
	erb :our_story
end

get '/registry' do
	erb :registry
end