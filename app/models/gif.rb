class Gif < ApplicationRecord
  validates :image_path, presence: true
end
