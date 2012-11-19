class Fart
  # attr_accessible :title, :body
  include Mongoid::Document
  include Mongoid::Timestamps
  include Geocoder::Model::Mongoid


  field :domain
  field :address
  field :latitude
  field :longitude
  field :coordinates, type: Array
  geocoded_by :address

  after_validation :geocode
end
