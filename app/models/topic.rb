class Topic
  include Mongoid::Document
  include Mongoid::Timestamps

  include Mongoid::Paperclip

  field :title, type: String
  field :teaser, type: String
  field :content, type: String
  field :alias, type: String

  belongs_to :user
end
