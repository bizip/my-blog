class User < ActiveRecord::Base
  has_many :posts
  has_many :likes
  has_many :comments

  def top_3_post
    posts.order(created_at: :desc).limit(3)
  end
end
