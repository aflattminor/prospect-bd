class User < ApplicationRecord



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

  def meetings
    self.leads.map{ |lead| lead.meetings }.flatten
  end
end
