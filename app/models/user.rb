class User < ApplicationRecord


  EXPERIENCE_OPTIONS = [
    ["0yr - 1yr", "0yr - 1yr"],
    ["1yr - 3yr", "1yr - s3yr"],
    ["3yr-5yr","3yr-5yr"],
    ["5yr +", "5yr +"],
  ]

  TERRITORY_OPTIONS = [
    ["Mid-Atlantic", "Mid-Atlantic"],
    ["New-England", "New-England"],
    ["South-East","South-East"],
    ["Mid-West", "Mid-West"],
    ["South-West", "South-West"],
    ["North-West", "North-West"],
    ["EMEA","EMEA"],
  ]

  TITLE_OPTIONS = [
    ["BDR", "BDR"],
    ["SDR", "SDR"],
    ["Account Executive","Account Executive"],
    ["Account Manager", "Account Manager"],
    ["Support", "Support"],
  ]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :leads

  validates :email, presence: true
  validates :username, presence: true
  

  def admin?
    admin == true
  end

  def emails
    self.leads.map{ |lead| lead.emails }.flatten
  end

  def calls
    self.leads.map{ |lead| lead.calls }.flatten
  end
end
