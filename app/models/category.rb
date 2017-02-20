class Category < ApplicationRecord
  has_many :category_articles, dependent: :destroy
  has_many :articles, through: :category_articles

  scope :articles_in_category, -> category_id { find(category_id).articles.select("article_id AS id,title, overview, updated_at").order("updated_at DESC") }
end
