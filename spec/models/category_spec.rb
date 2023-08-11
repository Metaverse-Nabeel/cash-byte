require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @user = User.create(name: 'Ben', email: 'ben997@gmail.com', password: 'benkis112')
    @category = Category.new(user: @user, name: 'Sports', icon: 'fas fa-ball')
  end

end
