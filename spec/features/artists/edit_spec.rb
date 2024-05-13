require "rails_helper"

describe "Edit Artist Page" do
    context "as a user" do
        describe "when I visit Edit Artist page" do
            it "can edit artist" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                artist1 = Artist.create!(name: "Pretty Lights", performers: 1, headliner: true, festival_id: festival1.id)

                visit "/artists/#{artist1.id}/edit"
                fill_in "name", with: "Ugly Lights"
                click_button "Update Artist"

                expect(current_path).to eq("/artists/#{artist1.id}")
                expect(page).to have_content("Ugly Lights")
            end
        end
    end
end