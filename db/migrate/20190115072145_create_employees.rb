class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.text :address
      t.string :primary_contact_number
      t.string :secondary_contact_number
      t.date :joining_date
      t.string :designation
      t.string :office_location
      t.boolean :active
      t.boolean :suspended
      t.boolean :onleave

      t.timestamps
    end
  end
end
