json.array!(@muscle_masses) do |muscle_mass|
  json.extract! muscle_mass, :id
  json.url muscle_mass_url(muscle_mass, format: :json)
end
