class Gif < ApplicationRecord
  validates :image_path, presence: true
  belongs_to :category
end
