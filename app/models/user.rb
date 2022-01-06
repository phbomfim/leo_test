# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: 'only allows letters' }, uniqueness: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 18 }
  validate :check_email_and_name

  def check_email_and_name
    errors.add(:email, "can't be the same as name") if name == email
  end
end
