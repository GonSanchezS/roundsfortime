Geocoder.configure(
  lookup: :google,
  api_key: ENV['GEOCODER_API_KEY'],
   cache: Rails.cache,
)
