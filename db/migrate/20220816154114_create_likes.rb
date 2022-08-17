# frozen_string_literal: true

class CreateLikes < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    create_table :likes do |t|
      add_column :users, :user_id, :integer
      add_column :posts, :post_id, :integer
      add_index :posts, :post_id
      # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
      t.timestamps
    end
  end
end
