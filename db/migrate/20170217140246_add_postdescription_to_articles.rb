class AddPostdescriptionToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :postdescription, :text
  end
end
