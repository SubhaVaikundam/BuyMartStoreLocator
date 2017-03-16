class CreateBuymartStoreAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :buymart_store_addresses do |t|
      t.string :location_id
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :country
      t.string :state_addr
      t.integer :postal_code
      t.string :county
      t.string :phone_number
      t.string :fax_number
      t.string :email
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
