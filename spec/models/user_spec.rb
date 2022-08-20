require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.create(name: 'Sam', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Dj.')
  before { subject.save }

  it 'it shouls describe name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end