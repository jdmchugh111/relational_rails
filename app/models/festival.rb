class Festival < ApplicationRecord
    has_many :artists, dependent: :destroy
end