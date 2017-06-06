class Lecture < ApplicationRecord
  belongs_to :course
  has_many :artworks, dependent: :destroy
end
