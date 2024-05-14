class Artist < ApplicationRecord
    belongs_to :festival

    # def self.sort_by_name
    #     Artist.order(:name)
    # end
    def self.filter(number)
        Artist.where("performers > #{number}")
    end
end