class AddFalabellaEmployeeToBill < ActiveRecord::Migration[5.1]
  def change
    add_reference :bills, :falabella_employees, index: true, null: false
  end
end
