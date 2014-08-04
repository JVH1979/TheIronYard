require 'sinatra'
require 'faker'

# main site
get '/index' do 
	erb :index
end

#beer
get '/beer' do
	erb :beer
end

#liquor
get '/liquor' do
	erb :liquor
end


#info/faker
get '/info' do
	erb :links
end

