require "rails_helper"

describe "Festival Show Artists Page" do
    context "as a user" do
        describe "when I visit festival show artists page" do
            it "shows me all artists of festival" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                artist1 = Artist.create!(name: "Pretty Lights", performers: 1, headliner: true, festival_id: festival1.id)
                artist2 = Artist.create!(name: "Post Malone", performers: 6, headliner: true, festival_id: festival1.id)

                visit "/festivals/#{festival1.id}/artists"

                expect(page).to have_content("#{festival1.name}")
                expect(page).to have_content("#{artist1.name}")
                expect(page).to have_content("#{artist2.name}")
                expect(page).to have_content("Performers: #{artist1.performers}")
                expect(page).to have_content("Performers: #{artist2.performers}")
                expect(page).to have_content("Headliner: #{artist1.headliner}")
                expect(page).to have_content("Headliner: #{artist2.headliner}")
            end
        end
    end
end