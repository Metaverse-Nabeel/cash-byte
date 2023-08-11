require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  before :each do
    @user = User.create(name: 'Ben', email: 'ben997@gmail.com', password: 'benkis112')

    Category.create([
                      { user: @user, name: 'Sports',
                        icon: 'https://w7.pngwing.com/pngs/625/464/png-transparent-track-field-sport.png' },
                      { user: @user, name: 'Movies', icon: 'https://png.pngtree.com/png-vector/20190816/ourmid/pngtree-film-logo-design-template-vector-isolated-illustration-png-image_1693431.jpg' }
                    ])

    get categories_path
  end

end
