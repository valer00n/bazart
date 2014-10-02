class Gallery
  include Mongoid::Document
  field :title, type: String
  field :teaser, type: String
  field :description, type: String
  field :alias, type: String
  field :link, type: String
end
