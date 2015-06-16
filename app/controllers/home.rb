get '/' do
  redirect to '/contacts'
end

get '/contacts' do
  # display all contacts
  erb :contacts
end

get '/contacts/:id' do
  # display single contact
  erb :single_contact
end

post '/contacts/:id/edit' do
  # edit a contact
end

post '/contacts/new' do
  # create new contact
end
