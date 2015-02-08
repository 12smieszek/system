class ChangeColumnConstituencies < ActiveRecord::Migration
  def change
  	rename_column :constituencies, :number, :name
  end
  def change  
    reversible do |dir|
      change_table :constituencies do |t|
        dir.up   { t.change :name, :integer }
        dir.down { t.change :name, :string }
      end
    end
  end
end

