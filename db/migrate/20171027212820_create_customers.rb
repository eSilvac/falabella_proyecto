class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers, id: false do |t|
      t.primary_key :customer_id
      t.string :first_name, limit: 25, null: false
      t.string :last_name, limit: 25, null: false
      t.string :email, limit: 45, null: false
      t.string :address, limit: 45, null: false 
      t.integer :customer_type, null: false 
    end
  end
end
