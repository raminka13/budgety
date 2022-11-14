class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true,
                   length: { maximum: 27, too_long: '%<count>s characters is the maximum allowed' }
end
