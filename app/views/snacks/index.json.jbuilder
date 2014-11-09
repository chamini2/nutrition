json.array!(@snacks) do |snack|
  json.extract! snack, :id, :name, :calories
  json.url snack_url(snack, format: :json)
end
