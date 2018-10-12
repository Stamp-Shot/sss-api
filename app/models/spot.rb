class Spot < ApplicationRecord
    belongs_to :cource

    validates :name, presence: true
    validates :GPS_X, numericality :true
    validates :GPS_Y, numericality :true
end
