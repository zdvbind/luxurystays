class Organization < ApplicationRecord
  has_many :listings
  has_many :organizations_users

end
