class Volume < ApplicationRecord
  has_many :issues
  validates :name, :description, presence: true, uniqueness: true
end
