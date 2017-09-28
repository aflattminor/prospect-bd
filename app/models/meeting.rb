class Meeting < ApplicationRecord

  RESULTS = [
    ["Project Identified", "Project Identified"],
    ["RFI initiated", "RFI initiated"],
    ["POC initiated","POC initiated"],
    ["Quote Requested", "Quote Requested"],
    ["General Follow Up", "General Follow Up"],
    ["Not a Fit", "Not a Fit"]
  ]

  SOURCE = [
    ["Cold Call", "Cold Call"],
    ["Email","Email"],
    ["Referral", "Referral"],
  ]

  belongs_to :lead

  validates :lead_id, presence: true
  validates :result, presence: true, inclusion: { in: RESULTS.map { |result| result[1] } }
  validates :details, presence: true
  validates :next_steps, presence: true
  validates :source, presence: true 


end
