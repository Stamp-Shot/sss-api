class Cource < ApplicationRecord
    has_many :spot

    validates :name ,presence :true
    validates :spot_num ,numericality :true
end
