get '/' do
  redirect to '/contacts'
end

get '/contacts' do
  # display all contacts
  @contacts = Contact.all
  erb :contacts
end

post '/contacts/new' do
  # create new contact
end

get '/contacts/edit/:id' do
  # show contact edit page
  @contact = Contact.find(params[:id])
  erb :edit_contact
end

post '/contacts/edit/:id' do
  # edit a contact
end

get '/contacts/:id' do
  # display single contact
  @contact = Contact.find(params[:id])
  erb :single_contact
end
