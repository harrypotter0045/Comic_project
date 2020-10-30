class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :keyword
      t.integer :issue_id

      t.timestamps
    end
  end
end
