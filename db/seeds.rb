start_time = Time.now

puts "Starting over.."
TourStop.destroy_all
Spot.destroy_all
Tour.destroy_all
City.destroy_all
Country.destroy_all

puts "Create countries.."
singapore_country = Country.create!(name: "Singapore")

puts "Create cities.."
singapore_city = City.create!(name: "Singapore", country: singapore_country)

puts "Create spots.."
mbs = Spot.create!(name: "Marina Bay Sands", description: "Visit Singapore's most iconic hotel for the world's largest rooftop Infinity Pool, award-winning dining, and a wide range of shopping and entertainment options.", city: singapore_city)
rain_vortex = Spot.create!(name: "The Rain Vortex", description: "The Rain Vortex is an indoor waterfall in Jewel Changi Airport, Singapore which was opened on 17 April 2019. It is the world's largest indoor waterfall and surrounded by a four-storey terraced forest.", city: singapore_city)
cloud_forest = Spot.create!(name: "Cloud Forest", description: "The Cloud Forest replicates the cool moist conditions found in tropical mountain regions. It features a 42-metre 'Cloud Mountain'.", city: singapore_city)
botanic_gardens = Spot.create!(name: "Botanic Gardens", description: "The Singapore Botanic Gardens is a 161-year-old tropical garden. It is one of three gardens, and the only tropical garden, to be honoured as a UNESCO World Heritage Site.", city: singapore_city)
gardens_by_the_bay = Spot.create!(name: "Gardens by the Bay", description: "The lush and beautiful Gardens by the Bay is dominated by the sleekly sculptured biodomes—marvels of architecture, design and engineering.", city: singapore_city)

puts "Create tours.."
jungle_vibes = Tour.create!(name: "Jungle Vibes", price: 1300, rating: 5, length: 3, level: "Strenuous", language: "English")

puts "Create tour stops.."
TourStop.create!(tour: jungle_vibes, spot: mbs)
TourStop.create!(tour: jungle_vibes, spot: rain_vortex)
TourStop.create!(tour: jungle_vibes, spot: cloud_forest)
TourStop.create!(tour: jungle_vibes, spot: botanic_gardens)
TourStop.create!(tour: jungle_vibes, spot: gardens_by_the_bay)

puts "Let's tour!"

puts "✨ Done in #{(Time.now - start_time).to_f.round(2)}s."
