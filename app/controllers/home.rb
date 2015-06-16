get '/' do
  redirect to '/contacts'
end

get '/contacts' do
  # display all contacts
  @contacts = Contact.all
  erb :contacts
end

get '/contacts/:id' do
  # display single contact
  @contact = Contact.find(:id)
  erb :single_contact
end

post '/contacts/:id/edit' do
  # edit a contact
end

post '/contacts/new' do
  # create new contact
end
