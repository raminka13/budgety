class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true,
                   length: { maximum: 18, too_long: '%<count>s characters is the maximum allowed' }
  validates :icon, presence: true
end
