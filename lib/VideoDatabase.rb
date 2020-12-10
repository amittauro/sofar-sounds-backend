require 'json'

class VideoDatabase

  def initialize()
  end

  def create(data)
    data.each do |video|
      if video.size > 1 and video['song'].size > 6
        Video.create(video_uid: video['video_uid'],
        song_id: video['song']['id'],
        artist_id: video['song']['artist_id'],
        song_title: video['song']['title'],
        song_cached_slug: video['song']['cached_slug'],
        city_id: video['song']['city_id'],
        artist_title: video['song']['artist']['title'],
        artist_cached_slug: video['song']['artist']['cached_slug'],
        city_title: video['song']['city']['title'],
        city_cached_slug: video['song']['city']['cached_slug'])
      end
    end
  end
end
