class Artist
  include Mongoid::Document
  include Mongoid::Timestamps

  include Mongoid::Paperclip

  field :firstname, type: String
  field :lastname, type: String
  field :alias, type: String
  field :teaser, type: String
  field :content, type: String

  has_mongoid_attached_file :avatar

  belongs_to :user

  def fullname
    self.firstname + " " + self.lastname
  end
end
