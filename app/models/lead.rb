class Lead < ApplicationRecord
  validates :company, presence: true 
  validates :name, presence: true
  validates :position, presence: true
  validates :phone_number, presence: true
  validates :status, presence: true
  validates :email, presence: true, uniqueness: true
  validates :user_id, presence: true





  belongs_to :user
  has_many :calls
  has_many :emails
end
