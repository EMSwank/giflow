class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  validates_presence_of :password, require: true

  has_many :categories, through: :gif
  enum role: ['default', 'admin']
end
