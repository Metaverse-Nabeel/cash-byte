require 'rails_helper'

RSpec.describe 'Deals', type: :request do
  before :each do
    @user = User.create(name: 'Ben', email: 'ben997@gmail.com', password: 'benkis112')
    @category = Category.create(user: @user, name: 'Movies')
    Deal.create([
                  { author: @user, name: 'Bat', amount: 100, categories: [@category] },
                  { author: @user, name: 'Ball', amount: 20, categories: [@category] }
                ])
  end

  it 'for renders index template' do
    expect(response).to eq(nil)
  end

  it 'for a success' do
    expect(response).to eq(nil)
  end
end
