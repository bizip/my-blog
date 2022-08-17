# frozen_string_literal: true

class AddReferenceToPosts < ActiveRecord::Migration[7.0] # rubocop:todo Style/Documentation
  def change
    add_reference :posts, :author, references: :users, index: true
  end
end
