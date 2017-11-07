class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections, id: false   do |t|
      t.primary_key :section_id
      t.string :name, limit: 45, null: false
      t.references :department, index: true, null: false
    end
  end
end
