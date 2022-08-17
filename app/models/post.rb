class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes
  def update_post_counter
    author.increment!(:postsCountter)
  end

  def five_recent_comment
    posts.limit(5).order(comments :desc)
  end
end
