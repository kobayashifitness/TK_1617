json.array!(@muscle_diaries) do |muscle_diary|
  json.extract! muscle_diary, :id
  json.url muscle_diary_url(muscle_diary, format: :json)
end
