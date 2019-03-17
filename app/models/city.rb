class City < ApplicationRecord
  has_and_belongs_to_many :companies
  has_and_belongs_to_many :aircrafts

  validates :name, presence: true, uniqueness: true
end
