require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @user = User.create(name: 'Nabeel', email: 'Nabeel1994@gmail.com', password: 'asdf1234')
    @category = Category.new(user: @user, name: 'Sports')
    # Attach an icon using Active Storage for testing
    @category.icon.attach(io: File.open(Rails.root.join('spec', 'fixtures', 'bike.png')), filename: 'bike.png',
                          content_type: 'image/png')
  end

  context 'This Testing Validations' do
    it 'is valid with valid all attributes' do
      expect(@category).to be_valid
    end

    it 'is not valid without category name' do
      @category.name = nil
      expect(@category).to_not be_valid
    end

    it 'is not valid without category icon' do
      @category.icon.purge # Remove attached icon
      expect(@category).to_not be_valid
    end

    it 'is not valid without category user_id' do
      @category.user_id = nil
      expect(@category).to_not be_valid
    end
  end
end
