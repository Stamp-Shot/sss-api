class Spot < ApplicationRecord
    belongs_to :course, inverse_of: :spot ,optional: true


    #validates :name, presence: true
    #validates :GPS_X, numericality: true
    #validates :GPS_Y, numericality: true
end