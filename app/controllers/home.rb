get '/' do
  redirect to '/contacts'
end

get '/contacts/?' do
  # display all contacts
  @contacts = Contact.all
  erb :contacts
end

post '/contacts/new' do
  # create new contact

  @contact = Contact.new(params)
  #   first_name: params[:first_name],
  #   last_name: params[:last_name],
  #   street: params[:street],
  #   city: params[:city],
  #   state: params[:state],
  #   zip: params[:zip],
  #   email: params[:email],
  #   phone: params[:phone]
  # )
  if @contact.save
    {sendback: @contact}.to_json
  else
    {sendback: @contact.errors}.to_json
  end
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
