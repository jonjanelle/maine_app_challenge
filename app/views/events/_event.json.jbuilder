json.extract! event, :id, :name, :description, :max_participants, :cost, :start_date, :end_date, :created_at, :updated_at
json.url event_url(event, format: :json)
