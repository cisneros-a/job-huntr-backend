class User < ApplicationRecord
    has_secure_password 
    has_many :leads
    # validates :email, uniqueness: true
    # validates :name, presence: true
    # validates :password, presence: true
end
