class Volume < ApplicationRecord
  paginates_per 10
  has_many :issues
  validates :name, presence: true, uniqueness: true
end
