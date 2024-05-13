require "rails_helper"

describe "All Pages" do
    context "as a user" do
        describe "when I visit any page" do
            it "has links for festival and artist indexes" do
                visit "/festivals"

                expect(page).to have_content("Artist Index")
                expect(page).to have_content("Festival Index")
            end

            it "directs to Artist Index when link is clicked" do
                visit "/festivals"

                save_and_open_page

                click_link "Artist Index"

                expect(current_path).to eq("/artists")
            end

            it "directs to Festival Index when link is clicked" do
                visit "/artists"
                click_link "Festival Index"

                expect(current_path).to eq("/festivals")
            end
        end
    end
end