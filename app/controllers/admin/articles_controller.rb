class Admin::ArticlesController < Admin::ApplicationController

  def index
    @articles = Article.article_all
  end

end
