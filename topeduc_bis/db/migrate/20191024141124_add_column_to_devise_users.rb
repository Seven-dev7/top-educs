class AddColumnToDeviseUsers < ActiveRecord::Migration[6.0]
  def change

  	add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :job, :string
    add_column :users, :nationality, :string
    add_column :users, :phone, :string
    add_column :users, :availability, :boolean
    add_column :users, :adress, :string
    add_column :users, :ZIP_CODE, :string
    
  end
end
