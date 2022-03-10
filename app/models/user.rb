class User < ApplicationRecord
    has_many :habits

    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
