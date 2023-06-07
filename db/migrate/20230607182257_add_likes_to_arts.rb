class AddLikesToArts < ActiveRecord::Migration[6.1]
  def change
    add_column :arts, :likes, :integer
  end
end
