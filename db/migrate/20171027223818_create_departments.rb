class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments, id: false do |t|
      t.primary_key :department_id
      t.string :name, limit: 45, null: false
      t.belongs_to :floor, index: true, foreign_key: true
    end
  end
end
