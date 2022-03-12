# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  context 'GET #index' do
    subject { get :index }

    it 'renders the index template' do
      expect(subject).to render_template('users/index')
    end

    it 'returns a 200 status code' do
      expect(response).to have_http_status(200)
    end

    context 'when initialized' do
      subject(:user) { User.new }

      it 'is a new User class' do
        expect(user).to be_a_new(User)
      end

      it 'is not a new string' do
        expect(user).not_to be_a_new(String)
      end
    end

    context 'when saved' do
      subject(:user) { User.create }

      it 'is not a new users' do
        expect(user).to be_a_new(User)
      end

      it 'is not a new string' do
        expect(user).not_to be_a_new(String)
      end
    end
  end
end
