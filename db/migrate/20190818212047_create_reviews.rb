class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :user_id
      t.integer :hair_stylist_id

      t.timestamps
    end
  end
end
