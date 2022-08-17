# frozen_string_literal: true

class AddUserToComments < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    add_column :comments, :author_id, :integer
    add_column :comments, :post_id, :integer
    add_index :comments, :author_id
  end
end
