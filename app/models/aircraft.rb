class Aircraft < ApplicationRecord
  has_and_belongs_to_many :companies
  has_and_belongs_to_many :cities

  validates :name, presence: true, uniqueness: true
end
