class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :Post
  
  def update_like_counter
  posts.increment!(:likesCounter)
  end
end
