class Box < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :city
  geocoded_by :address
  after_validation :geocode

end

