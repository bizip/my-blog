class Post < ActiveRecord::Base
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: 'post_id'
  has_many :likes, foreign_key: 'post_id'

  def five_recent_comment
    posts.limit(5).order(comments(:desc))
  end

  after_save :update_post_counter

  private

  def update_post_counter
    author.increment!(:postsCountter)
  end
end
