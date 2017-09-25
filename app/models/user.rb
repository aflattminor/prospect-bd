class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :leads

  validates :email, presence: true 
  validates :username, presence: true

  def admin?
    admin == true
  end
end
