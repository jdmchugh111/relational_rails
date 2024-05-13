class Artist < ApplicationRecord
    belongs_to :festival

    # def sort_by_name
    #     Artist.order(:name)
    # end
end