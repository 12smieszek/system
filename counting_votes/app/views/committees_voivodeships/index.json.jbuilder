json.array!(@committees_voivodeships) do |committees_voivodeship|
  json.extract! committees_voivodeship, :id, :committee_id, :voivodeship_id
  json.url committees_voivodeship_url(committees_voivodeship, format: :json)
end
