class AddDescriptionToArts < ActiveRecord::Migration[6.1]
  def change
    add_column :arts, :description, :string
  end
end
