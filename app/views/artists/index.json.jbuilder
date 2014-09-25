json.array!(@artists) do |artist|
  json.extract! artist, :id, :firstname, :lastname, :alias, :teaser, :content
  json.url artist_url(artist, format: :json)
end
