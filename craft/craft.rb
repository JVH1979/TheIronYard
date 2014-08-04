require 'sinatra'
require 'Faker'

get '/' do
	erb :index
end

get '/about.erb' do
	@title = 'craft'
	erb :about
end

get '/beer.erb' do
	@title = "craft-beer"
	erb :beer
end

get '/liquor.erb' do
	@title = "craft-liquor"
	erb :liquor
end


  
