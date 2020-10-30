class Issue < ApplicationRecord
  belongs_to :volume
  has_many :characters
  validates :name, :description, presence: true, uniqueness: true
end
