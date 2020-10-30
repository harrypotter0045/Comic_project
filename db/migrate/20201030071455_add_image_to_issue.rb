class AddImageToIssue < ActiveRecord::Migration[6.0]
  def change
    add_column :issues, :image, :string
  end
end
