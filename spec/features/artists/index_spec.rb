require "rails_helper"

describe "Artist Index Page" do
    context "as a user" do
        describe "when I visit artists index" do
            it "shows me all artist names" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                artist1 = Artist.create!(name: "Pretty Lights", performers: 1, headliner: true, festival_id: festival1.id)
                artist2 = Artist.create!(name: "Post Malone", performers: 6, headliner: true, festival_id: festival1.id)
                
                visit "/artists"

                expect(page).to have_content(artist1.name)
                expect(page).to have_content(artist2.name)
                expect(page).to have_content("Performers: #{artist1.performers}")
                expect(page).to have_content("Performers: #{artist2.performers}")
                expect(page).to have_content("Headliner: #{artist1.headliner}")
                expect(page).to have_content("Headliner: #{artist2.headliner}")
                expect(page).to have_content("Festival Id: #{artist1.festival_id}")
                expect(page).to have_content("Festival Id: #{artist2.festival_id}")
            end
        end
    end
end