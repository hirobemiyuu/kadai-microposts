class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: {maximum: 255}
  
  has_many :stars
  has_many :favorite_user, through: :stars, source: :user
  
  
end
