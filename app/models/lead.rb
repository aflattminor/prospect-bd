class Lead < ApplicationRecord
  validates :name, presence: true
  validates :position, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :status, presence: true
  validates :calls, presence: true
  validates :emails, presence: true
  validates :meetings, presence: true
  validates :user_id, presence: true
  validates :company_id, presence: true 



  belongs_to :company
  belongs_to :user
end
