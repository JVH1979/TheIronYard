require 'rubygems'
require 'sinatra'

get "/" do
     "hello world"
end

get "/about" do
	"so a little about me"
end

get '/more/*' do
	params[:splat]
end