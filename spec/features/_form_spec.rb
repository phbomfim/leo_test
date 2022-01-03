# frozen_string_literal: true

require 'rails_helper'

RSpec.feature '_form', type: :feature do
  context 'filling the form' do
    scenario 'filling the user crud' do
      visit users_path
      fill_in :name, with: 'Leo'
      expect(page).to have_field('name', with: 'Leo')

    end
  end
end
