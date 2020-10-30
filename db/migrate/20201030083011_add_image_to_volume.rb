class AddImageToVolume < ActiveRecord::Migration[6.0]
  def change
    add_column :volumes, :image, :string
  end
end
