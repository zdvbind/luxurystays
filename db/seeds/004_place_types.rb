# Place Types
puts "Started Seeding Place Types..."

place_types = [
  { title: "Accommodation ", key: "accommodation" },
  { title: "Beach ", key: "beach" },
  { title: "Town ", key: "town" }
]
place_types.each do |place_type|
  PlaceType.find_or_create_by(key: place_type[:key], title: place_type[:title])
end

puts "Finished Seeding Place Types!"
