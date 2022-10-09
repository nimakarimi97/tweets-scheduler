json.extract! event, :id, :name, :start_at, :duration_minutes, :created_at, :updated_at
json.url event_url(event, format: :json)
