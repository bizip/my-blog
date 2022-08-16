class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      # add_column :users, :user_id, :integer
      # add_column :posts, :post_id, :integer
      #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
      t.timestamps
    end
  end
end
