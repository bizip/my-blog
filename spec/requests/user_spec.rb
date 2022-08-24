require 'rails_helper'

RSpec.describe UsersController, type: :request do
  before(:each) do
    @user = User.create(
      name: 'Pascal',
      photo: 'https://images.unsplash.com/photo-1660911295696-9810
      c266d9f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      bio: 'Bacon ipsum dolor amet pork loin chislic porchetta, biltong bresaola jerky bacon tail swine pancetta
      ham prosciutto beef. Frankfurter burgdoggen corned beef buffalo
        landjaeger meatloaf
         chuck kevin sausage shankle meatball. Tongue frankfurter capicola hamburger. Picanha'
    )
  end

  describe 'GET the index Page' do
    it 'renders index' do
      get :index
      expect(response.status).to eq(200)
      expect(response).to render_template('index')
    end
  end

  describe 'GET tthe show show page' do
    it 'renders the show template' do
      get :show, params: { id: @user.id }
      expect(response.status).to eq(200)
      expect(response).to render_template('show')
    end
  end
end
