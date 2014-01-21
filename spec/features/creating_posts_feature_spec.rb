require 'spec_helper'

describe 'creating a new post' do
  it 'is created from a form, providing Title and Content' do

    visit 'posts/new'
    fill_in 'Title', with: 'Hello World'
    fill_in 'Content', with: 'Hello from our Capybara test'
    click_button 'Submit'

    expect(page).to have_content 'Hello World'
    expect(page).to have_content 'Hello from our Capybara test'
    expect(current_path).to eq '/posts'
  end
end