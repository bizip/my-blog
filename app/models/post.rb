class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 250 }

  belongs_to :author, class_name: 'User', foreign_key: 'author_id', counter_cache: true
  has_many :likes
  has_many :comments

  def recent_comments_on_post
    comments.order(created_at: :desc).limit(5)
  end

  def update_each_posts_counter
    author.increment!(:posts_count)
  end
end
