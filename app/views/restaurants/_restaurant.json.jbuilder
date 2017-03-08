json.extract! restaurant, :id, :name, :restaurantId, :photoUrl, :menueUrl, :location, :website, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
