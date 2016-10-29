json.array!(@mymenus) do |mymenu|
  json.extract! mymenu, :id
  json.url mymenu_url(mymenu, format: :json)
end
