feature 'greeted with hello world' do
  scenario 'the user is greeted with hello world' do
    visit('/')
    expect(page).to have_content 'hullo world'
  end
end
