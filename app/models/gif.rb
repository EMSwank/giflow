class Gif < ApplicationRecord
  validates :image_path, presence: true
  has_many :categories
end
