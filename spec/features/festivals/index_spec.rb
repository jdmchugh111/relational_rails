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
        end
    end
end