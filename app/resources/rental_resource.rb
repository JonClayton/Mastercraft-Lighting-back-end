class RentalResource < JSONAPI::Resource
  attributes :title, :owner, :city, :bedrooms, :bathrooms, :image, :property_type
end
