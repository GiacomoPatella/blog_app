require 'spec_helper'

describe 'editing a post' do
  
  before(:each) do
    create(:post)
  end

  it 'can change the Title and Content' do
    visit '/posts'
    click_link 'Edit post'

    fill_in 'Title', with: 'Bye'
    fill_in 'Content', with: 'Universe'
    click_button 'Update Post'

    expect(page).to have_content 'Bye'
    expect(page).to have_content 'Universe'
  end

end