class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :leads

  validates :email, :format => /@/

    def admin
      admin == true
    end
end
