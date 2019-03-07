class Character < ApplicationRecord
  has_many :sheets, dependent: :destroy
  validates :name, presence: true
  validates :character_class, presence: true
end
