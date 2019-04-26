feature 'Add new bookmarks' do
  scenario 'user able to add new bookmarks' do
    visit('/bookmarks/new')
    fill_in 'url', with: 'http://www.facebook.com'
    click_button 'Add'
    expect(page). to have_content 'http://www.facebook.com'
  end
end
