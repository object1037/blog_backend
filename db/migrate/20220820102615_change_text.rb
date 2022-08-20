class ChangeText < ActiveRecord::Migration[7.0]
  def change
    change_table :posts do |t|
      t.remove :description
      t.text :description, null: false
      t.remove :content
      t.text :content, null: false
    end
  end
end
