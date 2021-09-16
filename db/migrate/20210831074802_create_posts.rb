class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

      # manually added
      t.references :user, null: false, foreign_key: true
      t.string :caption
      t.string :location
      t.decimal :latitude
      t.decimal :longitude
      t.decimal :price_per_day

      t.timestamps
    end
  end
end
