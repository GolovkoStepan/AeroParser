class Company < ApplicationRecord
  has_and_belongs_to_many :aircrafts
  has_and_belongs_to_many :cities

  validates :name, presence: true, uniqueness: true
end
