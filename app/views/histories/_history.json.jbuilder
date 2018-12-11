json.extract! history, :id, :buisiness_name, :api_id, :lat, :long, :address, :zip, :created_at, :updated_at
json.url history_url(history, format: :json)
