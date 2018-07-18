class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
        
         has_many :likes
         has_many :liked_missions, through: :likes, source: :mission
         
         
         def is_like?(mission)
           Like.find_by(user_id: self.id, mission_id: mission.id).present?
         end
         
end
