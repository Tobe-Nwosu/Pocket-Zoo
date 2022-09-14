class User < ApplicationRecord
  has_merit

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :friendships_as_asker, class_name: "Friendship", foreign_key: :asker_id
  has_many :friendships_as_receiver, class_name: "Friendship", foreign_key: :receiver_id

  has_many :findings, dependent: :destroy

  # def friendship_exist()
  #   return Friendship.where(asker: current_user)
  # end
  # friendship_exist()

  # has_many :achievement ... ?
  validates :username, uniqueness: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }
end
# user.friendships_as_asker_ids == user2.friendships_as_receiver_ids
