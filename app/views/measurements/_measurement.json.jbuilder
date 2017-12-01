json.extract! measurement, :id, :height, :weight, :temperature, :blood_pressure, :heart_rate, :breathing_frequency, :annotations, :created_at, :updated_at
json.url measurement_url(measurement, format: :json)
