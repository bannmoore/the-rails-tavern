class Character < ApplicationRecord
  validates :name, presence: true
  validates :character_class, presence: true
end
