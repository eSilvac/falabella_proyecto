class CreateFloors < ActiveRecord::Migration[5.1]
  def change
    create_table :floors, id: false do |t|
      t.primary_key :floor_id
    end
  end
end
