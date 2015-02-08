class CreateCommitteesVoivodeships < ActiveRecord::Migration
  def change
    create_table :committees_voivodeships do |t|
      t.references :committee, index: true
      t.references :voivodeship, index: true

      t.timestamps null: false
    end
    add_foreign_key :committees_voivodeships, :committees
    add_foreign_key :committees_voivodeships, :voivodeships
  end
end
