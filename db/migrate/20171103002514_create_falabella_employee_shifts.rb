class CreateFalabellaEmployeeShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :falabella_employee_shifts do |t|
      t.date :date, null: false
      t.references :falabella_employee, index: true
      t.references :shift, index: true
    end
  end
end
