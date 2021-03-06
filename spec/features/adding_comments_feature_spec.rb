require 'spec_helper'

describe 'adding comments to a post' do
  
  before do
    create(:post)
    login
  end

  it 'adds comments from a form providing Text' do
    visit '/posts'
    click_link 'Add a comment'

    fill_in 'Your comment:', with: 'This article is great'
    click_button 'Submit Comment'

    expect(page).to have_content 'This article is great'
  end

end