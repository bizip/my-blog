class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :title, length: { maximum: 250, too_long: "%{count} characters for title is the maximum allowed" }
  validates :commentsCounter, :numericality => { greater_than_or_equal_to: 0 }
  validates :likesCounter, :numericality => { greater_than_or_equal_to: 0 }

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
