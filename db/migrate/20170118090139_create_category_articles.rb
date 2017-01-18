class CreateCategoryArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :category_articles do |t|
      t.integer :category_id, null: false
      t.integer :article_id,  null: false
    end
  end
end
