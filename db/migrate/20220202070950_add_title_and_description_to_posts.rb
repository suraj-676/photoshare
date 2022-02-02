class AddTitleAndDescriptionToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :title, :text
    add_column :posts, :description, :text
  end
end
