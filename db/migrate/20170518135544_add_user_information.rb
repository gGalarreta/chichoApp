class AddUserInformation < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :phone, :string
  	add_column :users, :section, :integer
  	add_reference :users, :section, null: true
  end
end
