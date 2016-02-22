json.array!(@legs) do |leg|
  json.extract! leg, :id, :trip_id, :start_time, :end_time, :start_mileage, :end_mileage, :non_travel_time_in_minutes, :non_work_miles
  json.url leg_url(leg, format: :json)
end
