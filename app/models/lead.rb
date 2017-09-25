class Lead < ApplicationRecord
  validates :name, presence: true
  validates :position, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :status, presence: true
  validates :emails, presence: true, uniqueness: true 
  validates :meetings, presence: true
  validates :user_id, presence: true





  belongs_to :user
  has_many :calls
end
