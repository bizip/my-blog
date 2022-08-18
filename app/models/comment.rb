class Comment < ActiveRecord::Base
  belongs_to :author, class_name: 'User'

  after_save :update_comment_counter

  private

  def update_comment_counter
    author.increment!(:commentsCounter)
  end
end
