class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :description
      t.integer :gender
      t.integer :issue_id
      t.string :image

      t.timestamps
    end
  end
end
