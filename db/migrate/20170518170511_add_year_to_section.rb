class AddYearToSection < ActiveRecord::Migration[5.0]
  def change
  	add_column :sections, :year, :string
  end
end
