require 'rails_helper'

RSpec.describe Festival do
  describe 'relationships' do
    it {should have_many :artists}
  end
end