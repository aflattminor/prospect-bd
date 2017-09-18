class Company < ApplicationRecord
  validates :name, presence: true
  validates :employee_count, presence: true
  validates :headquarters, presence: true
  validates :industry, presence: true
  validates :core_business, presence: true
  validates :public, presence: true
  validates :status, presence: true

  has_many :leads
end
