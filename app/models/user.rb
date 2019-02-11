class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2}
  validates :email, presence: true, uniqueness: true
  validates :username, presence:true, uniqueness: { case_sensitive: false }, length: {minimum: 5}
  has_secure_password
  has_many :photos
end
