json.array!(@ratings) do |rating|
  json.extract! rating, :id, :score, :movie_id, :user_id
  json.url rating_url(rating, format: :json)
end
