require "rails_helper"

describe "Festival Index Page" do
    context "as a user" do
        describe "when I visit festivals index" do
            let(:this) {"Bonnaroo"}
            let(:that) {"Coachella"}

            it "shows me all festival names, ordered by most recent" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                festival2 = Festival.create!(name: "Coachella", location: "Indio, CA", stages: 8, age_restricted: false)

                visit "/festivals"

                expect(page).to have_content(festival1.name)
                expect(page).to have_content(festival2.name)
                expect(page).to have_content("Created At: #{festival1.created_at}")
                expect(page).to have_content("Created At: #{festival2.created_at}")

                expect(that).to appear_before(this)
            end

            it "has a link for New Festival" do
                visit "/festivals"
                expect(page).to have_link "New Festival"
            end

            it "redirects me to New Festival page when I click the link" do
                visit "/festivals"
                click_link "New Festival"

                expect(current_path).to eq("/festivals/new")
            end

            it "has a link to edit each festival" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)

                visit "/festivals"

                expect(page).to have_link("Edit")
            end

            it "has a delete button that works" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)

                visit "/festivals"
                click_button "delete"

                expect(current_path).to eq("/festivals")
                expect(page).to have_no_content("Bonnaroo")
            end
        end
    end
end