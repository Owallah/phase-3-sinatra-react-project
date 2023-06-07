class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.integer :artist_id
      t.integer :review_id
      t.timestamps
    end
  end
end
