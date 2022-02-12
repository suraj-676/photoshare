class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :posts
  has_many :comments
  belongs_to :user, optional: true
  has_many :following_relationships, class_name: "Follow", foreign_key: "follower_id"
  has_many :followed_relationships, class_name: "Follow", foreign_key: "followed_id"
  # if we add through association then we get the user.first following syntax we want and it will be a list of objects
  has_many :following, through: :following_relationships, source: :followed
  has_many :followers, through: :followed_relationships, source: :follower

  # lets add a model method that adds a user follow to another user

  #i we will run @urrent user .follow.safe (@other_user)
  def follow_safe(user_to_follow)
    if self.following.include? user_to_follow
      return false
    else
      self.following << user_to_follow
      return true
    end
  end

  def following_photoshare
    Photoshare.where user: self.following
  end
end
