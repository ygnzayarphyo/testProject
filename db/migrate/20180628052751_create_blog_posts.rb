class CreateBlogPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :content
      t.string :picture
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
