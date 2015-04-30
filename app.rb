require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/phone')
require('pry')

get('/') do
  erb(:index)
end

get('/contact_list/new') do ##why new? some server requirement?
  erb(:contact_form)
end

get('/contact_list') do
  @contacts = Contact.all()
  erb(:contact_list)
end

post('/contact_list') do
  contact = params.fetch('first_name')
  Contact.new({:first_name => contact, :last_name => "", :birthday => ""}).save()
  @contacts = Contact.all()
  erb(:success)
end

get('/all_phone_numbers/:id') do
  @phone_number = Phone.find(params.fetch('id'))
  erb(:phone_number)
end

get('/contact_list/:id/all_phone_numbers/new') do
  @contact = Contact.find(params.fetch('id'))
  erb(:contact_phone_form)
end

post('/all_phone_numbers') do
  area_code = params.fetch('area_code')
  phone_number = params.fetch('phone_number')
  type = params.fetch('type')
  @phone_number = Phone.new(area_code, phone_number, type)
  @phone_number.save()
  @contact = Contact.find(params.fetch('contact_id'))
  @contact.add_phone(@phone_number)
  erb(:success)
end
