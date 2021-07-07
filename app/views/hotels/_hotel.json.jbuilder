json.extract! hotel, :id, :room_num, :first_name, :last_name, :phone_num, :start_date, :end_date, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
