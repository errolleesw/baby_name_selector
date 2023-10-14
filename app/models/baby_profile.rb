class BabyProfile < ApplicationRecord
    has_many :baby_name_options, dependent: :destroy      
end
