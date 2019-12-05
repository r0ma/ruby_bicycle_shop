class Bike
  include Mongoid::Document

  field :title, type: String
  field :description, type: String
  field :picture, type: String
  field :price, type: Float
  field :rating, type: Integer

  belongs_to :category
  belongs_to :gander

  scope :for_category, ->(c_id) { where(category_id: c_id) if c_id }
  scope :for_gander, ->(g_id) { where(gander_id: g_id) if g_id }
end
