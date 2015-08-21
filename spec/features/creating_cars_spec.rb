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
      expect(page).to have_content('$2,300.00')
    end
  end

  scenario 'can add a second car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1968'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    click_link 'New Car'

    fill_in 'Make', with: 'Subaru'
    fill_in 'Model', with: 'Impreza'
    fill_in 'Year', with: '2007'
    fill_in 'Price', with: '12500'

    click_button 'Create Car'

    within ('#cars') do
      expect(page).to have_content('Ford')
      expect(page).to have_content('Mustang')
      expect(page).to have_content('1968')
      expect(page).to have_content('$2,300.00')

      expect(page).to have_content('Subaru')
      expect(page).to have_content('Impreza')
      expect(page).to have_content('2007')
      expect(page).to have_content('$12,500.00')
  end
end
end

