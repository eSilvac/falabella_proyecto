class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts, id: false do |t|
      t.primary_key :shift_id
      t.time :entry_time
      t.time :departure_time      
    end
  end
end
