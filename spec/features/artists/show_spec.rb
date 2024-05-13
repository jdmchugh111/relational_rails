require "rails_helper"

describe "Artist Show Page" do
    context "as a user" do
        describe "when I visit Artist show page" do
            it "shows me all attributes of artist" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                artist1 = Artist.create!(name: "Pretty Lights", performers: 1, headliner: true, festival_id: festival1.id)

                visit "/artists/#{artist1.id}"

                expect(page).to have_content("#{artist1.name}")
                expect(page).to have_content("Performers: #{artist1.performers}")
                expect(page).to have_content("Headliner: #{artist1.headliner}")
                expect(page).to have_content("Festival Id: #{artist1.festival_id}")
            end
        end
    end
end