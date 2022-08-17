class AddUserToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :author_id, :integer
    add_index :posts, :user_id
    #Ex:- add_index("admin_users", "username")
  end
end
