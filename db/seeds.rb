# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
festival2 = Festival.create!(name: "Coachella", location: "Indio, CA", stages: 8, age_restricted: false)
festival3 = Festival.create!(name: "Governors Ball", location: "Queens, NY", stages: 3, age_restricted: false)
festival4 = Festival.create!(name: "Jazz Fest", location: "New Orleans, LA", stages: 14, age_restricted: false)

artist1 = Artist.create!(name: "Pretty Lights", performers: 1, headliner: true, festival_id: 1)
artist2 = Artist.create!(name: "Post Malone", performers: 6, headliner: true, festival_id: 1)
artist3 = Artist.create!(name: "Gwar", performers: 8, headliner: false, festival_id: 1)
artist4 = Artist.create!(name: "Oliver Heldens", performers: 1, headliner: false, festival_id: 1)

artist5 = Artist.create!(name: "Lana Del Rey", performers: 7, headliner: true, festival_id: 2)
artist6 = Artist.create!(name: "Doja Cat", performers: 9, headliner: true, festival_id: 2)
artist7 = Artist.create!(name: "Justice", performers: 2, headliner: false, festival_id: 2)
artist8 = Artist.create!(name: "Sabrina Carpenter", performers: 6, headliner: false, festival_id: 2)

artist9 = Artist.create!(name: "The Killers", performers: 5, headliner: true, festival_id: 3)
artist10 = Artist.create!(name: "21 Savage", performers: 5, headliner: true, festival_id: 3)
artist11 = Artist.create!(name: "Alex G", performers: 6, headliner: false, festival_id: 3)
artist12 = Artist.create!(name: "Doechii", performers: 7, headliner: false, festival_id: 3)

artist13 = Artist.create!(name: "Foo Fighters", performers: 8, headliner: true, festival_id: 4)
artist14 = Artist.create!(name: "Hozier", performers: 7, headliner: true, festival_id: 4)
artist15 = Artist.create!(name: "PJ Morton", performers: 4, headliner: false, festival_id: 4)
artist16 = Artist.create!(name: "Galactic", performers: 5, headliner: false, festival_id: 4)
