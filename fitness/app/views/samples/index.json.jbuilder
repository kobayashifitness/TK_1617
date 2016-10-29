json.array!(@samples) do |sample|
  json.extract! sample, :id, :moji, :kazu, :hizuke
  json.url sample_url(sample, format: :json)
end
