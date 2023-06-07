class CreateViewers < ActiveRecord::Migration[6.1]
  def change
    create_table :viewers do |t|
      t.string :name
      t.string :country_of_origin
      t.timestamps
    end
  end
end
