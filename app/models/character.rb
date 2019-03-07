class Character < ApplicationRecord
  has_many :sheets
  validates :name, presence: true
  validates :character_class, presence: true
end
