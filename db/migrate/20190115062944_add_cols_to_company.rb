class AddColsToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :website, :string
    add_column :companies, :email_domain, :string
  end
end
