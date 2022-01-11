# frozen_string_literal: true

require 'rails_helper'

RSpec.feature '_form', type: :feature do
  it 'has a form with name, email and age' do
    visit new_user_path
    expect(page).to have_field(:Name)
    expect(page).to have_field(:Email)
    expect(page).to have_field(:Age)
  end

  it 'can fill in a form with information in the right page' do
    visit new_user_path

    fill_in :Name, with: 'Leonardo'
    fill_in :Email, with: 'teste@test.com'
    fill_in :Age, with: '28'

    expect(page).to have_current_path(new_user_path)
  end
end
