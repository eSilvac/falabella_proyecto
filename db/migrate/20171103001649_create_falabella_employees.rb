class CreateFalabellaEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :falabella_employees, id: false do |t|
        t.primary_key :falabella_employee_id
        t.string :first_name, limit: 45, null: false
        t.string :last_name, limit: 45, null: false
        t.string :phone_number, limit: 20, null: false
        t.string :address, limit: 45, null: false
        t.string :email, limit: 45, null: false
        t.integer :salary, null: false
        t.integer :type, null: false
        t.references :floor, index: true
        t.references :section, index: true
        t.references :shift, index: true
    end
  end
end
