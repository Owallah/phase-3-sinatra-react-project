class AddProfilePicUrlToViewers < ActiveRecord::Migration[6.1]
  def change
    add_column :viewers, :profile_pic_url, :string
  end
end
