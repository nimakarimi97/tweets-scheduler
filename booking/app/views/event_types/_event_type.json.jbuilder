json.extract! event_type, :id, :name, :location, :description, :duration, :price, :user_id, :created_at, :updated_at
json.url event_type_url(event_type, format: :json)
json.description event_type.description.to_s
