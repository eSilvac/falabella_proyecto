class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills, id: false do |t|
      t.primary_key :bill_id
      t.integer :payment_type, null: false
      t.date :date, null: false
      t.references :customer, index: true, null: false
      t.references :falabella_employee, index: true, null: false
    end
  end
end
