require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(name: 'Ben', email: 'ben997@gmail.com', password: 'benkis112')
    @user.save
  end

  context 'This Testing Validations' do
    it 'is validate with all attributes' do
      expect(@user).to be_valid
    end
    it 'is not valid with out name attributes' do
      @user.name = nil
      expect(@user).to_not be_valid
    end
    it 'is not valid with out email attributes' do
      @user.email = nil
      expect(@user).to_not be_valid
    end
  end
end
