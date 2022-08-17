class Like < ActiveRecord::Base
  belongs_to :author, class_name: 'User'

  after_save :update_like_counter

  private

  def update_like_counter
    author.increment!(:likesCounter)
  end
end
