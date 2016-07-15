class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username
  validates_uniqueness_of :username

  has_many :friendships, dependent: :destroy
  has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id", dependent: :destroy

  def request_friendship(friend)
  	self.friendships.create(friend: friend)

  end

  def pending_incoming_requests
  	self.inverse_friendships.where(state: "pending")
  end

  def pending_outgoing_requests
  	self.friendships.where(state: "pending")
  end

  def active_friends
  	self.friendships.where(state: "active").map(&:friend) + self.inverse_friendships.where(state: "active").map(&:user)
  end
end
