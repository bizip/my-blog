require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before(:each) do
    @user = User.create(
      name: 'Pascal',
      photo: 'https://images.unsplash.com/photo-1660911295696-9810c266d9f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG
      90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      bio: 'Bacon ipsum dolor amet pork loin chislic porchetta, biltong bresaola jerky bacon
      tail swine pancetta ham prosciutto beef. Frankfurter burgdoggen corned beef buffalo
      landjaeger meatloaf
       chuck kevin sausage shankle meatball. Tongue frankfurter capicola hamburger. Picanha'
    )
    @post = Post.create(author: @user, title: 'Pascals story', text: 'this is my future')
  end

  describe 'GET index Pages' do
    it 'It should render index page' do
      get :index, params: { user_id: @user.id }
      expect(response.status).to eq(200)
      expect(response).to render_template('index')
    end
  end

  describe 'GET show Pasges' do
    it 'It should renders show page' do
      get :show, params: { id: @post.id, user_id: @user.id }
      expect(response.status).to eq(200)
      expect(response).to render_template('show')
    end
  end
end
