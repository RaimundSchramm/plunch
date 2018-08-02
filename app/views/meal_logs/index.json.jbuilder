json.array!(@meal_logs) do |meal_log|
  json.extract! meal_log, :id, :name, :from, :till
  json.url meal_log_url(meal_log, format: :json)
end
