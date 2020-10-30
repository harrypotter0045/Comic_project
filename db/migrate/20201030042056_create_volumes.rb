class CreateVolumes < ActiveRecord::Migration[6.0]
  def change
    create_table :volumes do |t|
      t.string :name
      t.text :description
      t.integer :count_of_issues
      t.integer :start_year

      t.timestamps
    end
  end
end
