json.array!(@meal_log_entries) do |meal_log_entry|
  json.extract! meal_log_entry, :id, :eaten_on, :meal
  json.url meal_log_entry_url(meal_log_entry, format: :json)
end
