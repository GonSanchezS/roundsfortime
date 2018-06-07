# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://roundsfortime.com"

SitemapGenerator::Sitemap.create do
  add root_path, :changefreq => 'daily'
  add '/crossfit-glossary', :changefreq => 'daily'

  City.find_each do |city|
    add city_path(city), :lastmod => city.updated_at, :changefreq => 'weekly'
  end

  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end


SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new(
  fogprovider: 'AWS',
  awsaccesskeyid: ENV['AWSACCESSKEYID'],
  awssecretaccesskey: ENV['AWSSECRETACCESSKEY'],
  fogdirectory: ENV['S3BUCKET'],
  fogregion: ENV['AWS_REGION'])

SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new(fog_provider: 'AWS',
                                                                    aws_access_key_id: ENV['AWSACCESSKEYID'],
                                                                    aws_secret_access_key: ENV['AWSSECRETACCESSKEY'],
                                                                    fog_directory: ENV['S3BUCKET'],
                                                                    fog_region: ENV['AWS_REGION'])

SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_host = "https://rft-gonsanchezs.s3.amazonaws.com/"
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
