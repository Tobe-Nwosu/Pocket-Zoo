class User < ApplicationRecord
  has_merit

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :friendships_as_asker, class_name: "Friendship", foreign_key: :asker_id
  has_many :friendships_as_receiver, class_name: "Friendship", foreign_key: :receiver_id

  has_many :findings, dependent: :destroy

  # has_many :achievement ... ?
  # validates :username, uniqueness: true
  # validates :email, format: { with: /\A.*@.*\.com\z/ }

  def friendship_with(user)
    Friendship.find_by(asker: self, receiver: user) || Friendship.find_by(asker: user, receiver: self)
  end
end
