class Identity
  include Mongoid::Document
  field :provider, type: String
  field :uid, type: String

  embedded_in :user, :inverse_of => :identities 

  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_for_oauth(auth)
    find_or_create_by(uid: auth.uid, provider: auth.provider)
  end
  
end
