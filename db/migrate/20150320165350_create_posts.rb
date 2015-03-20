class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :entry
      t.datetime :published
      t.timestamps
    end
  end
end
