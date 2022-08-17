class Comment < ActiveRecord::Base
  belongs_to :user

  after_save :update_comment_counter

  private

  def update_comment_counter
    author.increment!(:commentsCounter)
  end
end
