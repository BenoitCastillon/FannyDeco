class Realisation < ApplicationRecord
  has_many_attached :photos
  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
end
