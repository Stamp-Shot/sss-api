class Spot < ApplicationRecord
    mount_uploader　:image, SpotImageUploader
    belongs_to :course ,optional: true


    #validates :name, presence: true
    #validates :GPS_X, numericality: true
    #validates :GPS_Y, numericality: true
end