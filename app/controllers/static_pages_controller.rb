class StaticPagesController < ApplicationController
  def index
    @cities = City.all
  end

  def glossary
    @cities = City.limit(3)
  end

  def prices
  end

  def show
    @city = City.find(params[:id])
  end

  def sitemap
  redirect_to 'https://rft-gonsanchezs.s3.amazonaws.com/sitemaps/sitemap.xml.gz'
  end
end

