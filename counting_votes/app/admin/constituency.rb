ActiveAdmin.register Constituency do
  permit_params :name, :voivodeship, :voivodeship_id, :mandate_number, :authorized_number, :empty_votes, :many_votes, :other_votes, :given_cards, :returned_cards
  
  index do
    selectable_column
    id_column
    column :name
    column :voivodeship
    column :mandate_number
    column :authorized_number
    column :empty_votes
    column :many_votes
    column :other_votes
    column :given_cards
    column :returned_cards
    actions
  end

end