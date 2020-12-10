class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :video_uid
      t.integer :song_id
      t.integer :artist_id
      t.string :song_title
      t.string :song_cached_slug
      t.integer :city_id
      t.string :artist_title
      t.string :artist_cached_slug
      t.string :city_title
      t.string :city_cached_slug
    end
  end
end
