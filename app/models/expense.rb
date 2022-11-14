class Expense < ApplicationRecord
  validates :name, presence: true, uniqueness: true,
                   length: { maximum: 18, too_long: '%<count>s characters is the maximum allowed' }
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
