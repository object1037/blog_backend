class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :date, null: false
      t.string :og_img_url
      t.boolean :draft
      
      t.timestamps
    end
  end
end
