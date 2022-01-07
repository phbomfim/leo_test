# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_presence_of :age }

  let(:user) { build(:user) }
  describe '#create' do
    it {
      expect(user.name).to(eq('Leo'))
      expect(user.email).to(eq('lqfragozo@gmail.com'))
      expect(user.age).to(eq(28))
    }
  end
end
