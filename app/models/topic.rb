class Topic
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :teaser, type: String
  field :content, type: String
  field :alias, type: String
end
