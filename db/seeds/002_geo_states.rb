# Geo States
puts "Started Seeding Geo States..."

geo_states = [
  { title: "New South Wales", key: "nsw_au", code: "NSW" },
]

# roles.each do |role|
#   Role.find_or_create_by(key: role[:key]) do |r|
#     r.title = role[:title]
#   end
# end

geo_states.each do |geo_state|
  GeoState.find_or_create_by(key: geo_state[:key], title: geo_state[:title], code: geo_state[:code])
end

puts "Finished Seeding Geo States!"
