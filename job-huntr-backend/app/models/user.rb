class User < ApplicationRecord
    has_many :leads
    validates :email, uniqueness: true
    validates :name, presence: true
    validates :password, presence: true
end
