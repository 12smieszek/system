class ChangeConstituenciesName < ActiveRecord::Migration
  def change
  	change_column :constituencies, :name,  :string
  end
end
