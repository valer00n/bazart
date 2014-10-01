module ApplicationHelper
  def top_artists(limit)
    artists = Artist.all.limit(limit)
  end
end
