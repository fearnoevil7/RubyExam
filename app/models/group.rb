class Group < ApplicationRecord
  belongs_to :User
  has_many :joins, dependent: :destroy
  has_many :users_joined, through: :joins, source: :User
  validates :name, presence: true, length: {in: 5..34}
  validates :description, presence: true, length: {in: 10..100}
end
