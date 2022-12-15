class User < ApplicationRecord
    validates :email, presence: true
    validates :email, uniqueness: true  
    validates :name, presence: true
    validates :password, presence: true
end
