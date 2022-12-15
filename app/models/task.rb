class Task < ApplicationRecord
    validates :name, presence: true
    validates :users_id, presence: true
end
