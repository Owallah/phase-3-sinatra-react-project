class AddDislikesToArts < ActiveRecord::Migration[6.1]
  def change
    add_column :arts, :dislikes, :integer
  end
end
