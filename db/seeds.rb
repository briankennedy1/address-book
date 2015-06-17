5.times do Contact.create(
   :first_name => Faker::Name.first_name,
   :last_name => Faker::Name.last_name,
   :street => Faker::Address.street_address,
   :city => Faker::Address.city,
   :state => Faker::Address.state,
   :zip => Faker::Address.zip,
   :email => Faker::Internet.email,
   :phone => Faker::PhoneNumber.cell_phone
) end
