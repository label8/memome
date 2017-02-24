class Public::ArticlesController < Public::ApplicationController

  def index
    @articles = Article.article_all
  end

  def articles_in_category
    @articles = Category.articles_in_category(params[:id])
    render action: :index
  end

  def show
    @article = Article.find(params[:id])
  end

end
