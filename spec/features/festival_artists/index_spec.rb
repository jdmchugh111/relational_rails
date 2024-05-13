require "rails_helper"

describe "Festival Artist Index Page" do
    context "as a user" do
        describe "when I visit festival artists index" do
            it "shows me all artists of festival" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                artist1 = Artist.create!(name: "Pretty Lights", performers: 1, headliner: true, festival_id: festival1.id)
                artist2 = Artist.create!(name: "Post Malone", performers: 6, headliner: true, festival_id: festival1.id)

                visit "/festivals/#{festival1.id}/artists"

                expect(page).to have_content("#{festival1.name}")
                expect(page).to have_content("#{artist1.name}")
                expect(page).to have_content("#{artist2.name}")
                expect(page).to have_content("Performers: #{artist1.performers}")
                expect(page).to have_content("Performers: #{artist2.performers}")
                expect(page).to have_content("Headliner: #{artist1.headliner}")
                expect(page).to have_content("Headliner: #{artist2.headliner}")
            end

            it "has a link that directs you to Create Artist page" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)

                visit "/festivals/#{festival1.id}/artists"
                click_link "Create Artist"

                expect(current_path).to eq("/festivals/#{festival1.id}/artists/new")
            end
            let(:this) {"Pretty Lights"}
            let(:that) {"Post Malone"}
            it "can sort artists alphabetically" do
                festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
                artist1 = Artist.create!(name: "Pretty Lights", performers: 1, headliner: true, festival_id: festival1.id)
                artist2 = Artist.create!(name: "Post Malone", performers: 6, headliner: true, festival_id: festival1.id)

                visit "/festivals/#{festival1.id}/artists"
                click_link "Sort Artists by Name"

                expect(artist2.name).to appear_before(artist1.name)
            end

        end
    end
end