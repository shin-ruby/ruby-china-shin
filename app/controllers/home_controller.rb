# coding: utf-8
class HomeController < ApplicationController
  def index
    @excellent_topics = Topic.excellent.recent.fields_for_list.includes(:user).limit(20).to_a

    fresh_when(etag: [@excellent_topics, SiteConfig.index_html])
  end

  def api
  end

  def twitter
    set_seo_meta t("menu.tweets")
  end
  
  def error_404
    render_404
  end
end
