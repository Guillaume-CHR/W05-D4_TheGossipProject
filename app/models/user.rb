class User < ApplicationRecord
  has_secure_password

  belongs_to :city
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "JoinUserPm"
  has_many :likes
  has_many :comments
  has_many :gossips
  validates :first_name, :last_name, :description, presence: { message: "You need to fill all the fields!" }
	validates :description,	length: { minimum: 3 }
end
