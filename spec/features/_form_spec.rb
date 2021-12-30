# frozen_string_literal: true

require 'rails_helper'

RSpec.feature '_form', type: :feature do
  context 'filling the form' do
    scenario 'filling the user crud' do
      visit users_path
      fill_in :name, with: 'Leo'
      expect(page).to_have_field(:name, with: 'Leo')
      fill_in :email, with: 'lqfragozo@gmail.com'
      expect(page).to_have_field(:name, with: 'lqfragozo@gmail.com')
      fill_in :age, with: '28'
      expect(page).to_have_field(:name, with: '28')
    end
  end
end
