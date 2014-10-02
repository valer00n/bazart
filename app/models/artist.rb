class Artist
  include Mongoid::Document
  include Mongoid::Timestamps

  include Mongoid::Paperclip

  field :firstname, type: String
  field :lastname, type: String
  field :alias, type: String
  field :teaser, type: String
  field :content, type: String

  has_mongoid_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :micro => "32x32>"}, :default_url => "no-avatar-:style.png"

  belongs_to :user

  def fullname
    self.firstname + " " + self.lastname
  end
end
