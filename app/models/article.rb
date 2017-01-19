class Article < ApplicationRecord
  has_many :category_articles, dependent: :destroy
  has_many :categories, through: :category_articles

  scope :top_page_articles, -> { select("id, title, overview, updated_at").order("updated_at DESC") }
end
