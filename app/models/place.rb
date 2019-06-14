class Place < ApplicationRecord
  belongs_to :user
  validates :description, :address, presence: true
  validates :name, presence: true, length: { minimum: 3 }
end
