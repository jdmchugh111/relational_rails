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
                expect(page).to have_content("Created At: #{festival1.created_at}")
                expect(page).to have_content("Updated At: #{festival1.updated_at}")
            end
        end
    end
end