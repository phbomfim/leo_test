# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, presence: true
  validates :name, presence: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 18 }
end
