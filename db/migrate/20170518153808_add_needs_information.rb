class AddNeedsInformation < ActiveRecord::Migration[5.0]
  def change
  	add_column :needs, :name, :string
  	add_column :needs, :description, :string
  	add_column :needs, :value, :float
  	add_column :needs, :sales_place, :string
  end
end
