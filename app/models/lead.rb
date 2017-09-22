class Lead < ApplicationRecord



  STATUS_OPTIONS = [
    ["Open/No-Activity", "Open/No-Activity"],
    ["In Process", "In Process"],
    ["Contacted","Contacted"],
    ["No Interest", "No Interest"],
    ["Call Back", "Call Back"],
    ["No Longer with Company", "No Longer with Company"],
    ["Bad Data","Bad Data"],
  ]

  validates :company, presence: true
  validates :name, presence: true
  validates :position, presence: true
  validates :phone_number, presence: true
  validates :status, presence: true, inclusion: { in: STATUS_OPTIONS.map { |status| status[1] } }
  validates :email, presence: true, uniqueness: true
  validates :user_id, presence: true





  belongs_to :user
  has_many :calls
  has_many :emails
end
