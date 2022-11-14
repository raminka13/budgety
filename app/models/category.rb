class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 18 }
  validates :icon, presence: true
end
