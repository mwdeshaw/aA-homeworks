class Album < ApplicationRecord
    validates :name, presence: true, uniqueness: true 
    validates :band_id, presence: true
    validates :year, live:, presence: true

    belongs_to :band,
        primary_key: :id,
        foreign_key: :band_id,
        class_name: :Band
    
end
