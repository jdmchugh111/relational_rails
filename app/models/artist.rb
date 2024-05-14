class Artist < ApplicationRecord
    belongs_to :festival

    def self.filter(number)
        Artist.where("performers > #{number}")
    end
end