class Comment < ActiveRecord::Base
  belongs_to :user

  def update_comment_counter
    posts.increment!(:commentsCounter)
  end
end
