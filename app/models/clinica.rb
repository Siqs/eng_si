class Clinica < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :address
    geocoded_by :address
    after_validation :geocode, if: :address_changed?
end
