class Mission < ActiveRecord::Base
    has_many :likes
    has_many :liked_users, through: :likes, source: :user
end
