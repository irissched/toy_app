class Micropost < ApplicationRecord
    belongs_to :user
    has_one :user
    validates :content, length: { maximum: 140 }, 
    presence: true
end
