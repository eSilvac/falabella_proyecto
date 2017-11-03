class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.integer :quantity, null: false
      t.references :product, index: true, null: false
    end
  end
end
