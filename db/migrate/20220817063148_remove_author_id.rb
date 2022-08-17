# frozen_string_literal: true

class RemoveAuthorId < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    remove_column :comments, :post_id
    remove_column :comments, :author_id
    remove_column :posts, :author_id
    remove_column :likes, :author_id
  end
end
