class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.string :name
      t.text :description
      t.boolean :has_staff_review
      t.date :cover_date
      t.integer :volume_id

      t.timestamps
    end
  end
end
