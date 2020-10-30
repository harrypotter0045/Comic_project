class Issue < ApplicationRecord
  belongs_to :volume, optional: true
  has_many :characters
  validates :name, presence: true, uniqueness: true

  def self.search(search)
    if search
      where("name LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
