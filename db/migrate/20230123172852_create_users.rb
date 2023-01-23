class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :bio
      t.string :image
      t.string :fav_genre
      t.string :fav_song

      t.timestamps
    end
  end
end
