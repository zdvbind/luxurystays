# Geo Regions
puts "Started Seeding Geo Regions..."

nsw_state = GeoState.find_by(key: "nsw_au")

nsw_regions = [
  { title: "Byron Bay ", key: "byron_bay_nsw_au", geo_state: nsw_state },
  { title: "South Coast ", key: "south_coast_nsw_au", geo_state: nsw_state }
]
nsw_regions.each do |nsw_region|
  GeoRegion.find_or_create_by(key: nsw_region[:key], title: nsw_region[:title], geo_state: nsw_region[:geo_state])
end

puts "Finished Seeding Geo Regions!"
