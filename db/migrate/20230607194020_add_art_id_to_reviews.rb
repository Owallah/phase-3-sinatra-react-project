class AddArtIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :art_id, :integer
  end
end
