class Character < ApplicationRecord
  belongs_to :issue
  validates :name, presence: true, uniqueness: true
  validates :gender, length: { maximum: 1 }

  def self.search(search)
    if search
      where("name LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
