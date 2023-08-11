require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  before :each do
    @user = User.create(name: 'Ben', email: 'ben997@gmail.com', password: 'benkis112')

    Category.create([
                      { user: @user, name: 'Sports',
                        icon: 'D:\Work\Microverse\Module 5\Week 5\cash-byte\app\assets\images\bike.png' },
                      { user: @user, name: 'Movies', icon: 'D:\Work\Microverse\Module 5\Week 5\cash-byte\app\assets\images\car.png' }
                    ])

    get categories_path
  end
end
