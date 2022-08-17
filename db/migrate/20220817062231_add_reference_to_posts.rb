class AddReferenceToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :author, references: :users, index: true
  end
end
