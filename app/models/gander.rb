class Gander
  include Mongoid::Document

  field :title, type: String

  has_many :bikes
end
