class AddColumnPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :content, :string, :null => false
  end
end
