class User < ActiveRecord::Base

  validates :name, presence: true
  validates :postsCountter, :numericality => { greater_than_or_equal_to: 0 }
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  def top_3_post
    posts.order(created_at: :desc).limit(3)
  end
end
