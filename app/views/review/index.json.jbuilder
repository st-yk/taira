json.array! @reviews do |review|
  json.name review.name
  json.age review.age
  json.comment review.comment
end
