class Call < ApplicationRecord
  belongs_to :user
  belongs_to :lead

  validates :user_id, presence: true
  validates :lead_id, presence: true
  validates :result, presence: true
  validates :body, presence: true

end
