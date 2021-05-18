class User < ApplicationRecord

  has_secure_password

  has_and_belongs_to_many :circles

  has_many :posts, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  #has_many :chatrooms, through :messages


  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
