require 'rails_helper'

feature 'Editing Cars' do
  scenario 'can edit a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1968'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    click_link 'Edit Car'

    fill_in 'Price', with: '23000'

    click_button 'Update Car'
  end
end
