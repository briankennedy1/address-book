class AddContactTable < ActiveRecord::Migration
  def change
    crate_table do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone
    end
  end
end
