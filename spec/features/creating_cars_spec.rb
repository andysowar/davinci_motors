require 'rails_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1968'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1968 Ford Mustang has been created')
    expect(page).to have_table('cars')

    within('#cars') do
      expect(page).to have_content('Ford')
      expect(page).to have_content('Mustang')
      expect(page).to have_content('1968')
      expect(page).to have_content('2300')
    end
  end
end
