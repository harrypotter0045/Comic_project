class Issue < ApplicationRecord
  paginates_per 10
  belongs_to :volume, optional: true
  has_many :characters
  validates :name, presence: true, uniqueness: true
end
