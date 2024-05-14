class Artist < ApplicationRecord
    belongs_to :festival

    # def self.sort_by_name
    #     Artist.order(:name)
    # end
    # def self.filter
    #     Artist.where(:performers > :threshold)
    # end
end