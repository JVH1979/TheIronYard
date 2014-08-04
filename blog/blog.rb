require 'sinatra'
require 'data_mapper'

DataMapper.setup
(:default, 'mysql://root@root/blog_posts')

class Blog
	include DataMapper: :Resource
		property :id, Serial
		property :blog_title, String
		property :Blog_entries, String
end

DataMapper.finalize.auto_upgrade!

get '/' do
	@blog = blog.all
	erb :create_blogpost, layout: :blog_layout
end

get '/create_blogpost' do
	erb :create_blogpost, layout: :blog_layout
end

post '/create_blogpost' do
	@blog = Blog.create params[:blog]
	redirect to ('/')
end

get '/display_blogpost' do
	@blog = Blog.get params[:blog]
	erb :display_blogpost, layout: :blog_layout
end

get "/edit_blogpost" do
	@blog = Blog.get params[:blog]
	erb :edit_blogpost, layout: :blog_layout
end

put 'edit_blogpost' do
	p params
	@blog = Blog.get params[:blog]
end

delete 'delete_blogpost' do
	@blog = Blog.get params[:blog]
	@blog.destroy
	redirect to("/")
end