require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Pascal', photo: 'link to photo', bio: 'dev') }
  before { subject.save }

  it 'name should be present' do
    subject.name = 'Pascal'
    expect(subject).to be_valid
  end

  # it 'returns recent posts' do
  #   Post.create(author: subject, title: 'test', text: 'test')
  #   posts = subject.recent_posts
  #   expect(posts.length).to eq 1
  # end
end