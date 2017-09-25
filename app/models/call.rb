class Call < ApplicationRecord

  RESULTS = [
    ["Left Message", "Left Message"],
    ["Ghost Dial", "Ghost Dial"],
    ["Hard Hang-up","Hard Hang-up"],
    ["Answered", "Answered"],
    ["No Voicemail/Full", "No Voicemail/Full"],
    ["Assistant Pick-up", "Assistant Pick-up"]
  ]

  belongs_to :lead

  validates :lead_id, presence: true
  validates :result, presence: true, inclusion: { in: RESULTS.map { |result| result[1] } }
  validates :body, presence: true

end
