require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @user = User.create(name: 'Ben', email: 'ben997@gmail.com', password: 'benkis112')
    @category = Category.new(user: @user, name: 'Sports', icon: 'fas fa-ball')
  end

  context 'This Testing Validations' do
    it 'is valid with valid all attributes' do
      expect(@category).to be_valid
    end
    it 'is not valid with out category name' do
      @category.name = nil
      expect(@category).to_not be_valid
    end
    it 'is not valid with out category icon' do
      @category.icon = nil
      expect(@category).to_not be_valid
    end
    it 'is not valid with out category author_id' do
      @category.user_id = nil
      expect(@category).to_not be_valid
    end
  end
end
