json.array!(@reports) do |report|
  json.extract! report, :id, :report_start, :report_end
  json.url report_url(report, format: :json)
end
