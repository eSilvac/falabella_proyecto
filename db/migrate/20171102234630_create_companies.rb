class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies, id: false do |t|
      t.primary_key :company_id
      t.string :name, limit: 45, null: false
      t.string :phone_number, limit: 20, null: false
    end
  end
end
