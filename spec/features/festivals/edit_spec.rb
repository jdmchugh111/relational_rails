require "rails_helper"

describe "Edit Festival Page" do
    context "as a user" do
        describe "when I visit Edit Festival page" do
            it "can edit festival" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)

                visit "/festivals/#{festival1.id}/edit"
                fill_in "name", with: "The Roo"
                click_button "Update"

                expect(current_path).to eq("/festivals/#{festival1.id}")
                expect(page).to have_content("The Roo")
            end
        end
    end
end