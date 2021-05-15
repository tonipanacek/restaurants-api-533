json.extract! @restaurant, :id, :name, :address
json.comments @restaurant.comments.each do |comment|
  json.extract! comment, :id, :content, :created_at
  json.author comment.user.email
end
