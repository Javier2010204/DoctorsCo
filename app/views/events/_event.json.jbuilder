json.extract! event, :id, :date, :annotations, :patient_id, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
