class Exchange < ApplicationRecord
    belongs_to :user ,optional: true
    belongs_to :cource ,optional: true

    #validates :user_id, numericality :true
    #validates :cource_id, numericality :true
end
