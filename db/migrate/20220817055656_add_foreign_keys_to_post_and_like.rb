# frozen_string_literal: true

class AddForeignKeysToPostAndLike < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    remove_column :posts, :author_id
  end
end
