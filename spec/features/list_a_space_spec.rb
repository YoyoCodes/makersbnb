feature 'list a space' do
<<<<<<< HEAD
  scenario 'user can list a space' do
    visit('/spaces/new')

    fill_in('name_of_space', with: "Lucy's house")
    fill_in('email', with: 'test@example.com')
    fill_in('description', with: 'Home for rent!')

    click_button('List my space')

    wait_for_ajax
    expect(page).to have_content("Lucy's house")
    expect(page).to have_content('Home for rent!')
    expect(page).to have_content('test@example.com')
  end
=======
    scenario 'user can list a space' do

        visit('/spaces/new')

        fill_in('name', with: 'Lucia Gore')
        fill_in('description', with: 'Home for rent!')

        click_button('List My space')

        expect(page).to have_content('Lucia Gore')
        expect(page).to have_content('Home for rent!')

    end
>>>>>>> make_a_space
end