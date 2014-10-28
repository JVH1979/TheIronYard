require 'sinatra'
require 'data_mapper'

DataMapper.setup(
  :default,
  'mysql://root@localhost/people'
  # 'protocol://username:password@ip_address/database'
  # 127.0.0.1
)

class Contact
  include DataMapper::Resource

  # attr_accessor :first_name
  # attr_accessor :last_name
  property :id, Serial
  property :first_name, String
  property :last_name, String
end

DataMapper.finalize.auto_upgrade!

get '/' do
  @contacts = Contact.all
  erb :index
end

get '/create_contact' do
	erb: create_contact
end