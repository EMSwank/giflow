class Category < ApplicationRecord
  validates :title, presence: true
  has_many :gifs, dependent: :destroy
end
