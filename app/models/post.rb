class Post < ApplicationRecord

  has_one_attached :image
  belongs_to :user
  has_many :comments

  validates :image, presence: true
  validates :title, presence: true
  validates :text, presence: true
  
end
