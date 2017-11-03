class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products, id: false do |t|
      t.primary_key :product_id
      t.integer :value, null: false
    end
  end
end
