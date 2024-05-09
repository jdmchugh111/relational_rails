require "rails_helper"

describe "Festival Index Page" do
    context "as a user" do
        describe "when I visit festivals index" do
            it "shows me all festival names" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                festival2 = Festival.create!(name: "Coachella", location: "Indio, CA", stages: 8, age_restricted: false)

                visit "/festivals"

                expect(page).to have_content(festival1.name)
                expect(page).to have_content(festival2.name)
            end
        end
    end
end