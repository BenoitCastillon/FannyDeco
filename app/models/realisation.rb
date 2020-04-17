class Realisation < ApplicationRecord
  has_one_attached :photo
  validates :name, presence:true
  validates :category, presence: true
  validates :description, presence: true
end
