class Finish < ApplicationRecord
    belongs_to :user
    belongs_to :cource
    belongs_to :spot
end
