require 'rails_helper'

RSpec.describe Artist do
  describe 'relationships' do
    it {should belong_to :festival}
  end
  # describe '#sort_by_names' do
  #   it "can sort names alphabetically" do
  #     festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
  #     artist1 = Artist.create!(name: "Pretty Lights", performers: 1, headliner: true, festival_id: festival1.id)
  #     artist2 = Artist.create!(name: "Post Malone", performers: 6, headliner: true, festival_id: festival1.id)

  #     expect(Artist.sort_by_name).to eq([artist2, artist1])
  #   end
  # end
end