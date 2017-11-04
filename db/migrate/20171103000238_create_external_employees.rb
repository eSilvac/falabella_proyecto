class CreateExternalEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :external_employees, id: false do |t|
      t.primary_key :external_employee_id
      t.string :first_name, limit: 45, null: false
      t.string :last_name, limit: 45, null: false
      t.string :phone_number, limit: 20, null: false
      t.string :address, limit: 45, null: false
      t.string :email, limit: 45, null: false
      t.integer :salary, null: false
      t.references :company, index: true, null: false
      t.references :section, index: true, null: false
      t.references :shift, index: true, null: false
    end
  end
end
