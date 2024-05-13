require "rails_helper"

describe "Create Artist Page" do
    context "as a user" do
        describe "when I visit create artist page" do
            it "has fields for each attribute" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                
                visit "/festivals/#{festival1.id}/artists/new"

                expect(page).to have_content("Artist Name:")
                expect(page).to have_content("Performers:")
                expect(page).to have_content("Headliner:")
            end

            it "can create a new artist who is a child of the current festival" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                
                visit "/festivals/#{festival1.id}/artists/new"
                fill_in "name", with: "Disclosure"
                fill_in "performers", with: "2"
                fill_in "headliner", with: "true"
                click_button "Create Artist"

                expect(current_path).to eq("/festivals/#{festival1.id}/artists")
                expect(page).to have_content("Disclosure")
                expect(page).to have_content("Performers: 2")
                expect(page).to have_content("Headliner: true")
            end
        end
    end
end