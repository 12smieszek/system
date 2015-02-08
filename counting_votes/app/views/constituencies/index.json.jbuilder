json.array!(@constituencies) do |constituency|
  json.extract! constituency, :id, :name, :mandate_number, :authorized_number, :empty_votes, :many_votes, :other_votes, :given_cards, :returned_cards, :voivodeship_id
  json.url constituency_url(constituency, format: :json)
end
