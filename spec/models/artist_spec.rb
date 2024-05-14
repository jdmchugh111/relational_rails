require 'rails_helper'

RSpec.describe Artist do
  describe 'relationships' do
    it {should belong_to :festival}
  end
  describe '::filter' do
    it "should filter artists based on a threshold" do
      festival1 = Festival.create!(name: "Bonnaroo", location: "Manchester, TN", stages: 5, age_restricted: true)
      artist1 = Artist.create!(name: "Pretty Lights", performers: 1, headliner: false, festival_id: festival1.id)
      artist2 = Artist.create!(name: "Post Malone", performers: 6, headliner: true, festival_id: festival1.id)

      expect(Artist.filter(2)).to eq([artist2])
    end
  end

          
end