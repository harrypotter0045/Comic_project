class Volume < ApplicationRecord
  has_many :issues
  validates :name, presence: true, uniqueness: true

  def self.search(search)
    if search
      where("name LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
