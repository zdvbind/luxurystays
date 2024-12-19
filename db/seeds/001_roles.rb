# Roles
puts "Started Seeding Roles..."

roles = [
  { title: 'Admin', key: 'admin' },
  { title: 'Organization User', key: 'organization_user' }
]

# roles.each do |role|
#   Role.find_or_create_by(key: role[:key]) do |r|
#     r.title = role[:title]
#   end
# end

roles.each do |role|
  Role.find_or_create_by(key: role[:key], title: role[:title])
end

puts "Finished Seeding Roles!"
