json.extract! reservation, :id, :name, :number_of_people, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
