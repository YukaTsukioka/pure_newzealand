class Post < ApplicationRecord

  has_one_attached :image
  belongs_to :user

  validates :image, presence: true
  validates :title, presence: true
  validates :text, presence: true
  
end
