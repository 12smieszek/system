class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.integer :number
      t.integer :mandate_number
      t.integer :authorized_number
      t.integer :empty_votes
      t.integer :many_votes
      t.integer :other_votes
      t.integer :given_cards
      t.integer :returned_cards
      t.references :voivodeship, index: true

      t.timestamps null: false
    end
    add_foreign_key :constituencies, :voivodeships
  end
end
