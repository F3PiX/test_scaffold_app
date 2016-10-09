json.extract! controller_thing, :id, :created_at, :updated_at
json.url controller_thing_url(controller_thing, format: :json)