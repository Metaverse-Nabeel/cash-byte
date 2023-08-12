require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  before :each do
    @user = User.create(name: 'Ben', email: 'ben997@gmail.com', password: 'benkis112')

    # Create test images in the spec/fixtures directory and use them for attachments
    icon_path_sports = Rails.root.join('spec', 'fixtures', 'sports.png')
    icon_path_movies = Rails.root.join('spec', 'fixtures', 'movies.png')

    Category.create([
      { user: @user, name: 'Sports', icon: fixture_file_upload(icon_path_sports, 'image/png') },
      { user: @user, name: 'Movies', icon: fixture_file_upload(icon_path_movies, 'image/png') }
    ])

    get categories_path
  end

  it 'for a renders index template' do
    expect(response).to have_http_status(:found)
  end

  it 'for a success' do
    expect(response).to have_http_status(:found)
  end
  
end
