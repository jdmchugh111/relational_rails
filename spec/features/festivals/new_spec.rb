require "rails_helper"

describe "New Festival Page" do
    context "as a user" do
        describe "when I visit new festival page" do
            it "has fields for each attribute" do
                visit "/festivals/new"

                expect(page).to have_content("Festival Name:")
                expect(page).to have_content("Location:")
                expect(page).to have_content("Stages:")
                expect(page).to have_content("Age Restricted:")
            end

            it "can create new festival and redirect me to festival index" do
                visit "/festivals/new"
                fill_in "name", with: "Austin City Limits"
                fill_in "location", with: "Austin, TX"
                fill_in "stages", with: "5"
                fill_in "age_restricted", with: "false"
                click_button "Create Festival"

                expect(current_path).to eq("/festivals")
                expect(page).to have_content("Austin City Limits")
            end
        end
    end
end