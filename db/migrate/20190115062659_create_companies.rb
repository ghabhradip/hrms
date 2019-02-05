class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.date :established_on
      t.integer :employee_strength
      t.string :owner_one
      t.string :owner_two
      t.string :owner_3
      t.string :owner_four

      t.timestamps
    end
  end
end
