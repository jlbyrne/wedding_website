#this app is simple enough I think all of the routing can go on
#one page.  

get '/' do
  erb :index
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

get '/registry' do
	erb :registry, layout: false
end