require "rails_helper"

describe "Festival Show Page" do
    context "as a user" do
        describe "when I visit festival show page" do
            it "shows me all attributes of festival" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)

                visit "/festivals/#{festival1.id}"

                expect(page).to have_content("#{festival1.name}")
                expect(page).to have_content("Location: #{festival1.location}")
                expect(page).to have_content("Stages: #{festival1.stages}")
                expect(page).to have_content("Age Restricted: #{festival1.age_restricted}")
            end

            it "displays a count of all artist in festival" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                artist1 = Artist.create!(name: "Pretty Lights", performers: 1, headliner: true, festival_id: festival1.id)
                artist2 = Artist.create!(name: "Post Malone", performers: 6, headliner: true, festival_id: festival1.id)

                visit "/festivals/#{festival1.id}"

                expect(page).to have_content("Artists: 2")
            end

            it "has a link that directs you to show_artists page" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                artist1 = Artist.create!(name: "Pretty Lights", performers: 1, headliner: true, festival_id: festival1.id)
                artist2 = Artist.create!(name: "Post Malone", performers: 6, headliner: true, festival_id: festival1.id)

                visit "/festivals/#{festival1.id}"
                click_link "Artists"

                expect(current_path).to eq("/festivals/#{festival1.id}/artists")
            end

            it "has a link that directs you to Edit page" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)

                visit "/festivals/#{festival1.id}"
                click_link "Update Festival"

                expect(current_path).to eq("/festivals/#{festival1.id}/edit")
            end
        end
    end
end