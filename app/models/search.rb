class Search < ApplicationRecord
  def characters
    @characters = find_characters
  end

  private

  def find_characters
      characters = Character.where("name like ?", "%#{keyword}%")
      characters = characters.where(issue_id: issue_id)
  end
end
