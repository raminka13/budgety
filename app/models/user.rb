class User < ApplicationRecord
  has_many :categories, inverse_of: 'user', foreign_key: 'user_id', dependent: :destroy

  validates :name, presence: true, uniqueness: true,
                   length: { maximum: 27, too_long: '%<count>s characters is the maximum allowed' }
end
