class CreateExternalEmployeeShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :external_employee_shifts do |t|
      t.date :date, null: false
      t.references :external_employee, index: true, null: false
      t.references :shift, index: true, null: false
    end
  end
end