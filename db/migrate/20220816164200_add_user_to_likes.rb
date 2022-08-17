# frozen_string_literal: true

class AddUserToLikes < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    add_column :likes, :author_id, :integer
    add_column :likes, :author_id, :integer
    add_index :likes, :author_id
  end
end
