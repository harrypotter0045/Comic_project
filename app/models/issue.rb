class Issue < ApplicationRecord
  belongs_to :volume, optional: true
  has_many :characters
  validates :name, presence: true, uniqueness: true
end
