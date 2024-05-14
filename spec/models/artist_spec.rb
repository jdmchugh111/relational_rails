require 'rails_helper'

RSpec.describe Artist do
  describe 'relationships' do
    it {should belong_to :festival}
  end
end