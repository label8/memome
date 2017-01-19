class TopPagesController < ApplicationController
  def index
    @articles = Article.top_page_articles
  end

  def show
    @id = params[:id]
  end
end
