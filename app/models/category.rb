class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :expenses

  validates :name, presence: true, uniqueness: true,
                   length: { maximum: 18, too_long: '%<count>s characters is the maximum allowed' }
  validates :icon, presence: true
end
