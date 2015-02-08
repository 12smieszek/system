class AddColumnsToCommittees < ActiveRecord::Migration
  def change
    add_column :committees, :logo_content_type, :string
    add_column :committees, :logo_file_size, :integer
  end
end
