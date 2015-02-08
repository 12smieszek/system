class AddColumnsToVoivodeship < ActiveRecord::Migration
  def change
  	add_column :voivodeships, :authorized_number, :integer
  	add_column :voivodeships, :mandate_number, :integer
  end
end
