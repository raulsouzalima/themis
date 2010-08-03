class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  caches_page :sitemap

  def sitemap
    @posts = Post.approved.all
    @sections = Section.all
  end
end
