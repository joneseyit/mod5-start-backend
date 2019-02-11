class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2}
  validates :email, presence: true, uniqueness: true
  validates :username, presence:true, uniqueness: { case_sensitive: false }, length: {minimum: 5}
  validates :password, presence:true, length: { minimum: 6, maximum: 20, too_short: 'At least 6 characters are required for password'}
  has_secure_password
  has_many :photos
end
