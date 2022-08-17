class RemoveAuthorId < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :post_id
    remove_column :comments, :author_id
    remove_column :posts, :author_id
    remove_column :likes, :author_id
  end
end
