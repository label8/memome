class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string  :title,       null: false
      t.text    :overview,    default: null
      t.text    :content,     null: false
      t.integer :author_id,   null: false

      t.column :created_at, 'timestamp with time zone', null: false
      t.column :updated_at, 'timestamp with time zone', null: false
    end

    add_index :articles, :category_id, name: 'idx_cat_id'
  end
end
