class Artist
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :firstname, type: String
  field :lastname, type: String
  field :alias, type: String
  field :teaser, type: String
  field :content, type: String
end
