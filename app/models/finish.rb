class Finish < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :cource, optional: true
    belongs_to :spot, optional: true

    #validates :user_id, numericality: true
    #validates :cource_id, numericality: true
    #validates :spot_id, numericality: true
end
