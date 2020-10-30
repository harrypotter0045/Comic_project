class Character < ApplicationRecord
  paginates_per 5
  belongs_to :issue
  validates :name, presence: true, uniqueness: true
  validates :gender, length: { maximum: 1 }
end
