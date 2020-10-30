class Character < ApplicationRecord
  belongs_to :issue
  validates :name, presence: true, uniqueness: true
  validates :gender, length: { maximum: 1 }

  def self.search(search, character)
    if search
      where("name LIKE ?", "%#{search}%").where(issue_id: character["id"])
    else
      all
    end
  end
end
