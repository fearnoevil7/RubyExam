class Join < ApplicationRecord
  belongs_to :User
  belongs_to :Group
  validates :User, :Group, presence: true
end
