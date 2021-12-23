class User < ApplicationRecord
  validates :email, :presence => true
  validates :name, :presence => true
  validates :age, comparasion: { greater_than: 18 }


end
