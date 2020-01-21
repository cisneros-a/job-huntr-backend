class Lead < ApplicationRecord
  belongs_to :user
  has_many :notes
  validates :company, uniqueness: true
end
