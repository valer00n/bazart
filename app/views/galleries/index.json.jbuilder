json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :title, :teaser, :description, :alias, :link
  json.url gallery_url(gallery, format: :json)
end
